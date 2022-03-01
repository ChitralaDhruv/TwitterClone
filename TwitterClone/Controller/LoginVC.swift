//
//  LoginVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 27/02/22.
//

import UIKit
import Foundation

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.08169195801, green: 0.1227247044, blue: 0.1687235832, alpha: 1)
        view.addSubview(bird)
        view.addSubview(label)
        view.addSubview(continueWithGoogle)
        view.addSubview(continueWithApple)
        view.addSubview(dashLabel)
        view.addSubview(createAccount)
        view.addSubview(agreementLabel)
        view.addSubview(LogInLabel)
        view.addSubview(LogIn)
        
        setUpAutoLayout()
    }
    
    private let emailTextField: UITextField = {
        let emailTextField = UITextField(frame: CGRect(x: 30, y: 400, width: 300, height: 30))
        emailTextField.text = ""
        emailTextField.placeholder = "   Username"
        emailTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        emailTextField.layer.cornerRadius = 8
        
        return emailTextField
    }()
    
    private let passwordTextField: UITextField = {
        let passwordTextField = UITextField(frame: CGRect(x: 30, y: 440, width: 300, height: 30))
        passwordTextField.text = ""
        passwordTextField.placeholder = "   Password"
        passwordTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        passwordTextField.layer.cornerRadius = 8
        
        
        return passwordTextField
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "See what's happening in the world right now."
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.numberOfLines = 4
        label.textColor = #colorLiteral(red: 0.9067615867, green: 0.9017952681, blue: 0.9061897397, alpha: 1)
        
        return label
    }()
    
    private let continueWithGoogle: UIButton = {
        let continueWithGoogle = UIButton()
        continueWithGoogle.setTitle("Continue with Google", for: .normal)
        continueWithGoogle.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        continueWithGoogle.backgroundColor = #colorLiteral(red: 0.8322516084, green: 0.8272855282, blue: 0.8316798806, alpha: 1)
        continueWithGoogle.layer.cornerRadius = 22.5
        continueWithGoogle.setTitleColor(.black, for: .normal)
        
        
        return continueWithGoogle
    }()
    
    private let continueWithApple: UIButton = {
        let continueWithApple = UIButton()
        continueWithApple.setTitle("Continue with Apple", for: .normal)
        continueWithApple.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        continueWithApple.backgroundColor = #colorLiteral(red: 0.8322516084, green: 0.8272855282, blue: 0.8316798806, alpha: 1)
        continueWithApple.layer.cornerRadius = 22.5
        continueWithApple.setTitleColor(.black, for: .normal)
        
        
        return continueWithApple
    }()
    
    private let dashLabel: UILabel = {
        let dashLabel = UILabel()
        dashLabel.text = "-------------------- Or --------------------"
        dashLabel.textColor = #colorLiteral(red: 0.9067615867, green: 0.9017952681, blue: 0.9061897397, alpha: 1)

        
        return dashLabel
    }()
    
    private let createAccount: UIButton = {
        let createAccount = UIButton()
        createAccount.setTitle("Create account", for: .normal)
        createAccount.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        createAccount.backgroundColor = #colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1)
        createAccount.layer.cornerRadius = 22.5
        createAccount.setTitleColor(.white, for: .normal)
        
        
        return createAccount
    }()
    
    private let agreementLabel: UILabel = {
        let agreementLabel = UILabel()
        agreementLabel.text = "By signing up, you agree to our Terms , Privacy Policy, and Cookie Use."
        agreementLabel.numberOfLines = 2
        agreementLabel.textColor = #colorLiteral(red: 0.5238783956, green: 0.5943279862, blue: 0.6359843612, alpha: 1)
        agreementLabel.font = UIFont.boldSystemFont(ofSize: 12)
        
        return agreementLabel
    }()
    
    private let LogInLabel: UILabel = {
        let LogInLabel = UILabel(frame: CGRect(x: 30, y: 100, width: 300, height: 200))
        LogInLabel.text = "Have an account already?"
        LogInLabel.numberOfLines = 1
        LogInLabel.textColor = #colorLiteral(red: 0.5238783956, green: 0.5943279862, blue: 0.6359843612, alpha: 1)
        LogInLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        return LogInLabel
    }()
    
    private let LogIn: UIButton = {
        let LogIn = UIButton(frame: CGRect(x: 30, y: 500, width: 80, height: 20))
        LogIn.setTitle("Login", for: .normal)
        LogIn.setTitleColor(#colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1), for: .normal)
        
        return LogIn
    }()
    
    private let bird: UIImageView = {
        let bird = UIImageView(image: #imageLiteral(resourceName: "twitterBird"))
        
        return bird
    }()
    
    private func setUpAutoLayout() {
        bird.translatesAutoresizingMaskIntoConstraints = false
        bird.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        bird.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bird.heightAnchor.constraint(equalToConstant: 40).isActive = true
        bird.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.topAnchor.constraint(equalTo: bird.bottomAnchor, constant: 120).isActive = true
        label.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        continueWithGoogle.translatesAutoresizingMaskIntoConstraints = false
        continueWithGoogle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        continueWithGoogle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        continueWithGoogle.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100).isActive = true
        continueWithGoogle.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        continueWithApple.translatesAutoresizingMaskIntoConstraints = false
        continueWithApple.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        continueWithApple.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        continueWithApple.topAnchor.constraint(equalTo: continueWithGoogle.bottomAnchor, constant: 10).isActive = true
        continueWithApple.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        dashLabel.translatesAutoresizingMaskIntoConstraints = false
        dashLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        dashLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        dashLabel.topAnchor.constraint(equalTo: continueWithApple.bottomAnchor, constant: 5).isActive = true
        dashLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        createAccount.translatesAutoresizingMaskIntoConstraints = false
        createAccount.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        createAccount.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        createAccount.topAnchor.constraint(equalTo: dashLabel.bottomAnchor, constant: 5).isActive = true
        createAccount.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        agreementLabel.translatesAutoresizingMaskIntoConstraints = false
        agreementLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        agreementLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        agreementLabel.topAnchor.constraint(equalTo: createAccount.bottomAnchor, constant: 22).isActive = true
        agreementLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        LogInLabel.translatesAutoresizingMaskIntoConstraints = false
        LogInLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        LogInLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70).isActive = true
        LogInLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        LogIn.translatesAutoresizingMaskIntoConstraints = false
        LogIn.leftAnchor.constraint(equalTo: LogInLabel.rightAnchor, constant: 5).isActive = true
        LogIn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70).isActive = true
        LogIn.heightAnchor.constraint(equalToConstant: 15).isActive = true
    
    }
}