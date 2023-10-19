//
//  Info02ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Info02ViewController: UIViewController {
    
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
        bgColor = UIColor(red:157/255.0,green:167/255.0,blue:176/255.0,alpha:1)
    }

    func configView() {
        view.backgroundColor = bgColor
    }
    
    func configInfoTextView() {
        infoTextView.text = "Blue whales are among Earth's longest-lived animals.\n The oldest blue whale found using this method was determined to be around 110 years old.\n Average lifespan is estimated at around 80 to 90 years.Humans have long utilized stranded whales as a food resource, and historically whales were hunted for whale oil and baleen.\n In the early 20th century, as demand increased and technology enabled meat to be frozen at sea, whales began to be taken in larger numbers for human consumption and for specialty products.\n Through the years this agency has acted to moderate whaling, and it instituted a moratorium on commercial whaling in the late 1980s.\n Some whaling still occurs under special permit. Native peoples are also allowed to continue traditional whale hunting that has been a part of their culture."
        infoTextView.font = UIFont(name:"System Italic", size: 20)
        infoTextView.font = UIFont.boldSystemFont(ofSize: 20)
        infoTextView.backgroundColor = bgColor
        infoTextView.isEditable = false
        
        
        
    }
    
    
}
