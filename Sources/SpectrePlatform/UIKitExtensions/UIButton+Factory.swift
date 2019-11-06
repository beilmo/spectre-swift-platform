//
//  UIButton+Factory.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

extension UIButton {
    static func makePrimary() -> UIButton {
        let button = UIButton()
        button.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        button.setTitleColor(.white, for: .normal)
        
        let cornerRadius = CGFloat(8)
        let capInsets = UIEdgeInsets(top: cornerRadius, left: cornerRadius, bottom: cornerRadius, right: cornerRadius)
        let image = UIImage.resizableImage(capInsets: capInsets, cornerRadius: cornerRadius, color: .systemBlue)
        button.setBackgroundImage(image, for: .normal)

        return button
    }
}
