//
//  homeVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class homeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        view.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        view.addSubview(tableView)
        setUpAutoLayout()
        
        navBarSetup()

    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    //MARK: - TableView
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.rowHeight = UITableView.automaticDimension
        table.estimatedRowHeight = 200
        table.register(twitterPostCell.self, forCellReuseIdentifier: "twitterPostCell")
        table.separatorColor = #colorLiteral(red: 0.2196849585, green: 0.2600505054, blue: 0.3020506501, alpha: 1)
        table.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        
        
        return table
    }()
    
    //MARK: - NavigationBar Setup
    
    
    private func navBarSetup() {
        navigationItem.title = "Home"
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        let logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
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
    
    
    //MARK: - Protocol Functions
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "twitterPostCell") as! twitterPostCell
        cell.selectionStyle = .none
        
        
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    //MARK: - AutoLayout
    
    
    
    private func setUpAutoLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    
}
