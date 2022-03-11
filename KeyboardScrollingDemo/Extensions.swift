//
//  Extensions.swift
//  KeyboardScrollingDemo
//
//  Created by Johan Nyman on 2022-03-11.
//

import Foundation
import UIKit


public extension UITextView {
    func addSquareBorder() {
        let borderColor : UIColor = UIColor.label
        self.layer.borderWidth = 1.0
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = 0.0
    }

}
