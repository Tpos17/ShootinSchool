//
//  CoursePopupOne.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 2/3/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit
import WebKit

class CoursePopupOne: UIViewController {

    //@IBOutlet weak var openWebPop: WKWebView!
    
    @IBOutlet weak var webPop: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let course_pop = URL(string: "shootinschoolcourse.com")//shootinschoolcourse
        let request = URLRequest(url: course_pop!)
        webPop.load(request)
        
    }


}
