//
//  UIConstraints.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 16/06/2024.
//

import Foundation
import UIKit

extension HomeViewController {
    
    func configureView() {
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubviews(locationLabel, notificationButton, searchBar, menuButton, dropdownMenu, buttonsStackView, nearLabel, seeMoreButton, homeCollectionsView, bestLabel, bestForYouSeeMoreButton, homeListView)
        setupConstraints()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            // ScrollView constraints
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
            
            // Location label constraints
            locationLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 24),
            locationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            // Notification button constraints
            notificationButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            notificationButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 32),
            
            // Dropdown menu constraints
            dropdownMenu.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
            dropdownMenu.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            dropdownMenu.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2),
            
            // Search bar constraints
            searchBar.topAnchor.constraint(equalTo: dropdownMenu.bottomAnchor, constant: 20),
            searchBar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: menuButton.leadingAnchor, constant: -10),
            searchBar.heightAnchor.constraint(equalToConstant: 40),
            
            // Menu button constraints
            menuButton.widthAnchor.constraint(equalToConstant: 40),
            menuButton.heightAnchor.constraint(equalTo: searchBar.heightAnchor),
            menuButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            menuButton.topAnchor.constraint(equalTo: searchBar.topAnchor),
            
            // Buttons stack view constraints
            buttonsStackView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            buttonsStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            buttonsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            buttonsStackView.heightAnchor.constraint(equalToConstant: 34),
            
            // near lable
            nearLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            nearLabel.topAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 27),
            
            // see more button
            
            seeMoreButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -20),
            seeMoreButton.topAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 27),
            
            // Collection view constraints
            homeCollectionsView.topAnchor.constraint(equalTo: nearLabel.bottomAnchor, constant: 20),
            homeCollectionsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            homeCollectionsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            homeCollectionsView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.35),
            
            
            bestLabel.topAnchor.constraint(equalTo: homeCollectionsView.bottomAnchor, constant: 27),
            bestLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            bestForYouSeeMoreButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -20),
            bestForYouSeeMoreButton.topAnchor.constraint(equalTo: homeCollectionsView.bottomAnchor, constant: 27),
            
            
            homeListView.topAnchor.constraint(equalTo: bestLabel.bottomAnchor),
            homeListView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            homeListView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            homeListView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        homeCollectionsView.viewModel.coordinator = coordinator
        homeListView.viewModel.coordinator = coordinator
    }
}
