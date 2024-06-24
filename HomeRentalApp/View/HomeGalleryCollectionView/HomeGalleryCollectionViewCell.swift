//
//  HomeGalleryCollectionViewCell.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 21/06/2024.
//

import UIKit

class HomeGalleryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeGalleryCollectionViewCell"
    let homeImage: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 6
        img.clipsToBounds = true
        img.backgroundColor = .clear
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 6
        layer.masksToBounds = true
        contentView.addSubviews(homeImage)
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
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        homeImage.image = nil
    }
    public func configure(with viewModel: HomeGalleryCollectionViewCellViewModel) {
        homeImage.image = UIImage(named: viewModel.homeGalleryImages[0])
        
    }
}
