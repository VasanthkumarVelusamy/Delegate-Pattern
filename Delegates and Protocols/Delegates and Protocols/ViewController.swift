//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by Vasanth Kumar Velusamy01 on 29/05/17.
//  Copyright © 2017 Vasanth Kumar Velusamy01. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {
    
    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidEnterInformation(info: String) {
        dataLabel.text = info
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let secondVC = segue.destination as? SecondViewController
            secondVC?.delegate = self
        }
    }
}

