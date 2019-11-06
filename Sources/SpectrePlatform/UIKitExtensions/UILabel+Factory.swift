//
//  UILabel+Factory.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 27/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

extension UILabel {
    static func makeForPlaceholderTitle() -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .preferredFont(forTextStyle: .title1, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.75
        return label
    }
    
    static func makeForPlaceholderCaption() -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .preferredFont(forTextStyle: .body)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.75
        return label
    }
}
