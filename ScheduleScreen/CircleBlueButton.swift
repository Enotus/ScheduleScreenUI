//
//  CircleBlueButton.swift
//  ScheduleScreen
//
//  Created by Enotus on 25/04/2018.
//  Copyright © 2018 enotus. All rights reserved.
//

import UIKit

//@IBDesignable
class CircleBlueButton: UIButton {
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                UIView.animate(withDuration: 0.05, delay: 0, options: .curveEaseIn, animations: {
                    self.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
                    self.backgroundColor = UIColor.white
                }, completion: { finished in
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                        self.transform = CGAffineTransform.identity
                        self.backgroundColor = UIColor.htwMainActive
                    }, completion: nil)
                })
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.backgroundColor = UIColor.htwMainActiveDisabled
                }
            }
        }
    }
    
    private func setupStyle() {
        blueCircled()
        setTitleColor(UIColor.htwDarkBlueGrey, for: .normal)
        isSelected = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupStyle()
    }

}
