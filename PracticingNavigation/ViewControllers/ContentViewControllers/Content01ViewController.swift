//
//  Content01ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Content01ViewController: UIViewController {
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var infoButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    
    //Variable to receive data from first View.
    var name:String?
    
    //Construct method to force when instanciating the class, to receive the parameters with it. (That's because NSCoder)
    init?(coder: NSCoder, name: String){
        self.name = name
        //Triggering father class construct method as NSCoder.
        super.init(coder: coder)
    }
    
    //If when instanciate the class the parameters are not filled, then it returns a fatal error.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configNameLabel()
        configView()
        configInfoButton()
        configNextButton()
        configTitleNavigationItem()
        configAnimalImageView()
        
    }
    
    
    
    @IBAction func tappedInfoButton(_ sender: UIButton) {
        
        let vc:Info01ViewController? = UIStoryboard(name: "Info01", bundle: nil).instantiateViewController(withIdentifier: "Info01ViewController") as? Info01ViewController
        
        self.present(vc ?? UIViewController(), animated: true)
    }
    
    
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let vc: Content02ViewController? = UIStoryboard(name: "Content02", bundle: nil).instantiateViewController(identifier: "Content02ViewController") { coder in return
            Content02ViewController(coder: coder, name: self.name ?? "User")
        }
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    //Using the data from first view in nameLabel.
    func configNameLabel() {
        nameLabel.font = UIFont(name: "System Italic", size: 8)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 10)
        nameLabel.text = "User: \(name ?? "User")"
        
    }
    
    func configView() {
        view.backgroundColor = UIColor(red:192/255.0,green:250/255.0,blue:255/255.0,alpha:0.9)
    }
    
    func configInfoButton() {
        infoButton.tintColor = .white
        infoButton.backgroundColor = .systemBlue
        infoButton.layer.cornerRadius = 15
        infoButton.clipsToBounds = true
        infoButton.setTitle("Information", for: .normal)
        infoButton.setTitle("Opening...", for: .highlighted)
        infoButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        infoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
    }
    
    func configNextButton() {
        nextButton.tintColor = UIColor.white
        nextButton.backgroundColor = UIColor.systemBlue
        nextButton.layer.cornerRadius = 15
        nextButton.clipsToBounds = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitle("Opening...", for: .highlighted)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        nextButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
    }
    
    func configTitleNavigationItem() {
        titleNavigationItem.title = "Polar Bear"
        titleNavigationItem.backButtonTitle = "Polar Bear"
    }
    
    func configAnimalImageView() {
        animalImageView.image = UIImage(named: "polarbear.png")
        animalImageView.contentMode = UIView.ContentMode.scaleAspectFill
        //Creating a shadow in image background.
        animalImageView.layer.shadowColor = UIColor.black.cgColor
        animalImageView.layer.shadowOffset = CGSize(width: 0, height: 1)
        animalImageView.layer.shadowOpacity = 0.5
        animalImageView.layer.shadowRadius = 10
        animalImageView.clipsToBounds = false
    }
    

}
