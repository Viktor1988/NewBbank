//
//  UIView+Extension.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 10.02.2022.
//

import UIKit

extension UIView {
    
    convenience init(background: UIColor,
                     masksToBounds: Bool,
                     cornerRadius: Int,
                     translatesAutoresizingMaskIntoConstraints : Bool,
                     size: CGFloat) {
        self.init()
        self.backgroundColor = background
        self.layer.masksToBounds = masksToBounds
        self.layer.cornerRadius = size / 2
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: size),
            self.heightAnchor.constraint(equalToConstant: size)
        ])
    }
    
   
}

