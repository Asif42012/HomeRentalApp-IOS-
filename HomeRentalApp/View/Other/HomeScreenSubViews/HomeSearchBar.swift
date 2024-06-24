//
//  HomeSearchBar.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 15/06/2024.
//

import UIKit

class HomeSearchBar: UIView {
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search address, or near you"
        searchBar.contentMode = .center
        searchBar.sizeToFit()
        searchBar.searchBarStyle = .minimal
        searchBar.backgroundColor = UIColor(hex: "F7F7F7").withAlphaComponent(0.4)
        searchBar.tintColor = UIColor(hex: "858585")
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true
        searchBar.searchTextField.borderStyle = .none
        if let textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField {
            if let searchIcon = UIImage(systemName: "magnifyingglass") {
                textFieldInsideSearchBar.leftView = UIImageView(image: searchIcon)
                textFieldInsideSearchBar.leftViewMode = .always
                textFieldInsideSearchBar.font = AppFont.regularRaleway12
                textFieldInsideSearchBar.textColor = UIColor(hex: "858585")
                textFieldInsideSearchBar.textAlignment = .left
                
            }
        }
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor),
            searchBar.topAnchor.constraint(equalTo: topAnchor),
            searchBar.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
    
}
