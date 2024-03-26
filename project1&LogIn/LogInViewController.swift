//
//  LogInViewController.swift
//  project1&LogIn
//
//  Created by Khumalo, Lindokuhle L on 2023/05/09.


import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textFieldUser: UITextField!
    @IBOutlet var textFieldPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textFieldUser.resignFirstResponder()
        self.textFieldPass.resignFirstResponder()
        return true
    }
    
    func displayAlert(message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonLogIn(_ sender: Any) {
        
        if textFieldUser.text == "" || textFieldPass.text == "" {
            displayAlert(message: "Field(s) empty")
            
        } else if textFieldUser.text == "Admin" && textFieldPass.text == "12345" {
            displayAlert(message: "Sucessful Login")
            
        } else {
            displayAlert(message: "Invalid credentials")
        }
    }
}
            

        
    
    
        

    
    

