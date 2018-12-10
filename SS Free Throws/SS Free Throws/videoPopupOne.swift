//
//  videoPopupOne.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/10/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

class videoPopupOne: UIViewController {

    
    @IBOutlet weak var vidPopOne: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let threeRules = URL(string: "https://www.youtube.com/watch?v=WFB4WiAJZQ0")
        
        vidPopOne.loadRequest(URLRequest(url: threeRules!))
    }


    @IBAction func closePop(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
}
