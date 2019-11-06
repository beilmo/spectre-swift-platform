//
//  UIViewController+Containment.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

extension UIViewController {
    public func display(contentController controller: UIViewController) {
        addChild(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMove(toParent: self)
    }

    public func hide(contentController controller: UIViewController) {
        controller.willMove(toParent: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParent()
    }
}
