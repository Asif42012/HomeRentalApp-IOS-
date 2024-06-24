//
//  HomeDetailsViewViewModel.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 20/06/2024.
//

import Foundation

class HomeDetailsViewViewModel {
    let homeName: String
    let homeSubName: String
    let totalBedRooms: String
    let totalBathRooms: String
    let homeImage: String
    let homeDescription: String
    let homeOwnerName: String
    let homeOwnerImage: String
    let homeOwnerContact: String
    let homePrice: String
    let homeLocation: String
    let homeGalleryImages: [String]
    let homeLocationLat: Double
    let homeLocationLong: Double
    init(homeName: String, homeSubName: String, totalBedRooms: String, totalBathRooms: String, homeImage: String, homeDescription: String, homeOwnerName: String, homeOwnerImage: String, homeOwnerContact: String, homePrice: String, homeLocation: String, homeGalleryImages: [String],homeLocationLat: Double,homeLocationLong: Double) {
        self.homeName = homeName
        self.homeSubName = homeSubName
        self.totalBedRooms = totalBedRooms
        self.totalBathRooms = totalBathRooms
        self.homeImage = homeImage
        self.homeDescription = homeDescription
        self.homeOwnerName = homeOwnerName
        self.homeOwnerImage = homeOwnerImage
        self.homeOwnerContact = homeOwnerContact
        self.homePrice = homePrice
        self.homeLocation = homeLocation
        self.homeGalleryImages = homeGalleryImages
        self.homeLocationLat = homeLocationLat
        self.homeLocationLong = homeLocationLong
    }

    convenience init(home: HomeInfoModel, homeImage: String) {
        self.init(homeName: home.homeName,
                  homeSubName: home.homeSubName,
                  totalBedRooms: home.totalBedRooms,
                  totalBathRooms: home.totalBathRooms,
                  homeImage: homeImage,
                  homeDescription: home.homeDescription,
                  homeOwnerName: home.homeOwnerName,
                  homeOwnerImage: home.homeOwnerImage,
                  homeOwnerContact: home.homeOwnerContact,
                  homePrice: home.homePrice,
                  homeLocation: home.homeLocation,
                  homeGalleryImages: home.homeGalleryImages,
                  homeLocationLat: home.homeLocationLat,
                  homeLocationLong: home.homeLocationLong
                  
        )
    }
}


