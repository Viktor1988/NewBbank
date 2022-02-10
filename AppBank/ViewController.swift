//
//  ViewController.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 03.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView = UIImageView()
    var phoneNumber = UITextField()
    var errorLabel = UILabel()
    var enterButton = UIButton(type: .system)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        addObjectsOnView()
        setupObjects()
        makeConstrains()
        
    }
    
    func addObjectsOnView() {
        self.view.addSubview(phoneNumber)
        self.view.addSubview(errorLabel)
        self.view.addSubview(enterButton)
    }
    
    func setupObjects() {
        setupPhoneNumber()
        setupErrorLabel()
        setupEnterButton()
    }
    
    func setupPhoneNumber() {
        phoneNumber.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        phoneNumber.borderStyle = .roundedRect
        phoneNumber.textAlignment = .center
        phoneNumber.keyboardType = .numberPad
        phoneNumber.layer.cornerRadius = 10
        phoneNumber.placeholder = "Введите номер телефона"
        phoneNumber.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupErrorLabel() {
        errorLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let font = UIFont.boldSystemFont(ofSize: 20)
        errorLabel.font = font
        errorLabel.textAlignment = .center
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.isHidden = true
    }
    
    func setupEnterButton() {
        enterButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        enterButton.layer.cornerRadius = 10
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.setTitleColor(.black, for: .normal)
        enterButton.setTitle("Отправить", for: .normal)
        enterButton.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
    }
    
    func makeConstrains() {
        makeConstraintPhoneNumber()
        makeConstarintErrorLabel()
        makeConstraintEnterButton()
    }
    
    func makeConstraintPhoneNumber() {
        NSLayoutConstraint.activate([
            phoneNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            phoneNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func makeConstraintEnterButton() {
        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: errorLabel.bottomAnchor, constant: 25),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 150),
            enterButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    func makeConstarintErrorLabel() {
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: phoneNumber.bottomAnchor, constant: 25),
            errorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            errorLabel.widthAnchor.constraint(equalToConstant: 450),
            errorLabel.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    @objc
    private func enterButtonAction() {
        print(#function)
    }

    

}
//8 495 195 82 47

