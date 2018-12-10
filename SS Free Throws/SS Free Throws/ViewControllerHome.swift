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

            })
        }
    }
}
