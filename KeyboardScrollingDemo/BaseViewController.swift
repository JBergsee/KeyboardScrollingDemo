//
//  BaseViewController.swift
//  KeyboardScrollingDemo
//
//  Created by Johan Nyman on 2022-03-11.
//

import UIKit

class BaseViewController: UITableViewController {
    
    @IBOutlet var contentCell:UITableViewCell!
    
    public func load(content:UIView) {
        contentCell.contentView.addSubview(content)
        
#warning("fix sizing and constraints for contentview here?")
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
}
