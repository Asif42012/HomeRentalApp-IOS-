//
//  CoverImageContentView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 24/06/2024.
//

import UIKit

class CoverImageContentView: UIView {
    
    var bathIconContainer = BathIconView()
    var bedIconContainer = BedIconView()
    
    let homeImageView: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.contentMode = .scaleToFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = UIColor(hex: "000000").withAlphaComponent(0.24)
        button.setImage(UIImage(named: "Ic_left_arrow"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bookMarkButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = UIColor(hex: "000000").withAlphaComponent(0.24)
        button.setImage(UIImage(named: "Ic_bookmark"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let homeNameLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.semiBold20
        label.textColor = UIColor(hex: "FFFFFF")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let homeSubNameLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.regularRaleway12
        label.textColor = UIColor(hex: "D4D4D4")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let totalBedRoomsContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    let bedRoomLabel: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "D4D4D4")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    
    
    let totalBathRoomsContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    let bathRoomLabel: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "D4D4D4")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    let imageShadow: ShadowGradient = {
           let color1 = UIColor(hex: "#0D0D0D").withAlphaComponent(0)
           let color2 = UIColor(hex: "#000000").withAlphaComponent(0.70)
           let imgView = ShadowGradient(
           startColor: color1, endColor: color2,
           startPoint: CGPoint(x: 0.5, y: 0.5),
           endPoint: CGPoint(x: 0.5, y: 0.7)
           )
           imgView.layer.cornerRadius = 20
           imgView.clipsToBounds = true
           imgView.translatesAutoresizingMaskIntoConstraints = false
           return imgView
       }()
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        imageShadow.addSubview(homeImageView)
        addSubviews(imageShadow, backButton, bookMarkButton, totalBedRoomsContainer, totalBathRoomsContainer, homeSubNameLabel, homeNameLabel)
        totalBedRoomsContainer.addSubviews(bedIconContainer, bedRoomLabel)
        totalBathRoomsContainer.addSubviews(bathIconContainer, bathRoomLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp () {
        NSLayoutConstraint.activate([
            //Shadow Image constraints//
            imageShadow.topAnchor.constraint(equalTo: topAnchor),
            imageShadow.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageShadow.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageShadow.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageShadow.widthAnchor.constraint(equalTo: widthAnchor),
            
            //Cover Image constraints//
            homeImageView.topAnchor.constraint(equalTo: imageShadow.topAnchor),
            homeImageView.leadingAnchor.constraint(equalTo: imageShadow.leadingAnchor),
            homeImageView.trailingAnchor.constraint(equalTo: imageShadow.trailingAnchor),
            homeImageView.bottomAnchor.constraint(equalTo: imageShadow.bottomAnchor),
            
            
            //back button constraints//
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalTo: heightAnchor ,multiplier:  0.034),
            backButton.widthAnchor.constraint(equalTo: heightAnchor ,multiplier:  0.034),
            
            //bookmark button contraints//
            bookMarkButton.heightAnchor.constraint(equalTo: heightAnchor ,multiplier:   0.034),
            bookMarkButton.widthAnchor.constraint(equalTo: heightAnchor ,multiplier:   0.034),
            bookMarkButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            bookMarkButton.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            
            //bedrooms container constraints//
            totalBedRoomsContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            totalBedRoomsContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
            // bed icon container constraints//
            bedIconContainer.heightAnchor.constraint(equalTo: heightAnchor ,multiplier:   0.028),
            bedIconContainer.widthAnchor.constraint(equalTo: heightAnchor ,multiplier:  0.028),
            bedIconContainer.topAnchor.constraint(equalTo: totalBedRoomsContainer.topAnchor),
            bedIconContainer.leadingAnchor.constraint(equalTo: totalBedRoomsContainer.leadingAnchor),
            bedIconContainer.bottomAnchor.constraint(equalTo: totalBedRoomsContainer.bottomAnchor),
            bedIconContainer.trailingAnchor.constraint(equalTo: bedRoomLabel.leadingAnchor, constant: -10),
            
            //bed room label contraints//
            bedRoomLabel.topAnchor.constraint(equalTo: totalBedRoomsContainer.topAnchor),
            bedRoomLabel.trailingAnchor.constraint(equalTo: totalBedRoomsContainer.trailingAnchor),
            bedRoomLabel.bottomAnchor.constraint(equalTo: totalBedRoomsContainer.bottomAnchor),
            
            //bedrooms container constraints//
            totalBathRoomsContainer.leadingAnchor.constraint(equalTo: totalBedRoomsContainer.trailingAnchor, constant: 25),
            totalBathRoomsContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
            // bed icon container constraints//
            bathIconContainer.heightAnchor.constraint(equalTo: heightAnchor ,multiplier:   0.028),
            bathIconContainer.widthAnchor.constraint(equalTo: heightAnchor ,multiplier:  0.028),
            bathIconContainer.topAnchor.constraint(equalTo: totalBathRoomsContainer.topAnchor),
            bathIconContainer.leadingAnchor.constraint(equalTo: totalBathRoomsContainer.leadingAnchor),
            bathIconContainer.bottomAnchor.constraint(equalTo: totalBathRoomsContainer.bottomAnchor),
            bathIconContainer.trailingAnchor.constraint(equalTo: bathRoomLabel.leadingAnchor, constant: -10),
            
            //bed room label contraints//
            bathRoomLabel.topAnchor.constraint(equalTo: totalBathRoomsContainer.topAnchor),
            bathRoomLabel.trailingAnchor.constraint(equalTo: totalBathRoomsContainer.trailingAnchor),
            bathRoomLabel.bottomAnchor.constraint(equalTo: totalBathRoomsContainer.bottomAnchor),
            
            //Home subname label constraints//
            homeSubNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            homeSubNameLabel.bottomAnchor.constraint(equalTo: totalBedRoomsContainer.topAnchor, constant: -20),
            
            //Home name label constraints//
            homeNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            homeNameLabel.bottomAnchor.constraint(equalTo: homeSubNameLabel.topAnchor, constant: -5),
        ])
    }
}
