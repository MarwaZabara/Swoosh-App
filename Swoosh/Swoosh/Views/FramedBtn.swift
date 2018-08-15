//
//  FramedBtn.swift
//  Swoosh
//
//  Created by Marwa Zabara on 8/14/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import UIKit

class FramedBtn: UIButton {

    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 15    }

}
