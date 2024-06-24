//
//  HomeListView.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 18/06/2024.
//

import UIKit

class HomeListView: UIView {
    
    let viewModel = HomeListViewViewModel()
    
    let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    var listView: UITableView = {
        let listView = UITableView()
        listView.alpha = 0
        listView.backgroundColor = .clear
        listView.isScrollEnabled = false
        listView.tableFooterView = UIView()
        listView.alwaysBounceVertical = false
        listView.showsVerticalScrollIndicator = false
        listView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        listView.separatorStyle = .none
        listView.sectionFooterHeight = 0
        listView.sectionHeaderHeight = 0
        listView.estimatedRowHeight = 0
        listView.estimatedSectionHeaderHeight = 0
        listView.estimatedSectionFooterHeight = 0
        listView.translatesAutoresizingMaskIntoConstraints = false
        listView.register(HomeViewTableViewCell.self, forCellReuseIdentifier: HomeViewTableViewCell.identifier)
        return listView
    }()
    
    override var intrinsicContentSize: CGSize {
        self.listView.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: listView.contentSize.height)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        listView.frame.size.height = listView.contentSize.height
        listView.allowsSelection = true
        addSubviews(listView, spinner)
        spinner.startAnimating()
        addConstraints()
        setUpListView()
        fetchData()
    }
    
    func fetchData() {
        let homesData = [
            HomeInfoModel(homeName: "Orchad House",
                          homeSubName: "Jl, Sultan Iskandar Muda",
                          totalBedRooms: "6 Bedroom",
                          totalBathRooms: "4 Bathroom",
                          homeImages: ["bestitem1"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 2.500.000.000 / Year",
                          homeLocation: "",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"],
                          homeLocationLat: 33.626057,
                          homeLocationLong: 73.071442
                         ),
            HomeInfoModel(homeName: "The Hollies House",
                          homeSubName: "Jl, Sultan Iskandar Muda",
                          totalBedRooms: "5 Bedroom",
                          totalBathRooms: "2 Bathroom",
                          homeImages: ["bestitem2"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 2.000.000.000 / Year",
                          homeLocation: "",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"],
                          homeLocationLat: 33.738045,
                          homeLocationLong: 73.084488
                         ),
            
            HomeInfoModel(homeName: "Sea Breezes House",
                          homeSubName: "Jl, Sultan Iskandar Muda",
                          totalBedRooms: "2 Bedroom",
                          totalBathRooms: "2 Bathroom",
                          homeImages: ["bestitem3"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 9.000.000.000 / Year",
                          homeLocation: "",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"],  homeLocationLat: 33.738045,
                          homeLocationLong: 73.084488),
            HomeInfoModel(homeName: "Little Copse House",
                          homeSubName: "Jl, Sultan Iskandar Muda",
                          totalBedRooms: "5 Bedroom",
                          totalBathRooms: "2 Bathroom",
                          homeImages: ["bestitem4"],
                          homeDescription: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                          homeOwnerName: "Garry Allen",
                          homeOwnerImage: "homeOwner",
                          homeOwnerContact: "03405734535",
                          homePrice: "Rp. 9.000.000.000 / Year",
                          homeLocation: "",
                          homeGalleryImages: ["galleryitem1", "galleryitem2", "galleryitem3", "galleryitem4"],  homeLocationLat: 33.738045,
                          homeLocationLong: 73.084488)
        ]
        viewModel.updateViewModels(with: homesData)
        listView.reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpListView() {
        listView.delegate = viewModel
        listView.dataSource = viewModel
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.spinner.stopAnimating()
            self.listView.isHidden = false
            UIView.animate(withDuration: 0.4) {
                self.listView.alpha = 1
            }
        }
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.heightAnchor.constraint(equalToConstant: 50),
            spinner.widthAnchor.constraint(equalToConstant: 50),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            listView.topAnchor.constraint(equalTo: topAnchor),
            listView.leadingAnchor.constraint(equalTo: leadingAnchor),
            listView.trailingAnchor.constraint(equalTo: trailingAnchor),
            listView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
