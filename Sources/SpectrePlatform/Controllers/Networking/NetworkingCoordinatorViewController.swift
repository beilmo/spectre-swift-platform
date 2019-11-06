//
//  NetworkingCoordinatorViewController.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

class NetworkingCoordinatorViewController: UINavigationController {

    lazy var networking = NetworkingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.prefersLargeTitles = true
               
        viewControllers = [EmptyViewController.makeNetworkingVariant()]
    }

}
