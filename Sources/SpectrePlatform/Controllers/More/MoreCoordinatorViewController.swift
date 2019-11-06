//
//  MoreCoordinatorViewController.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

class MoreCoordinatorViewController: UINavigationController {

   let rootViewController = MoreTableTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.prefersLargeTitles = true
        
        viewControllers = [rootViewController]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
