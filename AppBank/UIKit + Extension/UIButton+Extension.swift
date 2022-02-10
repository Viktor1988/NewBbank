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
         cornerRadius: CGFloat = 40) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(tintColor, for: .normal)
        self.backgroundColor = background
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.lightGray.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width: 0, height: 9)
        }
    }
}
