//
//  videoPopupTwo.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/10/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

class videoPopupTwo: UIViewController {

    @IBOutlet weak var vidPopTwo: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let freeThrow = URL(string: "https://www.youtube.com/watch?v=5Dcg3pXoQyI")
        
        vidPopTwo.loadRequest(URLRequest(url: freeThrow!))
        
    }
    
    
    @IBAction func closePop(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
}
