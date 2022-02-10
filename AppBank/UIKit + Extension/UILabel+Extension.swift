//
//  UILabel+Extension.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 10.02.2022.
//

import UIKit
import Foundation

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20(), textAlignment: NSTextAlignment, translatesAutoresizingMaskIntoConstraints: Bool ) {
        self.init()
        
        self.text = text
        self.font = font
        self.textAlignment = textAlignment
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
    }
}
