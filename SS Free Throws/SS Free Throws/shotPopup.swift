//
//  shotPopup.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/9/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

var globalShotsUserInput = String()


class shotPopup: UIViewController {

    @IBOutlet weak var popView: UIView!
    
    @IBOutlet weak var shotsUserInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popView.layer.cornerRadius = 10
        shotsUserInput.keyboardType = UIKeyboardType.numberPad

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }//back button
    
    @IBAction func shots50(_ sender: Any) {
        shotsUserInput.text = "50"
    }//50 button
    
    @IBAction func shots100(_ sender: Any) {
        shotsUserInput.text = "100"
    }//100 button
    
    @IBAction func startBut(_ sender: Any) {
        globalShotsUserInput = shotsUserInput.text!
    }
    
}
