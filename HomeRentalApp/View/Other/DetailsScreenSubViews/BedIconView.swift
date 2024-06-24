//
//  BedIconView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 24/06/2024.
//

import UIKit

class BedIconView: UIView {
    
    let bedIconContainer: UIView = {
        let backgroundView = UIView()
        backgroundView.clipsToBounds = true
        backgroundView.backgroundColor = UIColor(hex: "FFFFFF").withAlphaComponent(0.20)
        backgroundView.contentMode = .center
        backgroundView.tintColor = .white
        backgroundView.layer.cornerRadius = 5
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundView
    }()
    
    let bedIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_bed")?.withRenderingMode(.alwaysTemplate))
        icon.tintColor = .white
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        return icon
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(bedIconContainer)
        translatesAutoresizingMaskIntoConstraints = false
        bedIconContainer.addSubview(bedIocn)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUp() {
        NSLayoutConstraint.activate([
            bedIconContainer.topAnchor.constraint(equalTo: topAnchor),
            bedIconContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            bedIconContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            bedIconContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            //bedd icon contraints//
            bedIocn.topAnchor.constraint(equalTo: bedIconContainer.topAnchor),
            bedIocn.bottomAnchor.constraint(equalTo: bedIconContainer.bottomAnchor),
            bedIocn.trailingAnchor.constraint(equalTo: bedIconContainer.trailingAnchor),
            bedIocn.leadingAnchor.constraint(equalTo: bedIconContainer.leadingAnchor),
        ])
    }

}
