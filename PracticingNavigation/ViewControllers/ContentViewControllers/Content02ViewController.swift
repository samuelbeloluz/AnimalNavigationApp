//
//  Content02ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Content02ViewController: UIViewController {
    
    
    var name: String?
    
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configInfoButton()
        configNextButton()
        configView()
        configTitleNavigationItem()
        configNameLabel()
        configAnimalImageView()
    }
    
    
    @IBAction func tappedInfoButton(_ sender: UIButton) {
        let vc:Info02ViewController? = UIStoryboard(name: "Info02", bundle: nil).instantiateViewController(withIdentifier: "Info02ViewController") as? Info02ViewController
        
        
        self.present(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: Content03ViewController? = UIStoryboard(name: "Content03", bundle: nil).instantiateViewController(identifier: "Content03ViewController") {coder in return
            Content03ViewController(coder:coder, name: self.name ?? "User")
        }
        
        self.navigationController?.pushViewController(vc ?? ViewController(), animated: true)
    }
    
    func configNameLabel() {
        nameLabel.text = ("User: \(name ?? "User")")
        nameLabel.font = UIFont(name: "System Italic", size: 8)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 10)
    }
    
    
    func configInfoButton() {
        infoButton.backgroundColor = UIColor.systemBlue
        infoButton.tintColor = UIColor.white
        infoButton.setTitle("Information", for: .normal)
        infoButton.setTitle("Opening...",for: .highlighted)
        infoButton.titleLabel?.font = UIFont(name: "System Italic",size: 20)
        infoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        infoButton.clipsToBounds = true
        infoButton.layer.cornerRadius = 15
        
        
    }
    
    func configNextButton() {
        nextButton.tintColor = UIColor.white
        nextButton.backgroundColor = UIColor.systemBlue
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitle("Opening...", for: .highlighted)
        nextButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 15
    }
    
    func configView() {
        view.backgroundColor = UIColor(red:38/255.0,green:154/255.0,blue:255/255.0,alpha:0.9)
    }
    
    func configTitleNavigationItem() {
        titleNavigationItem.title = "Blue Whale"
        titleNavigationItem.backButtonTitle = "Whale"
    }
    
    func configAnimalImageView() {
        animalImageView.image = UIImage(named: "bluewhale.png")
        animalImageView.contentMode = UIView.ContentMode.scaleToFill
        //Creating a shadow in image background.
        animalImageView.layer.shadowColor = UIColor.black.cgColor
        animalImageView.layer.shadowOffset = CGSize(width: 0, height: 1)
        animalImageView.layer.shadowOpacity = 0.5
        animalImageView.layer.shadowRadius = 10
        animalImageView.clipsToBounds = false
    }
}
