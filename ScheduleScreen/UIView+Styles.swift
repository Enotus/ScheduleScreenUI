//
//  UIView+Styles.swift
//  HowToWrite
//
//  Created by Igor Volkov on 15/08/2017.
//  Copyright © 2017 supp-f. All rights reserved.
//

import UIKit

extension UIView {
    func darkGreyRounded() {
        self.backgroundColor = UIColor.htwDarkBlueGrey
        self.layer.cornerRadius = 16
    }
    
    func blueCircled() {
        layer.cornerRadius = bounds.width / 2
        backgroundColor = UIColor.htwMainActive
    }
}
