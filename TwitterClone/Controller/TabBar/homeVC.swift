//
//  homeVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class homeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        
        navBarSetup()

    }
    
    //MARK: - NavigationBar Setup
    
    
    private func navBarSetup() {
        navigationItem.title = "Home"
        
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 30))
        logo.contentMode = .scaleAspectFit
        logo.image = #imageLiteral(resourceName: "twitterBird")
        self.navigationItem.titleView = logo
        
        self.navigationController?.navigationBar.tintColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(dismissSelf))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Customize"), style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }

    
}