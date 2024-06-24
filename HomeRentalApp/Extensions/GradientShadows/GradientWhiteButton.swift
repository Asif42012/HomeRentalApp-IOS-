//
//  GradientWhiteButton.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 16/06/2024.
//

import UIKit

class GradientWhiteButton: UIButton {

    private var gradientLayer: CAGradientLayer?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradientLayer()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradientLayer()
    }

    private func setupGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor(hex: "F7F7F7").cgColor,
            UIColor(hex: "919191").cgColor,
        ]
        gradientLayer = gradient
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
               gradient.endPoint = CGPoint(x: 0.5, y: 1)
        layer.insertSublayer(gradient, at: 0) // Ensure gradient is at the background
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer?.frame = bounds
        bringImageToFront()
    }

    private func bringImageToFront() {
        if let imageView = imageView {
            bringSubviewToFront(imageView)
        }
    }

}
