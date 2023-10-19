//
//  Content03ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Content03ViewController: UIViewController {
    
    var name:String?
    
    init?(coder:NSCoder, name:String){
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configNameLabel()
        configTitleNavigationItem()
        configInfoButton()
        configNextButton()
        configView()
        configAnimalImageView()
    }
    
    
    @IBAction func tappetInfoButton(_ sender: UIButton) {
        let vc: Info03ViewController? = UIStoryboard(name: "Info03", bundle: nil).instantiateViewController(withIdentifier: "Info03ViewController") as? Info03ViewController
        
        self.present(vc ?? ViewController(), animated: true)
        
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        
        let vc: Content04ViewController? = UIStoryboard(name: "Content04", bundle: nil).instantiateViewController(identifier: "Content04ViewController") {coder in return
            Content04ViewController(coder: coder, name: self.name ?? "User")
        }
        
        self.navigationController?.pushViewController(vc ?? ViewController(), animated: true)
        
    }
    
    
    func configNameLabel() {
        nameLabel.text = "User: \(name ?? "User")"
        nameLabel.font = UIFont(name: "System Italic", size: 8)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 10)
        
    }
    
    func configTitleNavigationItem(){
        titleNavigationItem.title = "Golden Lion Tamarin"
        titleNavigationItem.backButtonTitle = "Lion Tamarin"
    }
    
    func configInfoButton() {
        infoButton.setTitle("Information", for: .normal)
        infoButton.setTitle("Opening...", for: .highlighted)
        infoButton.tintColor = UIColor.white
        infoButton.backgroundColor = UIColor.systemBlue
        infoButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        infoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        infoButton.layer.cornerRadius = 15
        infoButton.clipsToBounds = true
    }
    
    func configNextButton() {
        nextButton.layer.cornerRadius = 15
        nextButton.clipsToBounds = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitle("Opening...", for: .highlighted)
        nextButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        nextButton.backgroundColor = UIColor.systemBlue
        nextButton.tintColor = UIColor.white
    }
    
    func configView() {
        view.backgroundColor = UIColor(red:255/255.0,green:221/255.0,blue:88/255.0,alpha:0.9)
    }
    
    func configAnimalImageView() {
        animalImageView.image = UIImage(named: "goldenliontamarin.png")
        animalImageView.contentMode = UIView.ContentMode.scaleAspectFit
        //Creating a shadow in image background.
        animalImageView.layer.shadowColor = UIColor.black.cgColor
        animalImageView.layer.shadowOffset = CGSize(width: 0, height: 1)
        animalImageView.layer.shadowOpacity = 0.5
        animalImageView.layer.shadowRadius = 10
        animalImageView.clipsToBounds = false
    }
    

}
