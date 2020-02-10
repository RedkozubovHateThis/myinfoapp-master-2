import UIKit

class InfoViewController: ViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var imgAvatar: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()

    }
//MARK:- makeUI
    private func makeUI(){
        infoLabel.text = "Привет, меня зовут Антон"
        infoLabel.textColor = .black
        infoLabel.textAlignment = .center
    
        
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        layer.startPoint = CGPoint(x: 0,y: 0)
        layer.endPoint = CGPoint(x:1, y: 1)
        view.layer.addSublayer(layer)
        view.layer.insertSublayer(layer, at: 0)
    }

}
