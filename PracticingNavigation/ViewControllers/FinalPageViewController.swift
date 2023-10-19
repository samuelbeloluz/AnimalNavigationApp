//
//  FinalPageViewController.swift
//  PracticingNavigation
//
//  Created by Samuel Montagnini on 29/09/23.
//

import UIKit

import AVFoundation

class FinalPageViewController: UIViewController {
    
    var player: AVPlayer?
    
    var name:String?
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var titleNavigationItem: UINavigationItem!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var helpButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
        configTitleNavigationItem()
        configNameLabel()
        configTitleLabel()
        configTipLabel()
        configHelpButton()
        videoplayer()
    }
    
    
    
    @IBAction func tappedHelpButton(_ sender: UIButton) {
        
        //Open Website in browser.
        if let url = URL(string: "https://www.wwf.org.br") {
            UIApplication.shared.open(url)
        }
    }
    
    
    func configView() {
        //Making Final Page Backgroundcolor similar as Main backgroundColor,
        let vc: ViewController? = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        let mainbgcolor = vc?.view.backgroundColor ?? UIColor.white
        
        view.backgroundColor = mainbgcolor
    }
    
    func configTitleNavigationItem() {
        titleNavigationItem.title = "Now you can Help!"
        titleNavigationItem.backButtonTitle = "Last Page"
        titleNavigationItem.rightBarButtonItem?.image = UIImage(systemName: "arrowshape.turn.up.left.fill")
        titleNavigationItem.rightBarButtonItem?.target = self
        titleNavigationItem.rightBarButtonItem?.action = #selector(backToRoot)
    }
    
    func configNameLabel() {
        nameLabel.text = "User: \(name ?? "User")"
        nameLabel.font = UIFont(name: "System Italic", size: 8)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 10)
        
    }
    
    func configTitleLabel() {
        titleLabel.text = "WWF Advertise"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
        titleLabel.font = UIFont(name: "System Italic", size: 25)
        
    }
    
    func configTipLabel() {
        tipLabel.text = "* Click on the video to Play/Pause."
        tipLabel.font = UIFont.boldSystemFont(ofSize: 15)
        tipLabel.font = UIFont(name: "System Italic", size: 15)
    }
    
    func configHelpButton() {
        helpButton.titleLabel?.font = UIFont(name: "System Italic", size: 20)
        helpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        helpButton.backgroundColor = UIColor.systemBlue
        helpButton.tintColor = UIColor.white
        helpButton.setTitle("HELP", for: .normal)
        helpButton.setTitle("Opening...", for: .highlighted)
        helpButton.layer.cornerRadius = 15
        helpButton.clipsToBounds = true
    }
    
    func videoplayer() {
        guard let url = Bundle.main.url(forResource: "wwf", withExtension: "mp4") else { return }

                player = AVPlayer(url: url)
                
                let videoView = UIView()
                videoView.frame = CGRect(x: 0, y: 0, width: 340, height: 270) // Ajuste esses valores conforme necessário
                videoView.center = self.view.center
                self.view.addSubview(videoView)
                
                let playerLayer = AVPlayerLayer(player: player)
                playerLayer.frame = videoView.bounds
                videoView.layer.addSublayer(playerLayer)

                let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
                view.addGestureRecognizer(tap)

                player?.pause()
            }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
            if player?.rate == 0 {
                player?.play()
            } else {
                player?.pause()
            }
        }
    
    @objc func backToRoot() {
        self.navigationController?.popToRootViewController(animated: true)
    }

}
