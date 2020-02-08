//
//  ViewController.swift
//  UIKitApp
//
//  Created by Taras on 07.01.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var enterTextField: UITextField!
    @IBOutlet weak var buttonDone: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    private func initTextLabel(){
        
    }
    
    private func initEnterTextField(){
        
    }
    
    private func initButtonDone(){
        
    }
    
    @IBAction func actionEnterTextField(_ textField: UITextField){
        
    }
    
    @IBAction func actionDoneButton(_ doneButton: UIButton){
        
        guard enterTextField.text?.isEmpty == false else {
            return
        }
        
        if let _ = Double(enterTextField.text!){
            print("Name format is wrong")
            enterTextField.text = nil
            showAlertController()
        } else {
            textLabel.text = enterTextField.text
        }
    
    }
    
    private func showAlertController(){
        let alertController = UIAlertController(
            title: "Wrong format",
            message: "Please enter your name",
            preferredStyle: UIAlertController.Style.alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default,
            handler: nil
        )
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
