//
//  ViewControllerShots.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/7/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

var long : Int? = 0
var longLeft : Int? = 0
var longRight : Int? = 0
var left : Int? = 0
var right : Int? = 0
var make : Int? = 0
var short : Int? = 0
var shortLeft : Int? = 0
var shortRight : Int? = 0
var total : Int? = 0

class ViewControllerShots: UIViewController {

    @IBOutlet weak var remainingL: UILabel!
    @IBOutlet weak var shotIndicator: UILabel!
    @IBOutlet weak var totalShotCounter: UILabel!
    
    
    @IBOutlet weak var topLeftBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        long? = 0
        left? = 0
        right? = 0
        make? = 0
        short? = 0
        total? = 0
        shortLeft? = 0
        shortRight? = 0
        longLeft? = 0
        longRight? = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var remain : Int? = Int(globalShotsUserInput)
    
    func calcTot(r :Int, t :Int) -> Int{
        
        let tots = r - t
        return tots
    }
    
    func labelFade(){
        UILabel.animate(withDuration: 0.5, animations: {
            self.shotIndicator.alpha = 1
        }) { (success) in
            UILabel.animate(withDuration: 1.5, animations: {
                self.shotIndicator.alpha = 0
            }, completion: { (success) in
                
            })
        }
    }
    
    
    
    @IBAction func topLeftButton(_ sender: UIButton) {
        total? += 1
        //left? += 1
        longLeft? += 1

        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Long Left"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
        
    }
    @IBAction func topMidButton(_ sender: UIButton) {
        total? += 1
        long? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Long"

        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)

        goToEnd()
        
        labelFade()
    }
    @IBAction func topRightButton(_ sender: UIButton) {
        total? += 1
        //right? += 1
        longRight? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Long Right"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func midLeftButton(_ sender: UIButton) {
        total? += 1
        left? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Left"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func midButton(_ sender: UIButton) {
        total? += 1
        long? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Long"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func midRightButton(_ sender: UIButton) {
        total? += 1
        right? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Right"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func bottomLeftButton(_ sender: UIButton) {
        total? += 1
        //short? += 1
        shortLeft? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Short Left"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func hoopButton(_ sender: UIButton) {
        total? += 1
        make? += 1
        
        shotIndicator.textColor = UIColor.green
        shotIndicator.text = "Shot Made!"
        
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func bottomRightButton(_ sender: UIButton) {
        total? += 1
        //short? += 1
        shortRight? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Short Right"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    @IBAction func shortButton(_ sender: UIButton) {
        total? += 1
        short? += 1
        
        shotIndicator.textColor = UIColor.red
        shotIndicator.text = "Missed Short"
        totalShotCounter.text = "\(make!) for \(String(total!))"
        
        let n = calcTot(r: Int(globalShotsUserInput)!, t: total!)
        remainingL.text = String(n)
        
        goToEnd()
        
        labelFade()
    }
    
    func goToEnd(){
        if total! == Int(globalShotsUserInput){
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "results") as! ViewControllerResults
            self.present(vc, animated: true, completion: nil)
        }
    }
}
