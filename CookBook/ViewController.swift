//
//  ViewController.swift
//  CookBook
//
//  Created by Edis Shabi on 1/20/15.
//  Copyright (c) 2015 Edis Shabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var slider : UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider = UISlider(frame: CGRect(x: 0, y: 0, width: 200, height: 23))
        slider.center = view.center
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = slider.maximumValue / 2.0
        slider.addTarget(self, action: "slidervalue", forControlEvents: .ValueChanged)
        view.addSubview(slider)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func slidervalue ( sender : UISlider )
    {
        println("slider new value is \(slider.value)")
    }

    }

