//
//  ButtonsStack.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 14/06/2024.
//

import UIKit
import Foundation

class ButtonsStack: UIView {
    private var gradientLayer: CAGradientLayer?
    
    // Define your buttons
    let houseButton: GradientBlueOcean = {
        let btn = GradientBlueOcean()
        btn.setTitle("House", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = AppFont.mediumRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let appartmentButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "F7F7F7").withAlphaComponent(0.4)
        btn.setTitle("Apartment", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let hotelButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "F7F7F7").withAlphaComponent(0.4)
        btn.setTitle("Hotel", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let villaButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "F7F7F7").withAlphaComponent(0.4)
        btn.setTitle("Villa", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let cottageButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor(hex: "F7F7F7").withAlphaComponent(0.4)
        btn.setTitle("Cottage", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    // Define the UIScrollView
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    // Define the UIStackView
    lazy var buttonsStackView: UIStackView = {
        let buttonStack = UIStackView()
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.axis = .horizontal
        buttonStack.distribution = .fillEqually
        buttonStack.spacing = 8
        return buttonStack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        translatesAutoresizingMaskIntoConstraints = false
        
        // Add buttons to the stack view
        buttonsStackView.addArrangedSubview(houseButton)
        buttonsStackView.addArrangedSubview(appartmentButton)
        buttonsStackView.addArrangedSubview(hotelButton)
        buttonsStackView.addArrangedSubview(villaButton)
        buttonsStackView.addArrangedSubview(cottageButton)
        // Add stack view to scroll view
        scrollView.addSubview(buttonsStackView)
        
        // Add scroll view to the main view
        addSubview(scrollView)
        
        // Set constraints for scroll view
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // Set constraints for stack view
        NSLayoutConstraint.activate([
            buttonsStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            buttonsStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            buttonsStackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            buttonsStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            buttonsStackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
    }
}
