//
//  ViewControllerResults.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/15/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

class ViewControllerResults: UIViewController {

    @IBOutlet weak var longLeftResult: UILabel!
    @IBOutlet weak var longResult: UILabel!
    @IBOutlet weak var longRightResult: UILabel!
    @IBOutlet weak var leftResult: UILabel!
    @IBOutlet weak var rightResult: UILabel!
    @IBOutlet weak var shortLeftResult: UILabel!
    @IBOutlet weak var shortResult: UILabel!
    @IBOutlet weak var shortRightResult: UILabel!
    @IBOutlet weak var madeResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculations()
    }

    func calculations(){
        longLeftResult.text = String(longLeft!)
        longRightResult.text = String(longRight!)
        longResult.text = String(long!)
        leftResult.text = String(left!)
        rightResult.text = String(right!)
        madeResult.text = String(make!)
        shortRightResult.text = String(shortRight!)
        shortLeftResult.text = String (shortLeft!)
        shortResult.text = String(short!)
        fadeNumsIn()

    }
    
    func fadeNumsIn(){
        UILabel.animate(withDuration: 1, animations: {
            self.longLeftResult.alpha = 1
            self.leftResult.alpha = 1
            self.shortLeftResult.alpha = 1
            self.longResult.alpha = 1
            self.madeResult.alpha = 1
            self.shortResult.alpha = 1
            self.longRightResult.alpha = 1
            self.rightResult.alpha = 1
            self.shortRightResult.alpha = 1
                }, completion: { (success) in

                })
    }
    
    
    func fadeNumsOut() {
        UILabel.animate(withDuration: 0.5, animations: {
            self.longLeftResult.alpha = 0
            self.leftResult.alpha = 0
            self.shortLeftResult.alpha = 0
            self.longResult.alpha = 0
            self.madeResult.alpha = 0
            self.shortResult.alpha = 0
            self.longRightResult.alpha = 0
            self.rightResult.alpha = 0
            self.shortRightResult.alpha = 0
        }) { (success) in
            
        }
    }
}
