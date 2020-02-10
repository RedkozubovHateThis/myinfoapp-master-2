//
//  HomeViewController.swift
//  myinfoapp
//
//  Created by Anton Redkozubov on 08.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class HomeViewController: ViewController {

    @IBOutlet weak var labelWithUsername: UILabel!
    @IBOutlet weak var labelWithSmile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
       private func makeUI(){
        labelWithUsername.text = "Привет, \(myName)!"
        labelWithSmile.text = "🌚"
        
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        layer.startPoint = CGPoint(x: 0,y: 0)
        layer.endPoint = CGPoint(x:1, y: 1)
        view.layer.addSublayer(layer)
        view.layer.insertSublayer(layer, at: 0)
        }
    
}
