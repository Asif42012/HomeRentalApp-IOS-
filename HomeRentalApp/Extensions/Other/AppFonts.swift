//
//  AppFonts.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 15/06/2024.
//

import Foundation
import UIKit

enum AppFont {
    
    static let mediumRaleway12 = UIFont(name: Raleway.medium.rawValue, size: 12)
    static let mediumRaleway20 = UIFont(name: Raleway.medium.rawValue, size: 20)
    static let regularRaleway12 = UIFont(name: Raleway.regular.rawValue, size: 12)
    static let mediumRaleway16 = UIFont(name: Raleway.medium.rawValue, size: 16)
    static let semiBold20 = UIFont(name: Raleway.semiBold.rawValue, size: 20)
    static let semiBold16 = UIFont(name: Raleway.semiBold.rawValue, size: 16)
    static func custom(weight: Raleway, size: CGFloat) -> UIFont? {
        return UIFont(name: weight.rawValue, size: size)
    }
}

enum Raleway: String {
    case bold         = "Raleway-Bold"
    case semiBold     = "Raleway-SemiBold"
    case medium       = "Raleway-Medium"
    case regular      = "Raleway-Regular"
}
