//
//  DesiredLeague.swift
//  Swoosh
//
//  Created by Marwa Zabara on 8/15/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import UIKit

class DesiredLeagueVC : UIViewController {
    var CurrentPlayer : Player!
    @IBOutlet weak var BgImg: UIImageView!
    @IBOutlet weak var NextBtn: FramedBtn!
    @IBOutlet weak var MensBtn: FramedBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BgImg.frame=view.frame
        CurrentPlayer = Player()

    }
    
    
    
    @IBAction func NextClicked(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func MensSelected(_ sender: Any) {
        SetDesiredLeague(SelectedLeague: (MensBtn.titleLabel?.text)!)
    }
    
    
    
    @IBAction func WomenSelected(_ sender: Any) {
        SetDesiredLeague(SelectedLeague: "womens")
    }
    

    @IBAction func CoedSelected(_ sender: Any) {
        SetDesiredLeague(SelectedLeague: "coed")
    }
    
    func SetDesiredLeague(SelectedLeague:String){
        CurrentPlayer.DesiredLeague=SelectedLeague
        NextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.Player = CurrentPlayer
            
        }
    }
}
