//
//  ShadowGradient.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 21/06/2024.
//

import UIKit

class ShadowGradient: UIView {
    
    private var startColor: UIColor
    private var endColor: UIColor
    
    private var startPoint: CGPoint
    private var endPoint: CGPoint
    
    init(startColor: UIColor, endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
        self.startColor = startColor
        self.endColor = endColor
        self.startPoint = startPoint
        self.endPoint = endPoint
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let gradient = CAGradientLayer()
        gradient.name = "Shadow Gradient"
        gradient.frame = self.bounds
        
        let color1 = startColor.cgColor
        let color2 = endColor.cgColor
        
        gradient.colors = [color1, color2]
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        // Remove existing gradient if present
        self.layer.sublayers?.first(where: { $0.name == gradient.name })?.removeFromSuperlayer()
        
        // Add new gradient
        self.layer.addSublayer(gradient)
    }
}
