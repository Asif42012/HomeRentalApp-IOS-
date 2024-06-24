//
//  UiConstraintsDetailsView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 21/06/2024.
//

import Foundation
import UIKit


extension HomeDetailsViewController {
    
    //All UI Contraints//
    func setUpUiConstraints() {
        NSLayoutConstraint.activate([
            // Main ScrollView
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            // ContentView constraints
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
          //  contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            //Cover Image Container constraints//
            imageContenView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            imageContenView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            imageContenView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            imageContenView.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier: 0.304),
            
            //Shadow Image constraints//
            imageShadow.topAnchor.constraint(equalTo: imageContenView.topAnchor),
            imageShadow.leadingAnchor.constraint(equalTo: imageContenView.leadingAnchor),
            imageShadow.trailingAnchor.constraint(equalTo: imageContenView.trailingAnchor),
            imageShadow.bottomAnchor.constraint(equalTo: imageContenView.bottomAnchor),
            imageShadow.widthAnchor.constraint(equalTo: imageContenView.widthAnchor),
            
            //Cover Image constraints//
            homeImageView.topAnchor.constraint(equalTo: imageShadow.topAnchor),
            homeImageView.leadingAnchor.constraint(equalTo: imageShadow.leadingAnchor),
            homeImageView.trailingAnchor.constraint(equalTo: imageShadow.trailingAnchor),
            homeImageView.bottomAnchor.constraint(equalTo: imageShadow.bottomAnchor),
            
            
            //back button constraints//
            backButton.leadingAnchor.constraint(equalTo: imageContenView.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: imageContenView.topAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.034),
            backButton.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.034),
            
            //bookmark button contraints//
            bookMarkButton.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.034),
            bookMarkButton.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.034),
            bookMarkButton.trailingAnchor.constraint(equalTo: imageContenView.trailingAnchor, constant: -20),
            bookMarkButton.topAnchor.constraint(equalTo: imageContenView.topAnchor, constant: 20),
            
            //bedrooms container constraints//
            totalBedRoomsContainer.leadingAnchor.constraint(equalTo: imageContenView.leadingAnchor, constant: 20),
            totalBedRoomsContainer.bottomAnchor.constraint(equalTo: imageContenView.bottomAnchor, constant: -20),
            
            // bed icon container constraints//
            bedIconContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.028),
            bedIconContainer.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.028),
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
            totalBathRoomsContainer.bottomAnchor.constraint(equalTo: imageContenView.bottomAnchor, constant: -20),
            
            // bed icon container constraints//
            bathIconContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.028),
            bathIconContainer.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.028),
            bathIconContainer.topAnchor.constraint(equalTo: totalBathRoomsContainer.topAnchor),
            bathIconContainer.leadingAnchor.constraint(equalTo: totalBathRoomsContainer.leadingAnchor),
            bathIconContainer.bottomAnchor.constraint(equalTo: totalBathRoomsContainer.bottomAnchor),
            bathIconContainer.trailingAnchor.constraint(equalTo: bathRoomLabel.leadingAnchor, constant: -10),
            
            //bed room label contraints//
            bathRoomLabel.topAnchor.constraint(equalTo: totalBathRoomsContainer.topAnchor),
            bathRoomLabel.trailingAnchor.constraint(equalTo: totalBathRoomsContainer.trailingAnchor),
            bathRoomLabel.bottomAnchor.constraint(equalTo: totalBathRoomsContainer.bottomAnchor),
            
            //Home subname label constraints//
            homeSubNameLabel.leadingAnchor.constraint(equalTo: imageContenView.leadingAnchor, constant: 20),
            homeSubNameLabel.bottomAnchor.constraint(equalTo: totalBedRoomsContainer.topAnchor, constant: -20),
            
            //Home name label constraints//
            homeNameLabel.leadingAnchor.constraint(equalTo: imageContenView.leadingAnchor, constant: 20),
            homeNameLabel.bottomAnchor.constraint(equalTo: homeSubNameLabel.topAnchor, constant: -5),
            
            //description Heading and content container constraints//
            descriptionView.topAnchor.constraint(equalTo: imageContenView.bottomAnchor, constant: 20),
            descriptionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            descriptionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -20),
            
            //Description label constraints//
            descriptionLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: descriptionView.leadingAnchor),
            homeDescriptionLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 22),
            
            //Home Description constraints//
            homeDescriptionLabel.leadingAnchor.constraint(equalTo: descriptionView.leadingAnchor),
            homeDescriptionLabel.trailingAnchor.constraint(equalTo: descriptionView.trailingAnchor),
            
            //owner details card constraints
            ownerDetailsCard.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.040),
            ownerDetailsCard.topAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: 20),
            ownerDetailsCard.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ownerDetailsCard.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            //message Icon container//
            textIconContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.030),
            textIconContainer.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.030),
            textIconContainer.trailingAnchor.constraint(equalTo: ownerDetailsCard.trailingAnchor),
            textIconContainer.topAnchor.constraint(equalTo: ownerDetailsCard.topAnchor, constant: 5),
            textIconContainer.bottomAnchor.constraint(equalTo: ownerDetailsCard.bottomAnchor, constant: -5),
            
            //phone icon container//
            contactIconContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.030),
            contactIconContainer.widthAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.030),
            contactIconContainer.trailingAnchor.constraint(equalTo: textIconContainer.leadingAnchor ,constant: -10),
            contactIconContainer.topAnchor.constraint(equalTo: ownerDetailsCard.topAnchor, constant: 5),
            contactIconContainer.bottomAnchor.constraint(equalTo: ownerDetailsCard.bottomAnchor, constant: -5),
            
            //Owner image container constraints//
            ownerImageContainer.heightAnchor.constraint(equalTo: ownerDetailsCard.heightAnchor),
            ownerImageContainer.widthAnchor.constraint(equalTo: ownerDetailsCard.heightAnchor),
            ownerImageContainer.leadingAnchor.constraint(equalTo: ownerDetailsCard.leadingAnchor),
            ownerImageContainer.topAnchor.constraint(equalTo: ownerDetailsCard.topAnchor),
            ownerImageContainer.bottomAnchor.constraint(equalTo: ownerDetailsCard.bottomAnchor),
            
            //owner image constraints//
            homeOwnerImage.centerXAnchor.constraint(equalTo: ownerImageContainer.centerXAnchor),
            homeOwnerImage.centerYAnchor.constraint(equalTo: ownerImageContainer.centerYAnchor),
            homeOwnerImage.bottomAnchor.constraint(equalTo: ownerImageContainer.bottomAnchor, constant: 1),
            
            // owner name constraints//
            homeOwnerNameLabel.leadingAnchor.constraint(equalTo: ownerImageContainer.trailingAnchor, constant: 20),
            homeOwnerNameLabel.topAnchor.constraint(equalTo: ownerDetailsCard.topAnchor, constant: 1),
            
            // owner name tag//
            homeOwnerTag.leadingAnchor.constraint(equalTo: ownerImageContainer.trailingAnchor, constant: 20),
            homeOwnerTag.bottomAnchor.constraint(equalTo: ownerDetailsCard.bottomAnchor, constant: -1),
            
            //Gallery label constraints//
            galleryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            galleryLabel.topAnchor.constraint(equalTo: ownerDetailsCard.bottomAnchor, constant: 25),
            
            //Gallery collectionView//
            homeGalleryView.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.070),
            homeGalleryView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            homeGalleryView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20),
            homeGalleryView.topAnchor.constraint(equalTo: galleryLabel.bottomAnchor, constant: 20),
            
            
            //Map View constraints//
            mapView.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.3),
            mapView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mapView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            mapView.topAnchor.constraint(equalTo: homeGalleryView.bottomAnchor, constant: 25),
            mapView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            homeLocationMapView.topAnchor.constraint(equalTo: mapView.topAnchor),
            homeLocationMapView.leadingAnchor.constraint(equalTo: mapView.leadingAnchor),
            homeLocationMapView.trailingAnchor.constraint(equalTo: mapView.trailingAnchor),
            homeLocationMapView.bottomAnchor.constraint(equalTo: mapView.bottomAnchor),
            
            //Floating app rent button with price
            homeRentContenView.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:  0.15),
            homeRentContenView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            homeRentContenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            homeRentContenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            rentShadow.leadingAnchor.constraint(equalTo: homeRentContenView.leadingAnchor),
            rentShadow.trailingAnchor.constraint(equalTo: homeRentContenView.trailingAnchor),
            rentShadow.topAnchor.constraint(equalTo: homeRentContenView.topAnchor),
            rentShadow.bottomAnchor.constraint(equalTo: homeRentContenView.bottomAnchor),
            
            priceAmount.leadingAnchor.constraint(equalTo: homeRentContenView.leadingAnchor, constant: 20),
            priceAmount.bottomAnchor.constraint(equalTo: homeRentContenView.bottomAnchor, constant: -25),
            
            priceLabel.leadingAnchor.constraint(equalTo: homeRentContenView.leadingAnchor, constant: 20),
            priceLabel.bottomAnchor.constraint(equalTo: priceAmount.topAnchor, constant: -10),
            
            rentButton.trailingAnchor.constraint(equalTo: homeRentContenView.trailingAnchor, constant: -20),
            rentButton.bottomAnchor.constraint(equalTo: homeRentContenView.bottomAnchor, constant: -25),
            rentButton.heightAnchor.constraint(equalTo: contentView.heightAnchor ,multiplier:   0.046),
            rentButton.widthAnchor.constraint(equalTo: contentView.widthAnchor ,multiplier:   0.3),
        ])
    }
}
