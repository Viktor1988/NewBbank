//
//  InputSmsCode.swift
//  AppBank
//
//  Created by Попов Виктор Алексеевич on 04.02.2022.
//

import UIKit

class InputSmsCode: UIViewController {

    var smsCode = UITextField()
    var enterButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        addObjectsOnView()
        setupObjects()
        makeConstraints()
    }
    
    func addObjectsOnView() {
        self.view.addSubview(smsCode)
        self.view.addSubview(enterButton)
    }
    
    func setupObjects() {
        setupSmsCode()
        setupEnterButton()
    }
    
    func setupSmsCode() {
        smsCode.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        smsCode.borderStyle = .roundedRect
        smsCode.textAlignment = .center
        smsCode.keyboardType = .numberPad
        smsCode.layer.cornerRadius = 10
        smsCode.placeholder = "Введите смс-код"
        smsCode.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupEnterButton() {
        enterButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        enterButton.layer.cornerRadius = 10
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.setTitleColor(.black, for: .normal)
        enterButton.setTitle("Отправить", for: .normal)
        enterButton.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
    }
    
    func makeConstraints() {
        makeConstaintSmsCode()
        makeConstarinEnterButton()
    }
    
    func makeConstaintSmsCode() {
        NSLayoutConstraint.activate([
            smsCode.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            smsCode.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            smsCode.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func makeConstarinEnterButton() {
        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: smsCode.bottomAnchor, constant: 25),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 150),
            enterButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    @objc
    func enterButtonAction() {
        print(#function)
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


// 8 495 195 82 47 
