//
//  InfoViewController.swift
//  
//
//  Created by Johan Nyman on 2022-03-06.
//

import UIKit

class InfoViewController: KeyboardScrollingViewController {

    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
    
        //Load specific view
        let nibname = "RemarksView"; //Get configuration name from appsettings
        guard let contentView = Bundle.main.loadNibNamed(nibname, owner: self, options: nil)?.first as? UIView else {
            assertionFailure("Could not load view from nib '\(nibname)'.")
            return
        }
    
        contentView.frame = self.scrollView.bounds
        contentView.layoutIfNeeded()
        self.scrollView.addSubview(contentView)
        self.scrollView.contentSize = contentView.frame.size
    }
}
