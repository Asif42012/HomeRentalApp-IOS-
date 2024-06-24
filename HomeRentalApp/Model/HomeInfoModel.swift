//
//  City.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 13/06/2024.
//

struct HomeInfoModel: Codable {
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
}


