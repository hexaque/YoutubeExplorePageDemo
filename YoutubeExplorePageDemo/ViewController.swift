//
//  ViewController.swift
//  YoutubeExplorePageDemo
//
//  Created by Que on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.selectedIndex = 1
        moreButton.layer.cornerRadius = 15
        moreButton.layer.borderColor = UIColor.white.cgColor
          moreButton.layer.borderWidth = 0.4
        
        
        
        
    }
    
    
}
