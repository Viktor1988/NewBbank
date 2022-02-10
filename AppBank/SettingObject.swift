//
//  SettingObject.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 10.02.2022.
//

import UIKit
class Label: UILabel {
    
    var titleLabel : UILabel {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let font = UIFont.systemFont(ofSize: 20)
        label.font = font
        label.text = "Установите пин-код"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
}
