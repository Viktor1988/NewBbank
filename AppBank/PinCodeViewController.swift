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
    var pinCodeView = UIView(background: .darkGray, masksToBounds: true, cornerRadius: 4, translatesAutoresizingMaskIntoConstraints: false, size: 10)
    var pinCodeStackView = UIStackView()
    var pinCodeArray = [UIView]()
    var buttonArray = [UIButton]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        
        addOnViewObjects()
        setupObjects()
        makeConstraints()
    }
    
    private func addOnViewObjects() {
        view.addSubview(titleLabel)
        view.addSubview(pinCodeStackView)
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(firstStackView)
        mainStackView.addArrangedSubview(secondStackView)
        mainStackView.addArrangedSubview(thirdStackView)
        mainStackView.addArrangedSubview(fouthStackView)
    }
    
    private func setupObjects() {
        setupPinCodeStackView()
        setupMainstackView()
        firstStackView.setupButtonStackViewArray(start: 1, end: 3, stackView: firstStackView, array: pinCodeArray)
        secondStackView.setupButtonStackViewArray(start: 4, end: 6, stackView: secondStackView, array: pinCodeArray)
        thirdStackView.setupButtonStackViewArray(start: 7, end: 9, stackView: thirdStackView, array: pinCodeArray)
        fouthStackView.setupButtonStackViewArray(start: 10, end: 12, stackView: fouthStackView, array: pinCodeArray)
    }
    
    
    
    private  func setupPinCodeStackView() {
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
    
   private func setupMainstackView() {
        mainStackView.axis = .vertical
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.distribution = .equalSpacing
        mainStackView.alignment = .center
        mainStackView.spacing = 10
    }
    
    private func makeConstraints() {
        makeConstraintTitleLabel()
        makeConstraintPinCodeStackView()
        makeConstraintMainStackView()
    }
    
    private func makeConstraintTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    private  func makeConstraintPinCodeStackView() {
        NSLayoutConstraint.activate([
            pinCodeStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            pinCodeStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pinCodeStackView.heightAnchor.constraint(equalToConstant: 16),
            pinCodeStackView.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    private func makeConstraintMainStackView() {
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
