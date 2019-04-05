//
//  ViewControllerHome.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/9/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit



class ViewControllerHome: UIViewController {

    @IBOutlet var loadingScreen: UIView!
    @IBOutlet weak var shineView: ThreePointGradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showLoadingScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showLoadingScreen(){
        loadingScreen.bounds.size.width = view.bounds.width + 1
        loadingScreen.bounds.size.height = view.bounds.height + 1
        loadingScreen.center = view.center
        view.addSubview(loadingScreen)
        UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
            self.loadingScreen.alpha = 1
        }) { (success) in
            UIView.animate(withDuration: 1, delay: 0.5, options: [], animations: {
                self.loadingScreen.transform = CGAffineTransform(translationX: 0, y: -900)
                self.loadingScreen.alpha = 0
            }, completion: { (success) in
                if Connectivity.isConnectedToInternet() {
                    if !UserDefaults.standard.bool(forKey: "isLoggedAtActiveCampaign") {
                        self.nameMailPrompt()
                    }
                        //todo only for development
                    else {
                        self.nameMailPrompt()
                    }
                }
                else{
                    self.noInternetConnectionAllert()
                }
                
            })
        }
    }
    
    func activeCampaignRequest(mail: String, name: String) -> Void {
        let model: UserContactsModel = UserContactsModel();
        model.contact.email = mail
        model.contact.firstName = name
        
        let activeCampaignService = ActiveCampaignService()
        
        activeCampaignService.saveUserContacts(model, callback: {(status) in
            if status {
                UserDefaults.standard.set(true, forKey: "isLoggedAtActiveCampaign")
            }
        })
        
    }
    
    func noInternetConnectionAllert(){
        let alert = UIAlertController(title: "No internet connection!", message: "Please, enable wi-fi, to make app work correctly!", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
        })
        
        alert.addAction(alertAction)
        
        self.present(alert, animated: true)
    }
    
    func nameMailPrompt(message: String? = nil){
        let alert = UIAlertController(title: "What's your name and email?", message: message != nil ? message! : nil, preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {textFieldMail in
            textFieldMail.placeholder = "Input your email here..."
            textFieldMail.addTarget(alert, action: #selector(alert.validateMailNameAlert), for: .editingChanged)
            textFieldMail.borderStyle = .roundedRect
            textFieldMail.keyboardAppearance = .dark
        })
        
        alert.addTextField(configurationHandler: { textFieldName in
            textFieldName.placeholder = "Input your name here..."
            textFieldName.addTarget(alert, action: #selector(alert.validateMailNameAlert), for: .editingChanged)
            textFieldName.borderStyle = .roundedRect
            textFieldName.keyboardAppearance = .dark
            
        })
        
        // active campaign request
        let alertAction = UIAlertAction(title: "Submit", style: .default, handler: { action in
            
            if let name = alert.textFields?[1].text, let mail = alert.textFields?[0].text, name != "" && mail != "" {
                print("Your name: \(name)")
                print("Your mail: \(mail)")
                
                self.activeCampaignRequest(mail: mail, name: name)
            }
        })
        
        alertAction.isEnabled = false;
        
        alert.addAction(alertAction)
        
        self.present(alert, animated: true)
        
        //rounded border of inputs
        if let textFields = alert.textFields {
            if textFields.count > 0 && textFields.count == 2{
                textFields[0].superview!.superview!.subviews[0].removeFromSuperview()
                textFields[0].superview!.backgroundColor = UIColor.clear
                textFields[1].superview!.superview!.subviews[0].removeFromSuperview()
                textFields[1].superview!.backgroundColor = UIColor.clear
            }
        }
    }
}
