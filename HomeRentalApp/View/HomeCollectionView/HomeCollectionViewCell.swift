//
//  HomeCollectionViewCell.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 14/06/2024.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeCollectionViewCell"
    
    private let shadowView: UIView = {
        let shadowView = UIView(frame: .zero)
        shadowView.backgroundColor = .black.withAlphaComponent(0.05)
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        return shadowView
    }()
    
    let locationIocn: UIImageView = {
        var icon = UIImageView()
        icon = UIImageView(image: UIImage(named: "Ic_location"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        
        return icon
    }()
    
    let locationView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = UIColor(hex: "000000").withAlphaComponent(0.24)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let homeInfoView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let homeImage: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.backgroundColor = .clear
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
        homeLabel.textColor = .white
        
        homeLabel.font = AppFont.mediumRaleway16
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
    
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        let gradient = CAGradientLayer()
        gradient.name = "Shadow Gradient"
        gradient.frame = self.bounds
        let color1 = UIColor(hex: "#0D0D0D").withAlphaComponent(0).cgColor
        let color2 = UIColor(hex: "#000000").withAlphaComponent(0.50).cgColor
        
        gradient.colors = [color1, color2]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.5, y: 0.7)
        shadowView.layer.sublayers?.first(where: { $0.name == gradient.name })?.removeFromSuperlayer()
        shadowView.layer.addSublayer(gradient)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 20
        layer.masksToBounds = true
        homeImage.addSubview(shadowView)
        homeInfoView.addSubviews(homeLable, homeSubLable )
        locationView.addSubviews(homeLocationLable, locationIocn)
        contentView.addSubviews(homeImage,homeInfoView, locationView)
        addConstraint()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraint() {
        NSLayoutConstraint.activate([
            homeImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            homeImage.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            homeImage.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            homeImage.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
            
            homeInfoView.heightAnchor.constraint(equalTo:contentView.heightAnchor,multiplier: 0.2),
            homeInfoView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            homeInfoView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            homeInfoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            homeInfoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            locationView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            locationView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            locationView.heightAnchor.constraint(equalToConstant: 24),
            locationView.widthAnchor.constraint(equalToConstant: 73),
            homeLocationLable.topAnchor.constraint(equalTo: locationView.topAnchor),
            homeLocationLable.bottomAnchor.constraint(equalTo: locationView.bottomAnchor),
            homeLocationLable.leadingAnchor.constraint(equalTo: locationIocn.trailingAnchor, constant: 5),
            homeLocationLable.trailingAnchor.constraint(equalTo: locationView.trailingAnchor, constant: -5),
            
            locationIocn.topAnchor.constraint(equalTo: locationView.topAnchor,constant: 2),
            locationIocn.bottomAnchor.constraint(equalTo: locationView.bottomAnchor,constant: -2),
            locationIocn.leadingAnchor.constraint(equalTo: locationView.leadingAnchor,constant: 5),
            
            
            homeSubLable.bottomAnchor.constraint(equalTo: homeInfoView.bottomAnchor,constant: -10),
            homeSubLable.leadingAnchor.constraint(equalTo: homeInfoView.leadingAnchor, constant: 20),
            homeSubLable.trailingAnchor.constraint(equalTo: homeInfoView.trailingAnchor, constant: -20),
            homeSubLable.topAnchor.constraint(equalTo: homeLable.bottomAnchor,constant: 10),
            
            homeLable.topAnchor.constraint(equalTo: homeInfoView.topAnchor),
            homeLable.leadingAnchor.constraint(equalTo: homeInfoView.leadingAnchor, constant: 20),
            homeLable.trailingAnchor.constraint(equalTo: homeInfoView.trailingAnchor, constant: -20),
        ])
        locationView.layer.cornerRadius = 12
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        homeImage.image = nil
        homeLable.text = nil
        homeSubLable.text = nil
        homeLocationLable.text = nil
    }
    
    public func configure(with viewModel: HomeCollectionViewCellViewModel) {
        homeImage.image = UIImage(named: viewModel.homeImages[0])
        homeLable.text = viewModel.homeName
        homeSubLable.text = viewModel.homeSubName
        homeLocationLable.text = viewModel.homeLocation
    }
}
