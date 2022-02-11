//
//  UIButton+Extension.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 10.02.2022.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
         tintcolor: UIColor,
         background: UIColor,
         font: UIFont? = .avenir20(),
         isShadow: Bool = true,
         cornerRadius: CGFloat = 40,
         size: CGFloat) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(tintcolor, for: .normal)
        self.backgroundColor = background
        self.layer.cornerRadius = cornerRadius
        
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: size),
            self.heightAnchor.constraint(equalToConstant: size)
        ])

        
        if isShadow {
            self.layer.shadowColor = UIColor.lightGray.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width: 0, height: 9)
        }
    }
    
//    func enterPinCode(index: Int, array: [UIView]) {
//        array[index].backgroundColor = .green
//        
//    }
}



