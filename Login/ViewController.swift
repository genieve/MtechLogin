//
//  ViewController.swift
//  Login
//
//  Created by Alexis Wright on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
    }
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    
}

