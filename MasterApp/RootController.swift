//
//  ViewController.swift
//  MasterApp
//
//  Created by Marcin Karski on 19/03/2017.
//  Copyright © 2017 Marcin Karski. All rights reserved.
//

import UIKit

class RootController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = .black
        tabBar.isTranslucent = false
        
        let gridController = GridController()
        gridController.tabBarItem.image = UIImage(named: "heart")
        
        let mapController = MapController()
        mapController.tabBarItem.image = UIImage(named: "pin")
        
        //        let thirdController = UINavigationController(rootViewController: MustSeeController())
        //        thirdController.tabBarItem.image = UIImage(named: "profile")
        
        let profileController = ProfileController()
        profileController.tabBarItem.image = UIImage(named: "profile")
        
        viewControllers = [gridController, mapController, profileController]
        
    }
}
