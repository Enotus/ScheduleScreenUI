//
//  ScheduleViewController.swift
//  ScheduleScreen
//
//  Created by Enotus on 25/04/2018.
//  Copyright © 2018 enotus. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var propertiesView: UIView!
    @IBOutlet weak var propertiesStackView: UIStackView!
    @IBOutlet weak var daysView: UIView!
    @IBOutlet weak var datePickerContainer: UIView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switcher: UISwitch!
    @IBOutlet weak var datePickerLabel: UILabel!
    let dateFormatter = DateFormatter()
    var dateString = "08:48 AM"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        
        dateString = dateFormatter.string(from: datePicker.date)
        datePickerLabel.text = "Alert at \(dateString)"
        
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
        
        daysView.isUserInteractionEnabled = switcher.isOn
    }
    
    func setupViewController() {
        propertiesView.darkGreyRounded()
        switcher.onTintColor = UIColor.htwMainActive
        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        toggleSchedule()
    }
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        dateString = dateFormatter.string(from: sender.date)
        datePickerLabel.text = "Alert at \(dateString)"
    }
    
    //MARK: Actions
    @IBAction func enableSchedule(_ sender: Any) {
        toggleSchedule()
    }
    
    @IBAction func switchDay(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
