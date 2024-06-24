//
//  HomeCollectionsView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 14/06/2024.
//

import UIKit

class HomeCollectionsView: UIView {
    
    let viewModel = HomeCollectionsViewViewModel()
    
    let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.minimumLineSpacing = 20
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.alpha = 0
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(collectionView, spinner)
        spinner.startAnimating()
        addConstraints()
        setUpCollectionView()
        fetchData()
    }
    
    func fetchData() {
        let homesData = [
            HomeInfoModel(homeName: "Dreamsville House",
                          homeSubName: "Jl, Sultan Iskandar Muda",
                          totalBedRooms: "6 Bedrooms",
                          totalBathRooms: "4 Bathrooms",
                          homeImages: ["collectionitem1"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 2.500.000.000 / Year",
                          homeLocation: "1.8 Km",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"], homeLocationLat: 33.626057,
                          homeLocationLong: 73.071442),
            HomeInfoModel(homeName: "Ascot House",
                          homeSubName: "Jl, Cilandak Tengah",
                          totalBedRooms: "4 Bedrooms",
                          totalBathRooms: "2 Bathrooms",
                          homeImages: ["collectionitem2"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 2.000.000.000 / Year",
                          homeLocation: "30 Km",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"], homeLocationLat: 33.738045,
                          homeLocationLong: 73.084488),
        ]
        
        viewModel.updateViewModels(with: homesData)
        collectionView.reloadData()
    }
    
    required init(coder: NSCoder) {
        fatalError("Error occured")
    }
    
    func setUpCollectionView() {
        collectionView.delegate = viewModel
        collectionView.dataSource = viewModel
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            self.spinner.stopAnimating()
            self.collectionView.isHidden = false
            UIView.animate(withDuration: 0.4){
                self.collectionView.alpha = 1
            }
        })
    }
    func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.heightAnchor.constraint(equalToConstant: 50),
            spinner.widthAnchor.constraint(equalToConstant: 50),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            collectionView.heightAnchor.constraint(equalTo: heightAnchor),
            collectionView.widthAnchor.constraint(equalTo: widthAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
