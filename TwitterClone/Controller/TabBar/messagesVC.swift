//
//  messagesVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class messagesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        navBarSetup()

    }
    
    //MARK: - NavigationBar Setup
    
    
    private func navBarSetup() {
        navigationItem.title = "Messages"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes

        self.navigationController?.navigationBar.tintColor = .white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(dismissSelf))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Gear Settings"), style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }

}
