//
//  ViewController.swift
//  myinfoapp
//
//  Created by Anton Redkozubov on 07.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    let username = "Anton"
    let password = "qwerty"
    var myName: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
//MARK:- IBAction
    
    @IBAction func logIn(_ sender: Any) {
        if username == textFieldUserName.text && password == textFieldPassword.text{
            UserDefaults.standard.set(textFieldUserName.text!, forKey: "Username")
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Login или Password введен не верно", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ок", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        
//        textFieldUserName.text = myName
    }
    
    @IBAction func forgotUsername(_ sender: Any) {
        let alertForgotUsername = UIAlertController(title: "🧑🏽‍💻", message: "А username то Anton ", preferredStyle: .alert)
        let okForgot = UIAlertAction(title: "Понял", style: .default, handler: nil)
        alertForgotUsername.addAction(okForgot)
        present(alertForgotUsername, animated: true, completion: nil)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        let alertForgotPassword = UIAlertController(title: "🔑", message: "Password qwerty ", preferredStyle: .alert)
        let okForgotPass = UIAlertAction(title: "Понял", style: .default, handler: nil)
        alertForgotPassword.addAction(okForgotPass)
        present(alertForgotPassword, animated: true, completion: nil)
    }
   @IBAction func logoutSegue(segue: UIStoryboardSegue) {
//    textFieldUserName.text = nil
//    textFieldPassword.text = nil
    }
    
    @IBAction func textFieldEntered(_ sender: UITextField) {
        myName = String(textFieldUserName.text!)
//        print("myDigit = \(myName)")
     }
    
}
//MARK:- UITextFielDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
    
}

