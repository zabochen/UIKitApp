//
//  ViewController.swift
//  UIKitApp
//
//  Created by Taras on 07.01.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Init Label
        initLabel()
        
        // Init Slider
        initSlider()
    }

    @IBAction func actionSlider(_ slider: UISlider){
        label.text = String(slider.value)
        let backgroundColor  = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(slider.value))
    }
    
    private func initLabel(){
        label.text = String(slider.value)
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 2
    }
    
    private func initSlider(){
        slider.minimumValue = 0
        slider.maximumValue = 1
        
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .green
        slider.thumbTintColor = .black
    }
}
