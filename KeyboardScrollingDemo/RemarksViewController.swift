//
//  RemarksViewController.swift
//  JourneyLog
//
//  Created by Johan Nyman on 2022-02-21.
//

import UIKit


class RemarksViewController: KeyboardScrollingViewController {
    
    @IBOutlet var labelFlight: UILabel!
    @IBOutlet var tvRemarks: UITextView!
    @IBOutlet var tfTraining: UITextField!
    @IBOutlet var asrSwitch: UISwitch!
    @IBOutlet var safaSwitch: UISwitch!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set the same look on textview as textfields
        tvRemarks.addSquareBorder()
        
        //Copy info from JourneyLogInfo
        setupView()
    }
    
    func setupView() {
        labelFlight.text = "ESSA - KFOR"
        tvRemarks.text = ""
        tfTraining.text = ""
        asrSwitch.isOn = false
        safaSwitch.isOn = false
    }
}

public extension UITextView {
    func addSquareBorder() {
        let borderColor : UIColor = UIColor.label
        self.layer.borderWidth = 1.0
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = 0.0
    }

}
