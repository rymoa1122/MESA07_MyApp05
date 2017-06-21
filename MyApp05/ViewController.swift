//
//  ViewController.swift
//  MyApp05
//
//  Created by iii on 2017/6/21.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var svalue: UISwitch!
    
    @IBOutlet weak var stepValue: UIStepper!

    @IBOutlet weak var myBtn: UIButton!
    
    private var isOn:Bool?
    
    @IBAction func switchStatus(_ sender: Any) {
         print(svalue.isOn)
    }
    
    
    @IBAction func changeValue(_ sender: Any) {
         print(stepValue.value)
    }
    
    @IBAction func clickButton(_ sender: Any) {
        myBtn.isSelected = !myBtn.isSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    stepValue.maximumValue = 10
    stepValue.minimumValue = 0
    stepValue.value = 5
    stepValue.stepValue = 0.5
    
    myBtn.setImage(UIImage(named:"sw_on"), for: UIControlState.normal)
    myBtn.setImage(UIImage(named:"sw_off"), for: UIControlState.selected)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

