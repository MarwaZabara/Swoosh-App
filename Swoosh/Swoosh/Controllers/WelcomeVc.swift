//
//  ViewController.swift
//  Swoosh
//
//  Created by Marwa Zabara on 8/14/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import UIKit

class WelcomeVc: UIViewController {

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var BgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Logo.frame = CGRect(x: view.frame.size.width/2 - Logo.frame.size.width/2, y: 50, width: Logo.frame.size.width, height: Logo.frame.size.height)
        BgImg.frame=view.frame
        
    }

    @IBAction func UnWindFromDesiredLeagueVC (Segue: UIStoryboardSegue){}
    

}

