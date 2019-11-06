//
//  ProfileLinkable.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

protocol ProfileLinkable {
    func linkProfilePage()
    func navigateToProfilePage()
}

extension UIViewController: ProfileLinkable {
    func linkProfilePage() {
        let image = UIImage(systemName: "person.crop.circle")
        let selector = #selector(navigateToProfilePage)
        let buttonItem = UIBarButtonItem.init(image: image,
                                              style: .plain,
                                              target: self,
                                              action: selector)
        navigationItem.rightBarButtonItem = buttonItem
    }
    
    
    @objc func navigateToProfilePage() {
        
    }
}
