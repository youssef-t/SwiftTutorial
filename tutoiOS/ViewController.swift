//
//  ViewController.swift
//  tutoiOS
//
//  Created by Youssef Taleb on 16/11/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var story: UIButton!
    
    @IBOutlet var others: [UIButton]!
    
    //04 - Actions
    @IBAction func clickStory(_ sender: UIButton) {
        if story.backgroundColor == UIColor.link {
            story.backgroundColor = UIColor.gray
        }
        else {
            story.backgroundColor = UIColor.link
        }
    }
    
    @IBAction func othersClicked(_ sender: UIButton) {
        profile.alpha  = CGFloat(sender.tag)
    }
    
    //05- Gestures
    @objc func tapGesture(){
        if profile.layer.cornerRadius == 0 {
            profile.layer.cornerRadius = 75
            print("In tapGesture")
        }
        else {
            profile.layer.cornerRadius = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        cover.addGestureRecognizer(tap)
        cover.isUserInteractionEnabled = true
        
        
    }


}

