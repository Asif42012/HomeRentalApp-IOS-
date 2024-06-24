//
//  HomeCollectionViewCellViewModel.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 14/06/2024.
//

import Foundation


class HomeCollectionViewCellViewModel {
    let homeName: String
    let homeSubName: String
    let totalBedRooms: String
    let totalBathRooms: String
    let homeImages: [String]
    let homeDescription: String
    let homeOwnerName: String
    let homeOwnerImage: String
    let homeOwnerContact: String
    let homePrice: String
    let homeLocation: String
    let homeGalleryImages: [String]
    let homeLocationLat: Double
    let homeLocationLong: Double
    
    init(homeName: String, homeSubName: String , totalBedRooms: String, totalBathRooms: String, homeImages: [String], homeDescription: String, homeOwnerName: String, homeOwnerImage: String, homeOwnerContact: String, homePrice: String, homeLocation: String,homeGalleryImages: [String], homeLocationLat: Double, homeLocationLong: Double) {
        self.homeName = homeName
        self.homeSubName = homeSubName
        self.totalBedRooms = totalBedRooms
        self.totalBathRooms = totalBathRooms
        self.homeImages = homeImages
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
}
