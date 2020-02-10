//
//  SecondViewController.swift
//  myinfoapp
//
//  Created by Anton Redkozubov on 08.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
     override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func logOut(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "USERLOGGEDIN")
        self.navigationController?.popToRootViewController(animated: true)
    }
}
