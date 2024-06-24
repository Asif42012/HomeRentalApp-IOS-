//
//  AddSubView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 13/06/2024.
//

import UIKit


extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

