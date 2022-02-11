//
//  UIStackView+Extension.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 10.02.2022.
//

import UIKit
extension UIStackView {
    
    convenience init(stackView: UIStackView) {
        self.init()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 10
    }
    
    func setupButtonStackViewArray(start: Int, end: Int, stackView: UIStackView, array: [UIView]) {
        var array = array
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        
        if start > 0 && start < 10 {
            for item in start...end {
                let button = UIButton(title: String(item), tintcolor: UIColor.white, background: UIColor.lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40, size: 80)
                array.append(button)
                stackView.addArrangedSubview(button)
            }
        } else {
            for item in start...end {
                switch item {
                case 10:
                    let button = UIButton(title: "Выйти", tintcolor: UIColor.white, background: UIColor.lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40, size: 80)
                    
                    array.append(button)
                    stackView.addArrangedSubview(button)
                case 11:
                    let button = UIButton(title: "0", tintcolor: UIColor.white, background: UIColor.lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40, size: 80)
                    array.append(button)
                    stackView.addArrangedSubview(button)
                case 12:
                    let button = UIButton(title: "Удалить", tintcolor: UIColor.white, background: UIColor.lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40, size: 80)
                    array.append(button)
                    stackView.addArrangedSubview(button)
                default:
                    print(item)
                }
            }
        }
    }
}


