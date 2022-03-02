//
//  createAccountVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class createAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.08040123433, green: 0.1267725229, blue: 0.1684986353, alpha: 1)

        navBarSetup()
        
        view.addSubview(label)
        view.addSubview(Name)
        view.addSubview(PhoneNumber)
        view.addSubview(DOB)
        view.addSubview(Next)
        
        setUpAutoLayout()
    }
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Create your account"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = #colorLiteral(red: 0.9067615867, green: 0.9017952681, blue: 0.9061897397, alpha: 1)
        label.numberOfLines = 1
        
        return label
    }()
    
    private let Name: UITextField = {
        let Name = UITextField()
        Name.text = ""
        Name.addBottomBorder()
        Name.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        Name.attributedPlaceholder = NSAttributedString(
            string: "Name", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return Name
    }()

    private let PhoneNumber: UITextField = {
        let PhoneNumber = UITextField()
        PhoneNumber.text = ""
        PhoneNumber.addBottomBorder()
        PhoneNumber.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        PhoneNumber.attributedPlaceholder = NSAttributedString(
            string: "Phone number or email address", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return PhoneNumber
    }()
    
    private let DOB: UITextField = {
        let DOB = UITextField()
        DOB.text = ""
        DOB.addBottomBorder()
        DOB.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        DOB.attributedPlaceholder = NSAttributedString(
            string: "Date of birth", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.4431441426, green: 0.5240055323, blue: 0.5825019479, alpha: 1)]
        )

        return DOB
    }()
    
    private let Next: UIButton = {
        let Next = UIButton()
        Next.setTitle("Next", for: .normal)
        Next.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        Next.backgroundColor = #colorLiteral(red: 0.09729228169, green: 0.5134958029, blue: 0.7864598632, alpha: 1)
        Next.layer.cornerRadius = 12.5
        Next.setTitleColor(.white, for: .normal)
        Next.addTarget(self, action: #selector(didTapNext), for: .touchUpInside)
        
        return Next
    }()


    
    private func navBarSetup() {
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 30))
        logo.contentMode = .scaleAspectFit
        logo.image = #imageLiteral(resourceName: "twitterBird")
        self.navigationItem.titleView = logo
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - AutoLayout
    
    private func setUpAutoLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        Name.translatesAutoresizingMaskIntoConstraints = false
        Name.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35).isActive = true
        Name.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Name.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Name.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        PhoneNumber.translatesAutoresizingMaskIntoConstraints = false
        PhoneNumber.topAnchor.constraint(equalTo: Name.bottomAnchor, constant: 10).isActive = true
        PhoneNumber.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        PhoneNumber.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        PhoneNumber.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        DOB.translatesAutoresizingMaskIntoConstraints = false
        DOB.topAnchor.constraint(equalTo: PhoneNumber.bottomAnchor, constant: 10).isActive = true
        DOB.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        DOB.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        DOB.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        Next.translatesAutoresizingMaskIntoConstraints = false
        Next.widthAnchor.constraint(equalToConstant: 70).isActive = true
        Next.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Next.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        Next.heightAnchor.constraint(equalToConstant: 25).isActive = true

    }
    
    
    //MARK: - TapFunctions
    
    
    
    @objc private func didTapNext(){
        let rootVC = HomeTabVC()
        rootVC.modalPresentationStyle = .fullScreen
        
        present(rootVC, animated: true)
        
    }

}
