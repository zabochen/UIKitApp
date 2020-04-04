//
//  ViewController.swift
//  UIKitApp
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var buttonScope: [UIButton]!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide label
        hideLabel()
        
        // Change button
        self.button.setTitle("Show some text in lable", for: UIControl.State.normal)
        self.button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.button.backgroundColor = UIColor.black
        
        // Change buttons in scope
        for button in buttonScope {
            button.setTitleColor(UIColor.white, for: UIControl.State.normal)
            button.backgroundColor = UIColor.red
        }
    }

    @IBAction func clickButton(_ button: UIButton) {
        
        // Change label
        self.label.text = "Hello, label!"
        self.label.font = label.font.withSize(35)
        self.label.textColor = UIColor.red
        
        // Sender Tag
        // All views has "default tag": 0
        // We can add tag in Interface Bulder
        let uiViewTag: Int = button.tag
        if uiViewTag == 100 {
            print(uiViewTag)
        } else if uiViewTag == 10 {
            print("Click Button_1")
        } else if uiViewTag == 20 {
            print("Click Button_2")
        }
        
        // Show label
        showLabel()
    }
    
    private func showLabel() {
        self.label.isHidden = false
    }
    
    private func hideLabel() {
        self.label.isHidden = true
    }
}

