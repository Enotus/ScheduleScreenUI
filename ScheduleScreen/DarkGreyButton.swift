//
//  darkGreyButton.swift
//  HowToWrite
//
//  Created by Igor Volkov on 15/08/2017.
//  Copyright © 2017 supp-f. All rights reserved.
//

import UIKit

//@IBDesignable
class DarkGreyButton: UIButton {
    
    let scaleFactor:CGFloat = 0.99
    
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.alpha = self.isHighlighted ? 0.8 : 1.0
                self.transform = self.isHighlighted ? CGAffineTransform(scaleX: self.scaleFactor, y: self.scaleFactor) : CGAffineTransform.identity
            }, completion: nil)
        }
    }
    
    private func setupStyle() {
        darkGreyRounded()
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
