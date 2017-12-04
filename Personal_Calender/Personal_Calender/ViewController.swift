//
//  ViewController.swift
//  Personal_Calender
//
//  Created by Nguyen Anh Vu on 12/3/17.
//  Copyright © 2017 Nguyen Anh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDatePicked: UILabel!
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBAction func scControls(_ sender: Any) {
        
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let year:Int = components.year!
        let month:Int = components.month!
        let day:Int = components.day!
        lblCurrentTime.text = String(day) + "/" + String(month) + "/" + String(year)        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

