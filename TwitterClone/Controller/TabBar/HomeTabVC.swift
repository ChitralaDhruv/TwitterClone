//
//  HomeTabVC.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

class HomeTabVC: UITabBarController {

    override func viewDidLoad(){
        super.viewDidLoad()
    
        tabBar.isTranslucent = true
        tabBar.tintColor = .white
        tabBar.barTintColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)

        let home = UINavigationController(rootViewController: homeVC())
        let search = UINavigationController(rootViewController: searchVC())
        let spaces = UINavigationController(rootViewController: spacesVC())
        let notification = UINavigationController(rootViewController: notificationVC())
        let messages = UINavigationController(rootViewController: messagesVC())
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        
        setViewControllers([home,search,spaces,notification,messages], animated: false)
        
        modalPresentationStyle = .fullScreen
        
        guard let items = tabBar.items else {
            return
        }
        
        items[0].image = #imageLiteral(resourceName: "Home")
        items[1].image = #imageLiteral(resourceName: "Search")
        items[2].image = #imageLiteral(resourceName: "Link")
        items[3].image = #imageLiteral(resourceName: "Notification")
        items[4].image = #imageLiteral(resourceName: "Message-1")
    
    }

}
