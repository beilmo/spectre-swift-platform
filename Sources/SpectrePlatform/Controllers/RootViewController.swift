//
//  RootViewController.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

/// Default controller managing application's dashboard.
public class RootViewController: UITabBarController, UISplitViewControllerDelegate {

    lazy var schedule: UISplitViewController = {
        let controller = UISplitViewController()
        controller.delegate = self
        let master = SheduleCoordinatorViewController()
        let detail = SheduleCoordinatorViewController()

        detail.topViewController?.navigationItem.leftBarButtonItem = controller.displayModeButtonItem
        detail.topViewController?.navigationItem.leftItemsSupplementBackButton = true
        
        controller.viewControllers = [master, master]
        
        controller.tabBarItem.title = "Schedule"
        controller.tabBarItem.image = UIImage(systemName: "calendar")
        return controller
    }()
    
    lazy var agenda: AgendaCoordinatorViewController = {
        let controller = AgendaCoordinatorViewController()
        controller.tabBarItem.title = "My Agenda"
        controller.tabBarItem.image = UIImage(systemName: "text.badge.plus")
        return controller
    }()
    
    lazy var networking: NetworkingCoordinatorViewController = {
        let controller = NetworkingCoordinatorViewController()
        controller.tabBarItem.title = "Networking"
        controller.tabBarItem.image = UIImage(systemName: "person.3")
        return controller
    }()
    
    lazy var more: MoreCoordinatorViewController = {
        let controller = MoreCoordinatorViewController()
        controller.tabBarItem.title = "More"
        controller.tabBarItem.image = UIImage(systemName: "ellipsis.circle")
        return controller
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        viewControllers = [
            schedule,
            agenda,
            networking,
            more
        ]
    }

    public func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? SessionViewController else { return false }
        if topAsDetailController.detailItem == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }

}
