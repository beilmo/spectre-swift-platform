//
//  AgendaCoordinatorViewController.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

class AgendaCoordinatorViewController: UINavigationController {

    lazy var agenda = AgendaViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.prefersLargeTitles = true
               
        viewControllers = [agenda]
    }
}

