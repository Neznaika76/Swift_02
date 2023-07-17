//
//  ViewController.swift
//  Swift_02_Int
//
//  Created by Pavel iPro on 18.07.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }

    @IBAction func buttonSignInTapped(_ sender: Any) {
    }
    
    
}

