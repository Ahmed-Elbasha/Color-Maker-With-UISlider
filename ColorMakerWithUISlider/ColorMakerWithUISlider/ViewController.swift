//
//  ViewController.swift
//  ColorMakerWithUISlider
//
//  Created by Ahmed Elbasha on 6/24/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redSlider.maximumValue = 255.0
        greenSlider.maximumValue = 255.0
        blueSlider.maximumValue = 255.0
        
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeColorComponent(_ sender: Any) {
        if redSlider == nil || blueSlider == nil || colorView == nil || greenSlider == nil {
            return
        }
        
        let red: CGFloat = CGFloat(redSlider.value)
        let green: CGFloat = CGFloat(greenSlider.value)
        let blue: CGFloat = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    
}

