//
//  RemarksViewController.swift
//  JourneyLog
//
//  Created by Johan Nyman on 2022-02-21.
//

import UIKit


class ViewOnBaseViewController: BaseViewController {
    
    @IBOutlet var labelFlight: UILabel!
    @IBOutlet var tvRemarks: UITextView!
    @IBOutlet var tfTraining: UITextField!
    @IBOutlet var asrSwitch: UISwitch!
    @IBOutlet var safaSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load specific view
        let nibname = "ViewToAddOnBase"; //Get configuration name from appsettings
        guard let content = Bundle.main.loadNibNamed(nibname, owner: self, options: nil)?.first as? UIView else {
            assertionFailure("Could not load view from nib '\(nibname)'.")
            return
        }
        //Set in cell
        load(content: content)

        
        //Copy info from JourneyLogInfo
        setupView()
    }
    
    func setupView() {
        //Set the same look on textview as textfields
        tvRemarks.addSquareBorder()
        labelFlight.text = "ESSA - KFOR"
        tvRemarks.text = ""
        tfTraining.text = ""
        asrSwitch.isOn = false
        safaSwitch.isOn = false
    }
}
