//
//  MoreInfoViewController.swift
//  myinfoapp
//
//  Created by Anton Redkozubov on 10.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class MoreInfoViewController: ViewController {
    
    @IBOutlet weak var firstInfoLabel: UILabel!
    @IBOutlet weak var secondInfoLabel: UILabel!
    @IBOutlet weak var thirdInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }

//MARK:- makeUI
    private func makeUI(){
        firstInfoLabel.textAlignment = .center
        firstInfoLabel.text = "Антон Редкозубов"
        
        secondInfoLabel.text = """
        Мне 24 года. Уже успел поработать 1 год Junior Full-stack
        developer(java + js). С 15 лет начал работать на фрилансе. Тогда делал сайты на ucoz для школьников))) Чуть - чуть учил php и c#. Как итог такого смешения - все попробовал, ничего не знаю)
        """
        
        thirdInfoLabel.text = "inst: ihateredkozubov"
        
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        layer.startPoint = CGPoint(x: 0,y: 0)
        layer.endPoint = CGPoint(x:1, y: 1)
        view.layer.addSublayer(layer)
        view.layer.insertSublayer(layer, at: 0)
    }

}
