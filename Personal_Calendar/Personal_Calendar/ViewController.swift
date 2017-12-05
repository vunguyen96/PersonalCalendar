//
//  ViewController.swift
//  Personal_Calendar
//
//  Created by Nguyen Anh Vu on 12/6/17.
//  Copyright © 2017 iOS_Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblCurrentTimes: UILabel!
    
    
    //Outlet cua 3 Container View
    @IBOutlet weak var containerViewY: UIView!
    @IBOutlet weak var containerViewW: UIView!
    @IBOutlet weak var containerViewM: UIView!
    
    //Su kien thay doi gia tri cua Segment Control
    @IBAction func scViewMode_ValueChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewY.alpha = 1
                self.containerViewM.alpha = 0
                self.containerViewW.alpha = 0
            })
        }
        else if sender.selectedSegmentIndex == 1{
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewY.alpha = 0
                self.containerViewM.alpha = 1
                self.containerViewW.alpha = 0
            })
        }
        else {
                UIView.animate(withDuration: 0.5, animations: {
                    self.containerViewY.alpha = 0
                    self.containerViewM.alpha = 0
                    self.containerViewW.alpha = 1
                })
            }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let year:Int = components.year!
        let month:Int = components.month!
        let day:Int = components.day!
        lblCurrentTimes.text = String(day) + "/" + String(month) + "/" + String (year)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

