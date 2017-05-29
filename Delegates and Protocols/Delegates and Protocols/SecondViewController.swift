//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Vasanth Kumar Velusamy01 on 29/05/17.
//  Copyright © 2017 Vasanth Kumar Velusamy01. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate {
    func userDidEnterInformation(info: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    var delegate: DataEnteredDelegate?
    
    @IBAction func sendData(_ sender: UIButton) {
        if (delegate != nil) {
            let information: String = dataTextField.text!
            delegate?.userDidEnterInformation(info: information)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
