//
//  ScheduleViewController.swift
//  HowToWrite
//
//  Created by Igor Volkov on 15/08/2017.
//  Copyright © 2017 supp-f. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    //MARK: Properties
//    var pickerIsOn = false
    
    //MARK: Outlets
    @IBOutlet weak var propertiesView: UIView!
    @IBOutlet weak var propertiesStackView: UIStackView!
    @IBOutlet weak var daysView: UIView!
    @IBOutlet weak var datePickerContainer: UIView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switcher: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Methods
    private func toggleSchedule() {
        UIView.animate(withDuration: 0.3) {
            self.datePicker.alpha = self.switcher.isOn ? 1.0 : 0.0
        }
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.5, options: [], animations: {
            self.datePickerContainer.isHidden = !self.switcher.isOn
            for i in 1..<self.propertiesStackView.arrangedSubviews.count {
                self.propertiesStackView.arrangedSubviews[i].alpha = self.switcher.isOn ? 1.0 : 0.3
            }
        }, completion: nil)
    }
    
    func setupViewController() {
        propertiesView.darkGreyRounded()
        switcher.onTintColor = UIColor.htwMainActive
        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        toggleSchedule()
    }
    
    //MARK: Actions
    @IBAction func enableSchedule(_ sender: Any) {
        toggleSchedule()
    }
    
    @IBAction func switchDay(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }

}
