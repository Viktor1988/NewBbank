//
//  PinCodeViewController.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 04.02.2022.
//

import UIKit

class PinCodeViewController: UIViewController {
    
    var firstStackView = UIStackView()
    var secondStackView = UIStackView()
    var thirdStackView = UIStackView()
    var fouthStackView = UIStackView()
    var mainStackView = UIStackView()
    
    var titleLabel = UILabel(text: "Установите пин код", font: .avenir20(), textAlignment: .center, translatesAutoresizingMaskIntoConstraints: false)
    var pinCodeView = UIView()
    var pinCodeStackView = UIStackView()
    var pinCodeArray = [UIView]()
    var pinCodButton = UIButton()
    var buttonArray = [UIButton]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        
        addOnViewObjects()
        setupObjects()
        makeConstraints()
    }
    
    func addOnViewObjects() {
        view.addSubview(titleLabel)
        view.addSubview(pinCodeStackView)
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(firstStackView)
        mainStackView.addArrangedSubview(secondStackView)
        mainStackView.addArrangedSubview(thirdStackView)
        mainStackView.addArrangedSubview(fouthStackView)
        
    }
    
    func setupObjects() {
        setupTitleLabel()
        setupPinCodeView()
        setupPinCodeStackView()
        setupMainstackView()
        setupButtonStackView(start: 1, end: 3, stackView: firstStackView)
        setupButtonStackView(start: 4, end: 6, stackView: secondStackView)
        setupButtonStackView(start: 7, end: 9, stackView: thirdStackView)
        setupButtonStackView(start: 10, end: 12, stackView: fouthStackView)
    }
    
    func setupTitleLabel() {
        
    }
    
    func setupPinCodeView() {
        pinCodeView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        pinCodeView.layer.masksToBounds = true
        pinCodeView.layer.cornerRadius = pinCodeView.bounds.width / 2
        pinCodeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pinCodeView.widthAnchor.constraint(equalToConstant: 10),
            pinCodeView.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
    
    func setupPinCodeStackView() {
        pinCodeStackView.axis = .horizontal
        pinCodeStackView.translatesAutoresizingMaskIntoConstraints = false
        pinCodeStackView.distribution = .equalSpacing
        pinCodeStackView.alignment = .center
        pinCodeStackView.spacing = 16
        for _ in 0...3 {
            let pinCodeViewNew = UIView()
            NSLayoutConstraint.activate([
                pinCodeViewNew.widthAnchor.constraint(equalToConstant: 16),
                pinCodeViewNew.heightAnchor.constraint(equalToConstant: 16)
            ])
            pinCodeViewNew.layer.cornerRadius = 8
            pinCodeViewNew.backgroundColor = .white
            pinCodeArray.append(pinCodeViewNew)
            pinCodeStackView.addArrangedSubview(pinCodeViewNew)
        }
    }
    
    func setupMainStackView() {
        firstStackView.axis = .horizontal
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        firstStackView.distribution = .equalSpacing
        firstStackView.alignment = .center
        firstStackView.spacing = 10
        
        for item in 1...3 {
            let button = UIButton(title: String(item), tintcolor: .black, background: .lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40)
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: 80),
                button.heightAnchor.constraint(equalToConstant: 80)
            ])
            pinCodeArray.append(button)
            firstStackView.addArrangedSubview(button)
        }
    }
    
    func setupMainstackView() {
        mainStackView.axis = .vertical
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.distribution = .equalSpacing
        mainStackView.alignment = .center
        mainStackView.spacing = 10
    }
    
    func setupButtonStackView(start: Int, end: Int, stackView: UIStackView) {
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        
        if start > 0 && start < 10 {
            for item in start...end {
                let button = UIButton(title: String(item), tintcolor: .black, background: .lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40)
                NSLayoutConstraint.activate([
                    button.widthAnchor.constraint(equalToConstant: 80),
                    button.heightAnchor.constraint(equalToConstant: 80)
                ])
                pinCodeArray.append(button)
                stackView.addArrangedSubview(button)
            }
        } else {
            for item in start...end {
                
                switch item {
                case 10:
                    let button = UIButton(title: "Выйти", tintcolor: .black, background: .lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40)
                    NSLayoutConstraint.activate([
                        button.widthAnchor.constraint(equalToConstant: 80),
                        button.heightAnchor.constraint(equalToConstant: 80)
                    ])
                    
                    pinCodeArray.append(button)
                    stackView.addArrangedSubview(button)
                case 11:
                    let button = UIButton(title: "0", tintcolor: .black, background: .lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40)
                    NSLayoutConstraint.activate([
                        button.widthAnchor.constraint(equalToConstant: 80),
                        button.heightAnchor.constraint(equalToConstant: 80)
                    ])
                    pinCodeArray.append(button)
                    stackView.addArrangedSubview(button)
                case 12:
                    let button = UIButton(title: "Удалить", tintcolor: .black, background: .lightGray, font: .avenir26(), isShadow: true, cornerRadius: 40)
                    NSLayoutConstraint.activate([
                        button.widthAnchor.constraint(equalToConstant: 80),
                        button.heightAnchor.constraint(equalToConstant: 80)
                    ])
                    pinCodeArray.append(button)
                    stackView.addArrangedSubview(button)
                default:
                    print(item)
                }
            }
        }
        
    }
    
    func makeConstraints() {
        makeConstraintTitleLabel()
        makeConstraintPinCodeStackView()
        makeConstraintMainStackView()
    }
    
    func makeConstraintTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func makeConstraintPinCodeStackView() {
        NSLayoutConstraint.activate([
            pinCodeStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            pinCodeStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pinCodeStackView.heightAnchor.constraint(equalToConstant: 16),
            pinCodeStackView.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func makeConstraintMainStackView() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: pinCodeStackView.bottomAnchor, constant: 50),
            mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainStackView.heightAnchor.constraint(equalToConstant: 450),
            mainStackView.widthAnchor.constraint(equalToConstant: 280)
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
