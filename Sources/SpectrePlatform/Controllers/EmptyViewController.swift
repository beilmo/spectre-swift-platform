//
//  EmptyViewController.swift
//  Spectre
//
//  Created by Dorin-Bogdan Danciu on 26/10/2019.
//  Copyright © 2019 Beilmo. All rights reserved.
//

import UIKit

class EmptyViewController: UIViewController {
 
    private let mainStackView = UIStackView()
    private let topStackView = UIStackView()
    private let bottomStackView = UIStackView()
    let titleLabel = UILabel.makeForPlaceholderTitle()
    let captionLabel1 = UILabel.makeForPlaceholderCaption()
    let captionLabel2 = UILabel.makeForPlaceholderCaption()
    let actionButton1 = UIButton.makePrimary()
    let actionButton2 = UIButton.makePrimary()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topStackView.axis = .vertical
        topStackView.spacing = 28
        topStackView.addArrangedSubview(titleLabel)
        topStackView.addArrangedSubview(captionLabel1)
        topStackView.addArrangedSubview(captionLabel2)
        
        bottomStackView.axis = .vertical
        bottomStackView.spacing = 8
        bottomStackView.addArrangedSubview(actionButton1)
        bottomStackView.addArrangedSubview(actionButton2)
        
        mainStackView.axis = .vertical
        mainStackView.spacing = 90
        mainStackView.addArrangedSubview(topStackView)
        mainStackView.addArrangedSubview(bottomStackView)
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainStackView.widthAnchor.constraint(equalToConstant: 330),
            
            
            actionButton1.heightAnchor.constraint(equalToConstant: 50),
            actionButton2.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    class func makeNetworkingVariant() -> EmptyViewController {
        let controller = EmptyViewController()
        controller.titleLabel.text = "Login to use this feature"
        controller.captionLabel1.text = "Log in to create your personalized agenda, connect with attendees and more."
        controller.actionButton1.setTitle("Login", for: .normal)
        controller.actionButton2.isHidden = true
        return controller
    }
}
