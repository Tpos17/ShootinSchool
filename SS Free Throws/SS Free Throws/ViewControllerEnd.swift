//
//  ViewControllerEnd.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/7/18.
//  Copyright © 2018 TApps. All rights reserved.
//
import Foundation
import UIKit

class ViewControllerEnd: UIViewController {

    @IBOutlet weak var longL: UILabel!
    @IBOutlet weak var leftL: UILabel!
    @IBOutlet weak var rightL: UILabel!
    @IBOutlet weak var makeL: UILabel!
    @IBOutlet weak var shortL: UILabel!
    
    @IBOutlet weak var longPL: UILabel!
    @IBOutlet weak var leftPL: UILabel!
    @IBOutlet weak var rightPL: UILabel!
    @IBOutlet weak var makePL: UILabel!
    @IBOutlet weak var shortPL: UILabel!
    
    var longP : Double? = 0
    var leftP : Double? = 0
    var rightP : Double? = 0
    var makeP : Double? = 0
    var shortP : Double? = 0
    
    var longT : Double? = 0
    var leftT : Double? = 0
    var rightT : Double? = 0
    var makeT : Double? = 0
    var shortT : Double? = 0
    var shortLeftT : Double? = 0
    var shortRightT : Double? = 0
    var longLeftT : Double? = 0
    var longRightT : Double? = 0
    
//    NSNumber *num1 = [NSNumber numberWithDouble:1234567.8369];
//    NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        longP = 0
        leftP = 0
        rightP = 0
        makeP = 0
        shortP = 0
        
        let misses : Int = total! - make!
        
        longP = (Double(longLeft!) + Double(longRight!) + Double(long!))/Double(misses)*100
        leftP = (Double(longLeft!) + Double(shortLeft!) + Double(left!))/Double(misses)*100
        rightP = (Double(longRight!) + Double(shortRight!) + Double(right!))/Double(misses)*100
        shortP = (Double(shortLeft!) + Double(shortRight!) + Double(short!))/Double(misses)*100
        
        
        longT = Double(floor(10*longP!)/10)
        leftT = Double(floor(10*leftP!)/10)
        rightT = Double(floor(10*rightP!)/10)
        shortT = Double(floor(10*shortP!)/10)
        
        
    
        longPL.text = String("(\(longT!)%)")
        longColor()
        leftPL.text = String("(\(leftT!)%)")
        leftColor()
        rightPL.text = String("(\(rightT!)%)")
        rightColor()
        shortPL.text = String("(\(shortT!)%)")
        shortColor()
        
        
//        longL.text = String(long!)
//        leftL.text = String(left!)
//        rightL.text = String(right!)
//        makeL.text = String(make!)
//        shortL.text = String(short!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func longColor() {
        if longP! >= 50.0{
            longPL.textColor = UIColor.red
        }else if longP! >= 25.0 {
            longPL.textColor = UIColor.yellow
        }else{
            longPL.textColor = UIColor.lightGray
        }
    }
    func leftColor() {
        if leftP! >= 50.0{
            longPL.textColor = UIColor.red
        }else if leftP! >= 25.0 {
            leftPL.textColor = UIColor.yellow
        }else{
            leftPL.textColor = UIColor.lightGray
        }
    }
    func rightColor() {
        if rightP! >= 50.0{
            longPL.textColor = UIColor.red
        }else if rightP! >= 25.0 {
            rightPL.textColor = UIColor.yellow
        }else{
            rightPL.textColor = UIColor.lightGray
        }
    }
//    func makeColor() {
//        if makeP! >= 85.0 {
//            makePL.textColor = UIColor.green
//        }else if makeP! >= 70.0{
//            makePL.textColor = UIColor.yellow
//        }else if makeP! >= 55.0{
//            makePL.textColor = UIColor.orange
//        }else{
//            makePL.textColor = UIColor.red
//        }
//    }
    func shortColor() {
        if shortP! >= 50.0{
            longPL.textColor = UIColor.red
        }else if shortP! >= 25.0 {
            shortPL.textColor = UIColor.yellow
        }else{
            shortPL.textColor = UIColor.lightGray
        }
    }
    
//    func truncate(places : Int)-> Double
//    {
//        return Double(floor(pow(10.0, Double(places)) * self)/pow(10.0, Double(places)))
//    }
    
    
}
