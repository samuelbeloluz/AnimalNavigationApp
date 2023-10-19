//
//  Content04ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit


class Content04ViewController: UIViewController {
    
    
    var name:String?
    
    init?(coder: NSCoder, name: String){
        self.name = name
        super.init(coder:coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        configView()
        configNameLabel()
        configInfoButton()
        configNextButton()
        configTitleNavigationItem()
        configAnimalImageView()
    }
    
    
    @IBAction func tappedInfoButton(_ sender: UIButton) {
        let vc: Info04ViewController? = UIStoryboard(name: "Info04", bundle: nil).instantiateViewController(withIdentifier: "Info04ViewController") as? Info04ViewController
        
        self.present(vc ?? ViewController(), animated: true)
    }
    
    
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: FinalPageViewController? = UIStoryboard (name: "FinalPage", bundle: nil).instantiateViewController(identifier: "FinalPageViewController") {coder in return
            FinalPageViewController(coder: coder, name: self.name ?? "User")
        }
        
        self.navigationController?.pushViewController(vc ?? ViewController(), animated: true)
        
        let alert = UIAlertController(title: "You can help! 🫵🏻", message: "Experience Ended, \(self.name ?? "").\n Now you know about the situation os those great species in risk of extinction, please consider helping. 🌎 🧑🏻‍⚕️ 🐳 ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Let me know about 📝", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    func configNameLabel() {
        nameLabel.text = "User: \(name ?? "User")"
        nameLabel.font = UIFont(name: "System Italic", size: 8)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 10)
    }
    
    func configTitleNavigationItem() {
        titleNavigationItem.title = "Maned Wolf"
        titleNavigationItem.backButtonTitle = "Maned Wolf"
        
    }
    
    func configInfoButton() {
        infoButton.backgroundColor = UIColor.systemBlue
        infoButton.tintColor = UIColor.white
        infoButton.clipsToBounds = true
        infoButton.layer.cornerRadius = 15
        infoButton.setTitle("Information", for: .normal)
        infoButton.setTitle("Opening...", for: .highlighted)
        infoButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        infoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    func configNextButton() {
        nextButton.backgroundColor = UIColor.systemBlue
        nextButton.tintColor = UIColor.white
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        nextButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        nextButton.layer.cornerRadius = 15
        nextButton.clipsToBounds = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitle("Opening...", for: .highlighted)
    }
    
    func configView() {
        view.backgroundColor = UIColor(red:255/255.0,green:176/255.0,blue:55/255.0,alpha:0.9)
    }
    
    func configAnimalImageView() {
        animalImageView.image = UIImage(named: "manedwolf.png")
        animalImageView.contentMode = UIView.ContentMode.scaleAspectFit
        //Creating a shadow in image background.
        animalImageView.layer.shadowColor = UIColor.black.cgColor
        animalImageView.layer.shadowOffset = CGSize(width: 0, height: 1)
        animalImageView.layer.shadowOpacity = 0.5
        animalImageView.layer.shadowRadius = 10
        animalImageView.clipsToBounds = false
    }
    
    
    
    
}
