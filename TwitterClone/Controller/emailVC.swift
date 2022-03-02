//
//  emailVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class emailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.08040123433, green: 0.1267725229, blue: 0.1684986353, alpha: 1)
        
        navBarSetup()
        
        view.addSubview(label)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(Next)
        view.addSubview(forgotPassword)
        setUpAutoLayout()
        
    }
    
    //MARK: - Closures
    
    
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "To get started, first enter your phone, email, or @username and password"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = #colorLiteral(red: 0.9067615867, green: 0.9017952681, blue: 0.9061897397, alpha: 1)
        label.numberOfLines = 3
        
        return label
    }()
    
    private let emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.text = ""
        emailTextField.addBottomBorder()
        emailTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Phone, email or username", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return emailTextField
    }()

    private let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.text = ""
        passwordTextField.addBottomBorder()
        passwordTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "Password", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return passwordTextField
    }()
    
    private let Next: UIButton = {
        let Next = UIButton()
        Next.setTitle("Next", for: .normal)
        Next.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        Next.backgroundColor = #colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1)
        Next.layer.cornerRadius = 22
        Next.setTitleColor(.white, for: .normal)
        
        return Next
    }()
    
    private let forgotPassword: UIButton = {
        let forgotPassword = UIButton()
        forgotPassword.setTitle("Forgot password ?", for: .normal)
        forgotPassword.setTitleColor(#colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1), for: .normal)
        forgotPassword.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        return forgotPassword
    }()

    
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - AutoLayout
    
    
    
    private func setUpAutoLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPassword.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        forgotPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        forgotPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        forgotPassword.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        Next.translatesAutoresizingMaskIntoConstraints = false
        Next.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Next.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Next.bottomAnchor.constraint(equalTo: forgotPassword.topAnchor, constant: -20).isActive = true
        Next.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    private func navBarSetup() {
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 30))
        logo.contentMode = .scaleAspectFit
        logo.image = #imageLiteral(resourceName: "twitterBird")
        self.navigationItem.titleView = logo
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dismissSelf))
    }

}

