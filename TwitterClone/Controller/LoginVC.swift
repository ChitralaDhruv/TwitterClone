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
    
    
    //MARK: - Closures
    

    
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
        continueWithGoogle.setTitle("  Continue with Google", for: .normal)
        continueWithGoogle.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        continueWithGoogle.backgroundColor = #colorLiteral(red: 0.8322516084, green: 0.8272855282, blue: 0.8316798806, alpha: 1)
        continueWithGoogle.layer.cornerRadius = 22.5
        continueWithGoogle.setTitleColor(.black, for: .normal)
        
        let image = UIImage(named: "google")!
        let newImage = image.resize(withSize: CGSize(width: 38, height: 38), contentMode: .contentAspectFill)
        
        continueWithGoogle.setImage(newImage, for: .normal)

        
        
        return continueWithGoogle
    }()
    
    private let continueWithApple: UIButton = {
        let continueWithApple = UIButton()
        continueWithApple.setTitle("  Continue with Apple", for: .normal)
        continueWithApple.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        continueWithApple.backgroundColor = #colorLiteral(red: 0.8322516084, green: 0.8272855282, blue: 0.8316798806, alpha: 1)
        continueWithApple.layer.cornerRadius = 22.5
        continueWithApple.setTitleColor(.black, for: .normal)
        let image = UIImage(named: "apple")!
        let newImage = image.resize(withSize: CGSize(width: 24, height: 24), contentMode: .contentAspectFill)
        
        continueWithApple.setImage(newImage, for: .normal)
        
        
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
        createAccount.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        
        return createAccount
    }()
    
    private let agreementLabel: UILabel = {
        let agreementLabel = UILabel()
        agreementLabel.text = "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use."
        agreementLabel.numberOfLines = 2
        agreementLabel.textColor = #colorLiteral(red: 0.5238783956, green: 0.5943279862, blue: 0.6359843612, alpha: 1)
        agreementLabel.font = UIFont.boldSystemFont(ofSize: 12)
        
        return agreementLabel
    }()
    
    private let LogInLabel: UILabel = {
        let LogInLabel = UILabel()
        LogInLabel.text = "Have an account already?"
        LogInLabel.numberOfLines = 1
        LogInLabel.textColor = #colorLiteral(red: 0.5238783956, green: 0.5943279862, blue: 0.6359843612, alpha: 1)
        LogInLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        return LogInLabel
    }()
    
    private let LogIn: UIButton = {
        let LogIn = UIButton()
        LogIn.setTitle("Log in", for: .normal)
        LogIn.setTitleColor(#colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1), for: .normal)
        LogIn.addTarget(self, action: #selector(didTapLogIn), for: .touchUpInside)
        
        return LogIn
    }()
    
    private let bird: UIImageView = {
        let bird = UIImageView(image: #imageLiteral(resourceName: "twitterBird"))
        
        return bird
    }()
    
    //MARK: - AutoLayout
    
    
    private func setUpAutoLayout() {
        bird.translatesAutoresizingMaskIntoConstraints = false
        bird.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        bird.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bird.heightAnchor.constraint(equalToConstant: 45).isActive = true
        bird.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.topAnchor.constraint(equalTo: bird.bottomAnchor, constant: 70).isActive = true
        label.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        continueWithGoogle.translatesAutoresizingMaskIntoConstraints = false
        continueWithGoogle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        continueWithGoogle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        continueWithGoogle.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 75).isActive = true
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
        agreementLabel.topAnchor.constraint(equalTo: createAccount.bottomAnchor, constant: 18).isActive = true
        agreementLabel.heightAnchor.constraint(equalToConstant: 29).isActive = true
        
        LogInLabel.translatesAutoresizingMaskIntoConstraints = false
        LogInLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        LogInLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        LogInLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        LogIn.translatesAutoresizingMaskIntoConstraints = false
        LogIn.leftAnchor.constraint(equalTo: LogInLabel.rightAnchor, constant: 5).isActive = true
        LogIn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        LogIn.heightAnchor.constraint(equalToConstant: 15).isActive = true
    
    }
    
    //MARK: - TapFunctions
    
    
    
    @objc private func didTapLogIn(){
        let rootVC = emailVC()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
        
    }
    
    @objc private func didTapCreateAccount(){
        let rootVC = createAccountVC()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
        
    }
}
