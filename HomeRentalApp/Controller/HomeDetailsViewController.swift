//
//  HomeDetailsViewController.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 20/06/2024.
//

import UIKit
import MapKit


class HomeDetailsViewController: UIViewController {
    var viewModel: HomeDetailsViewViewModel?
    var coordinator: HomeCoordinator?
    var homeGalleryView =  HomeGalleryCollectionView()
    var bathIconContainer = BathIconView()
    var bedIconContainer = BedIconView()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imageContenView: UIView = {
        let imgView = UIView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    let imageShadow: ShadowGradient = {
        let color1 = UIColor(hex: "#0D0D0D").withAlphaComponent(0)
        let color2 = UIColor(hex: "#000000").withAlphaComponent(0.70)
        let imgView = ShadowGradient(
            startColor: color1, endColor: color2,
            startPoint: CGPoint(x: 0.5, y: 0.5),
            endPoint: CGPoint(x: 0.5, y: 0.7)
        )
        imgView.layer.cornerRadius = 20
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    let homeImageView: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.contentMode = .scaleToFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = UIColor(hex: "000000").withAlphaComponent(0.24)
        button.setImage(UIImage(named: "Ic_left_arrow"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    let bookMarkButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = UIColor(hex: "000000").withAlphaComponent(0.24)
        button.setImage(UIImage(named: "Ic_bookmark"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    let homeNameLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.semiBold20
        label.textColor = UIColor(hex: "FFFFFF")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let homeSubNameLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.regularRaleway12
        label.textColor = UIColor(hex: "D4D4D4")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalBedRoomsContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bedRoomLabel: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "D4D4D4")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    let totalBathRoomsContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.contentMode = .center
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bathRoomLabel: UILabel = {
        let homeLabel = UILabel()
        homeLabel.textAlignment = .left
        homeLabel.textColor = UIColor(hex: "D4D4D4")
        homeLabel.font = AppFont.regularRaleway12
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.font = AppFont.mediumRaleway16
        label.textColor = UIColor(hex: "000000")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let homeDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.regularRaleway12
        label.numberOfLines = 0
        label.textColor = UIColor(hex: "858585")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ownerDetailsCard: UIView = {
        let card = UIView()
        card.clipsToBounds = true
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()
    
    let ownerImageContainer: UIView = {
        let backgroundView = UIView()
        backgroundView.clipsToBounds = true
        backgroundView.backgroundColor = UIColor(hex: "8198AC").withAlphaComponent(0.60)
        backgroundView.contentMode = .bottom
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundView
    }()
    
    let homeOwnerImage: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = .bottom
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let homeOwnerNameLabel: UILabel = {
        let label = UILabel()
        label.font = AppFont.mediumRaleway16
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let homeOwnerTag: UILabel = {
        let label = UILabel()
        label.text = "Owner"
        label.font = AppFont.regularRaleway12
        label.textColor = UIColor(hex: "858585")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let contactIconContainer: UIButton = {
        let views = UIButton()
        views.backgroundColor = UIColor(hex: "0A8ED9").withAlphaComponent(0.50)
        views.layer.cornerRadius = 5
        views.setImage(UIImage(named: "Ic_phone"), for: .normal)
        views.contentMode = .center
        views.clipsToBounds = true
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    let textIconContainer: UIButton = {
        let views = UIButton()
        views.backgroundColor = UIColor(hex: "0A8ED9").withAlphaComponent(0.50)
        views.layer.cornerRadius = 5
        views.setImage(UIImage(named: "Ic_message"), for: .normal)
        views.contentMode = .center
        views.clipsToBounds = true
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    let mapView: UIView = {
        let mapView = UIView()
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()
    
    let homeLocationMapView: MKMapView = {
        let mapLocation = MKMapView()
        mapLocation.layer.cornerRadius = 30
        mapLocation.clipsToBounds = true
        mapLocation.translatesAutoresizingMaskIntoConstraints = false
        return mapLocation
    }()
    
    let homeRentContenView: UIView = {
        let rentContent = UIView()
        rentContent.translatesAutoresizingMaskIntoConstraints = false
        return rentContent
        
    }()
    
    let galleryLabel: UILabel = {
        let label = UILabel()
        label.text = "Gallery"
        label.font = AppFont.mediumRaleway16
        label.textColor = UIColor(hex: "000000")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel: UILabel = {
        let price = UILabel()
        price.text = "Price"
        price.font = AppFont.regularRaleway12
        price.textColor = UIColor(hex: "858585")
        price.translatesAutoresizingMaskIntoConstraints = false
        return price
    }()
    
    let priceAmount: UILabel = {
        let price = UILabel()
        price.textColor = .black
        price.font = AppFont.mediumRaleway16
        price.translatesAutoresizingMaskIntoConstraints = false
        return price
    }()
    
    let rentButton: GradientBlueOcean = {
        let btn = GradientBlueOcean()
        btn.setTitle("Rent Now", for: .normal)
        btn.contentMode = .center
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = false
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = AppFont.semiBold16
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let descriptionView: UIView = {
        let descriptionView = UIView()
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        return descriptionView
    }()
    
    let rentShadow: ShadowGradient = {
        let color1 = UIColor(hex: "#FFFFFF").withAlphaComponent(0)
        let color2 = UIColor(hex: "#FFFFFF").withAlphaComponent(1)
        let imgView = ShadowGradient(
            startColor: color1, endColor: color2,
            startPoint: CGPoint(x: 0.5, y: 0.0),
            endPoint: CGPoint(x: 0.5, y: 0.5)
        )
        imgView.layer.cornerRadius = 20
        imgView.clipsToBounds = true
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    var ownerContactNumber: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureView()
    }
    
    func ibButtonsAction() {
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        contactIconContainer.addTarget(self, action: #selector(openDial), for: .touchUpInside)
    }
    
    @objc func backButtonTapped() {
        if let coordinator = coordinator {
            coordinator.popViewController()
        } else {
            print("Coordinator is nil")
        }
    }
    
    
    @objc func openDial() {
        
    }
    func configureView() {
        //SuperView//
        self.view.addSubviews(scrollView, homeRentContenView)
        //rentShadow.addSubview(homeRentContenView)
        homeRentContenView.addSubviews(rentShadow, priceLabel, priceAmount, rentButton)
        //Super scroll View//
        scrollView.addSubview(contentView)
        
        imageShadow.addSubview(homeImageView)
        
        //Cover Image Content
        imageContenView.addSubviews(imageShadow, backButton, bookMarkButton, totalBedRoomsContainer, totalBathRoomsContainer, homeSubNameLabel, homeNameLabel)
        
        totalBedRoomsContainer.addSubviews(bedIconContainer, bedRoomLabel)
        totalBathRoomsContainer.addSubviews(bathIconContainer, bathRoomLabel)
        
        //Owner card details//
        ownerImageContainer.addSubview(homeOwnerImage)
        ownerDetailsCard.addSubviews(ownerImageContainer, homeOwnerNameLabel, homeOwnerTag, textIconContainer, contactIconContainer)
        
        //ScrollView Content//
        mapView.addSubview(homeLocationMapView)
        descriptionView.addSubviews( descriptionLabel, homeDescriptionLabel)
        contentView.addSubviews(imageContenView, ownerDetailsCard, descriptionView, galleryLabel, homeGalleryView, mapView)
        
        //funcs//
        setUpUiConstraints()
        configure()
        setUpMap()
        ibButtonsAction()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        backButton.layer.cornerRadius = backButton.frame.size.width / 2
        bookMarkButton.layer.cornerRadius = bookMarkButton.frame.size.width / 2
        ownerImageContainer.layer.cornerRadius = ownerImageContainer.frame.size.width / 2
    }
    
    private func configure() {
        guard let viewModel = viewModel else { return }
        homeImageView.image = UIImage(named: viewModel.homeImage)
        homeNameLabel.text = viewModel.homeName
        bedRoomLabel.text = viewModel.totalBedRooms
        bathRoomLabel.text = viewModel.totalBathRooms
        homeSubNameLabel.text = viewModel.homeSubName
        homeDescriptionLabel.text = viewModel.homeDescription
        homeOwnerNameLabel.text = viewModel.homeOwnerName
        homeOwnerImage.image = UIImage(named: viewModel.homeOwnerImage)
        priceAmount.text = viewModel.homePrice
        ownerContactNumber = viewModel.homeOwnerContact
    }
    
    private func setUpMap() {
        guard let viewModel = viewModel else { return }
        let locationCoordinate = CLLocationCoordinate2D(latitude: viewModel.homeLocationLat, longitude: viewModel.homeLocationLong)
        let region = MKCoordinateRegion(center: locationCoordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        homeLocationMapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationCoordinate
        homeLocationMapView.addAnnotation(annotation)
    }
}
