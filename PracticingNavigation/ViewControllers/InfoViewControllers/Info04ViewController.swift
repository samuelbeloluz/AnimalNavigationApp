//
//  Info04ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Info04ViewController: UIViewController {
    
    var bgColor:UIColor?
    
    
    
    @IBOutlet weak var infoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configBackgroundColor()
        configView()
        configInfoTextView()
        
    }
    
    func configBackgroundColor() {
        bgColor = UIColor(red:255/255.0,green:222/255.0,blue:172/255.0,alpha:1)
    }
    
    func configView() {
        view.backgroundColor = bgColor
    }
    
    func configInfoTextView() {
        infoTextView.text = "The Maned Wolf, is a unique species of canine found in South America, particularly in Argentina, Brazil, Bolivia, Peru, and Paraguay.\n It is almost extinct in Uruguay. The Maned Wolf is neither a fox nor a wolf, despite its markings resembling those of foxes. The Maned Wolf’s habitat, the Cerrado, is rapidly shrinking. This poses significant challenges to its life cycle and breeding habits, making its conservation status precarious.\n According to the International Union for Conservation of Nature, it is listed as near threatened. However, the Brazilian Institute of Environment and Renewable Natural Resources considers it a vulnerable species.\n In some regions, the situation is even more critical. For instance, in Rio Grande do Sul, the Maned Wolf is considered critically endangered."
        infoTextView.font = UIFont(name: "System Italic", size: 20)
        infoTextView.font = UIFont.boldSystemFont(ofSize: 20)
        infoTextView.backgroundColor = bgColor
        infoTextView.isEditable = false
    }

}
