//
//  ViewController.swift
//  Swift_02
//
//  Created by Pavel iPro on 14.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageView = UIImageView(image: UIImage(named: "logo"))
    
    private var lable: UILabel = {
        let lable = UILabel()
        lable.numberOfLines = 0
        lable.text = "Авторизация"
        lable.textAlignment = .center
        //lable.font = UIFont(name: Arial, size: 24)
        lable.textColor = .red
        return lable
    }()
    
    private var loginField: UITextField = {
        let login = UITextField()
        login.borderStyle = .line
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.black.cgColor
        login.textColor = .blue
        let placeholderText = NSAttributedString(string: "Логин", attributes: [NSAttributedString.Key.foregroundColor:UIColor.gray])
        login.attributedPlaceholder = placeholderText
        return login
    }()
    
    private var passwordField: UITextField = {
        let password = UITextField()
        password.borderStyle = .line
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.black.cgColor
        password.textColor = .blue
        let placeholderText = NSAttributedString(string: "Пароль", attributes: [NSAttributedString.Key.foregroundColor:UIColor.gray])
        password.attributedPlaceholder = placeholderText
        return password
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.brown, for: .highlighted)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        setConstraint()
    }
    
    private func setConstraint(){
        view.addSubview(imageView)
        view.addSubview(lable)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        lable.translatesAutoresizingMaskIntoConstraints = false
        loginField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageView.centerXAnchor.constraint(equalTo:
                view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant:
                view.frame.size.width/2),
            imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/8),
            
            lable.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            lable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            lable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            lable.heightAnchor.constraint(equalToConstant: 100),
            
            loginField.topAnchor.constraint(equalTo: lable.bottomAnchor, constant: 20),
            loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 10),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            
            button.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant:
                                            view.frame.size.width/2),
            button.heightAnchor.constraint(equalToConstant: view.frame.size.height/8)
        ])
    }
    
    @objc func buttonClick(){
        navigationController?.pushViewController(NewViewController(), animated: false)
    }
}

