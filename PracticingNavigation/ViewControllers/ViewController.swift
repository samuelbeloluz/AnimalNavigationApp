//
//  ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 28/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var userName:String?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    @IBOutlet weak var beginButton: UIButton!
    
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configTitleLabel()
        configNameLabel()
        configNameTextField()
        configBeginButton()
        configView()
        configTitleNavigationItem()
        configLogoImageView()
        
        //MARK: Contrato de delegate do TextField
        self.nameTextField.delegate = self
    }
    
    
    
    @IBAction func tappedBeginButton(_ sender: UIButton) {
        
        self.userName = nameTextField.text
        
        let vc: Content01ViewController? = UIStoryboard(name: "Content01", bundle: nil).instantiateViewController(identifier: "Content01ViewController") { coder in return Content01ViewController(coder: coder, name: self.userName ?? "User")}
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        let alert = UIAlertController(title: "Welcome! 🎉", message: "Our team are grateful you choose to entrust in our product.\n Please, Enjoy the experience, \(self.userName ?? ""). 😄", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func configTitleLabel() {
        titleLabel.text = "A Awareness of Human Actions App"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.font = UIFont(name: "System Italic", size: 20)
        titleLabel.textAlignment = NSTextAlignment.center
    }
    
    func configNameLabel() {
        nameLabel.text = "Insert your name:"
        nameLabel.font = UIFont(name: "System Italic", size: 16)
    }
    
    func configNameTextField() {
        nameTextField.text = ""
        nameTextField.placeholder = "Name"
        nameTextField.font = UIFont(name: "System Italic", size: 20)
        nameTextField.layer.cornerRadius = 6
        nameTextField.clipsToBounds = true
    }
    
    
    func configBeginButton(){
        beginButton.isEnabled = false
        beginButton.tintColor = UIColor.white
        beginButton.backgroundColor = .systemBlue
        
        beginButton.setTitle("Begin", for: .normal)
        beginButton.setTitle("Beginning...", for: .highlighted)
        beginButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        beginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        //Setting the corner format.
        beginButton.layer.cornerRadius = 15
        beginButton.clipsToBounds = true
    }
    
    func configView() {
        view.backgroundColor = UIColor(red:0/255.0,green:204/255.0,blue:0/255.0,alpha:0.9)
    }
    
    func configTitleNavigationItem() {
        titleNavigationItem.title = "Animals on the verge of extinction ©"
        titleNavigationItem.titleView?.backgroundColor = UIColor.white
        //O BackButton pertence a pagina anterior e não a pagina que ele aparece.
        titleNavigationItem.backButtonTitle = "Main Page"
    }
    
    func configLogoImageView() {
        logoImageView.image = UIImage(named: "applogo.png")
        logoImageView.contentMode = UIView.ContentMode.scaleAspectFit
    }
    
    func validateTextField() {
        //Validating if nameTextField is filled to activate beginButton.
        if(nameTextField.text != "") {
            beginButton.isEnabled = true
        } else {
            beginButton.isEnabled = false
        }
    }

}


//ViewController Extension to manipulate TextField Delegation.
extension ViewController {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //When start editing, create a layer border with different color to mark it.
        nameTextField.layer.borderColor = UIColor.blue.cgColor
        nameTextField.layer.borderWidth = 1
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //When return is pressed, we take off the keyboard and it triggers didEndEditing method.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //When leaving texting, we take off the border and validate the text field to activate beginButton.
        nameTextField.layer.borderWidth = 0
        validateTextField()
    }
    
}

