//
//  ViewController.swift
//  LogInApp
//
//  Created by HappyLiya on 04.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var login = "Login"
    private var password = "123456"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else
        { return }
        welcomeVC.user = login
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginTapped() {
        if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "welcomeSegue", sender: nil)
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Hey)",
                  message: "Your login is \(login)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Hey)", message: "Your password is \(password)")
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    
}

// MARK: Alert Controller
extension LoginViewController {
    private func showAlert (title: String,
                            message: String,
                            textField: UITextField? = nil) {
        let alert = UIAlertController.init(title: title,
                                           message: message,
                                           preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginTapped()
        }
        return true
    }
}
