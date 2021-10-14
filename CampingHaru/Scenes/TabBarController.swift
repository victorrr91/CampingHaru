//
//  TabBarController.swift
//  CampingHaru
//
//  Created by Victor Lee on 2021/10/14.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var campingListViewController: UIViewController = {
        let viewController = CampingListViewController()
        let tabBarItem = UITabBarItem(
            title: "캠핑리스트",
            image: UIImage(systemName: "list.bullet.rectangle"),
            tag: 0
        )
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    private lazy var camlendarViewController: UIViewController = {
        let viewController = CamlendarViewController()
        let tabBarItem = UITabBarItem(
            title: "캠린더",
            image: UIImage(systemName: "calendar.circle"),
            tag: 1
        )
        viewController.tabBarItem = tabBarItem
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [campingListViewController, camlendarViewController]
        
    }
}
