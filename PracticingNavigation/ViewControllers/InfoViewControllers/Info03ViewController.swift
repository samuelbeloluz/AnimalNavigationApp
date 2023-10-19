//
//  Info03ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Info03ViewController: UIViewController {
    
    var bgColor:UIColor?
    
    @IBOutlet weak var infoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configBackgroundColor()
        configView()
        configInfoTextView()
    }
    
    func configBackgroundColor() {
        //Setting ViewBackground Color and TextView Background Color the same using 'bgColor'.
        bgColor = UIColor(red:247/255.0,green:177/255.0,blue:70/255.0,alpha:1)
    }

    func configView() {
        view.backgroundColor = bgColor
    }
    
    func configInfoTextView() {
        infoTextView.text = "The first year of life is the most difficult for golden lion tamarins; 50 percent of infants die during this time. The remaining individuals usually live for about eight years and can live up to 20 years or more in human care.\n Historically, collection for the pet trade, severe habitat loss and fragmentation were the primary threats to golden lion tamarins. Habitats were destroyed to make way for sugar cane and coffee production, cattle grazing, logging, charcoal and urbanization. As a result, in the early 1970s, there were as few as 200 golden lion tamarins in the wild."
        infoTextView.backgroundColor = bgColor
        infoTextView.font = UIFont(name: "System Italic", size: 20)
        infoTextView.font = UIFont.boldSystemFont(ofSize: 20)
        infoTextView.isEditable = false
    }
    

}
