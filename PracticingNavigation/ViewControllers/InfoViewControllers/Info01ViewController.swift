//
//  Info01ViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 30/09/23.
//

import UIKit

class Info01ViewController: UIViewController {

    var bgColor:UIColor?
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configBackgroundColor()
        configView()
        configInfoTextView()
        // Do any additional setup after loading the view.
    }
    
    func configBackgroundColor() {
        //Setting ViewBackground Color and TextView Background Color the same using 'bgColor'.
        bgColor = UIColor(red:112/255.0,green:242/255.0,blue:255/255.0,alpha:1)
    }
    
    func configView() {
        view.backgroundColor = bgColor
    }
    
    func configInfoTextView() {
        infoTextView.text = "Polar bears are solitary and overwhelmingly carnivorous, feeding especially on the ringed seal but also on the bearded seal and other pinnipeds.\n The bear stalks seals resting on the ice, ambushes them near breathing holes, and digs young seals from snow shelters where they are born.\n Polar bears prefer ice that is subject to periodic fracturing by wind and sea currents, because these fractures offer seals access to both air and water. As their prey is aquatic, polar bears are excellent swimmers, and they are even known to kill beluga whales.\n Polar bears are opportunistic as well as predatory: they will consume dead fish and carcasses of stranded whales and eat garbage near human settlements.\n Humans probably cause most polar bear deaths, by hunting and by destroying problem animals near settlements. \n An estimated 22,000 to 31,000 polar bears were living in the wild by 2020. "
        infoTextView.font = UIFont(name: "System Italic", size: 20)
        infoTextView.font = UIFont.boldSystemFont(ofSize: 20)
        infoTextView.isEditable = false
        infoTextView.backgroundColor = bgColor
    }
    
}
