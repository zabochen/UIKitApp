//
//  ViewController.swift
//  UIKitApp
//
//  Created by Taras on 07.01.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Init Segmented Control
        initSegmentControll()
        
        // Init Label
        initLabel()
    }

    @IBAction func changeSegment(_ sender: UISegmentedControl){
        
        // Show Label
        label.isHidden = false
        
        switch sender.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is selected"
            label.textColor = UIColor.yellow
        case 1:
            label.text = "The second segment is selectes"
            label.textColor = UIColor.blue
        case 2:
            label.text = "The third segment is selected"
            label.textColor = UIColor.green
        default:
            label.text = "Something wrong"
            label.textColor = UIColor.red
        }
    }
    
    private func initSegmentControll(){
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    
    private func initLabel(){
        label.isHidden = true
        label.font = label.font.withSize(30)
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 2
    }
}
