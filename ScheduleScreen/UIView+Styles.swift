//
//  UIView+Styles.swift
//  ScheduleScreen
//
//  Created by Enotus on 25/04/2018.
//  Copyright © 2018 enotus. All rights reserved.
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
