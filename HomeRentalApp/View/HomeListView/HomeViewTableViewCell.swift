//
//  HomeViewTableViewCell.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 18/06/2024.
//

import UIKit

class HomeViewTableViewCell: UITableViewCell {
    static let identifier = "HomeViewTableViewCell"
    
    let locationIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_location"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    
    let bedIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_bed"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    let bathIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_bath"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    let bedRoomsView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bathRoomsView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let homeImage: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 10
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    private let homeLocationLable: UILabel = {
        let locationLabel = UILabel()
        locationLabel.textAlignment = .right
        locationLabel.textColor = .white
        locationLabel.font = AppFont.regularRaleway12
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        return locationLabel
    }()
    
    private let homeLable: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = .black
        homeLabel.font = AppFont.mediumRaleway16
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    private let homePrice: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "0A8ED9")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    private let homeBedRooms: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "858585")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    private let homeBathRooms: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "858585")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    
    
    private let homeSubLable: UILabel = {
        let homeSubLable = UILabel()
        homeSubLable.textAlignment = .left
        homeSubLable.textColor = UIColor(hex: "D7D7D7")
        homeSubLable.font = AppFont.regularRaleway12
        homeSubLable.translatesAutoresizingMaskIntoConstraints = false
        return homeSubLable
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraint() {
        NSLayoutConstraint.activate([
            homeImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            homeImage.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            homeImage.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
            homeImage.widthAnchor.constraint(equalTo:contentView.widthAnchor, multiplier: 0.25),
            homeLable.leadingAnchor.constraint(equalTo: homeImage.trailingAnchor, constant: 25),
            homeLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3),
            
            homePrice.leadingAnchor.constraint(equalTo: homeImage.trailingAnchor, constant: 20),
            homePrice.topAnchor.constraint(equalTo: homeLable.bottomAnchor, constant: 10),
            
            
            
            bedIocn.heightAnchor.constraint(equalToConstant: 24),
            bedIocn.widthAnchor.constraint(equalToConstant: 24),
            bedIocn.topAnchor.constraint(equalTo: bedRoomsView.topAnchor),
            bedIocn.leadingAnchor.constraint(equalTo: bedRoomsView.leadingAnchor),
            bedIocn.bottomAnchor.constraint(equalTo: bedRoomsView.bottomAnchor),
            
            homeBedRooms.topAnchor.constraint(equalTo: bedRoomsView.topAnchor),
            homeBedRooms.bottomAnchor.constraint(equalTo: bedRoomsView.bottomAnchor),
            homeBedRooms.leadingAnchor.constraint(equalTo: bedIocn.trailingAnchor, constant: 5),
            homeBedRooms.trailingAnchor.constraint(equalTo: bedRoomsView.trailingAnchor, constant: -5),
            bedRoomsView.leadingAnchor.constraint(equalTo: homeImage.trailingAnchor,constant: 25),
            bedRoomsView.topAnchor.constraint(equalTo: homePrice.bottomAnchor, constant: 10),
            
            
            
            bathIocn.heightAnchor.constraint(equalToConstant: 24),
            bathIocn.widthAnchor.constraint(equalToConstant: 24),
            
            bathIocn.topAnchor.constraint(equalTo: bathRoomsView.topAnchor),
            bathIocn.leadingAnchor.constraint(equalTo: bathRoomsView.leadingAnchor),
            bathIocn.bottomAnchor.constraint(equalTo: bathRoomsView.bottomAnchor),
            
            homeBathRooms.topAnchor.constraint(equalTo: bathRoomsView.topAnchor),
            homeBathRooms.bottomAnchor.constraint(equalTo: bathRoomsView.bottomAnchor),
            homeBathRooms.leadingAnchor.constraint(equalTo: bathIocn.trailingAnchor, constant: 5),
            homeBathRooms.trailingAnchor.constraint(equalTo: bathRoomsView.trailingAnchor, constant: -5),
            bathRoomsView.leadingAnchor.constraint(equalTo: bedRoomsView.trailingAnchor,constant: 10),
            bathRoomsView.topAnchor.constraint(equalTo: homePrice.bottomAnchor, constant: 10),
        ])
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        contentView.addSubviews(homeImage, homeLable, homePrice, bedRoomsView, bathRoomsView)
        bedRoomsView.addSubviews(homeBedRooms, bedIocn)
        bathRoomsView.addSubviews(homeBathRooms, bathIocn)
        addConstraint()
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        homeImage.image = nil
        homeLable.text = nil
        homeSubLable.text = nil
        homeLocationLable.text = nil
        homePrice.text = nil
    }
    public func configure(with viewModel: HomeViewTableViewCellViewModel) {
        homeImage.image = UIImage(named: viewModel.homeImages[0])
        homeLable.text = viewModel.homeName
        homeSubLable.text = viewModel.homeSubName
        homeLocationLable.text = viewModel.homeLocation
        homePrice.text = viewModel.homePrice
        homeBathRooms.text = viewModel.totalBathRooms
        homeBedRooms.text = viewModel.totalBedRooms
    }
    
}
