//
//  BathIconView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 24/06/2024.
//

import UIKit

class BathIconView: UIView {
    
    let bathIconContainer: UIView = {
        let backgroundView = UIView()
        backgroundView.clipsToBounds = true
        backgroundView.backgroundColor = UIColor(hex: "FFFFFF").withAlphaComponent(0.20)
        backgroundView.contentMode = .center
        backgroundView.tintColor = .white
        backgroundView.layer.cornerRadius = 5
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundView
    }()
    
    let bathIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_bath")?.withRenderingMode(.alwaysTemplate))
        icon.tintColor = .white
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(bathIconContainer)
        translatesAutoresizingMaskIntoConstraints = false
        bathIconContainer.addSubview(bathIocn)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUp() {
        
        NSLayoutConstraint.activate([
            bathIconContainer.topAnchor.constraint(equalTo: topAnchor),
            bathIconContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            bathIconContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            bathIconContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            //bed icon contraints//
            bathIocn.topAnchor.constraint(equalTo: bathIconContainer.topAnchor),
            bathIocn.bottomAnchor.constraint(equalTo: bathIconContainer.bottomAnchor),
            bathIocn.trailingAnchor.constraint(equalTo: bathIconContainer.trailingAnchor),
            bathIocn.leadingAnchor.constraint(equalTo: bathIconContainer.leadingAnchor),
        ])
    }
    
}
