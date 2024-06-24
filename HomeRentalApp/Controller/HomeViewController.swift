//
//  ViewController.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 13/06/2024.
//

import UIKit
import iOSDropDown

class HomeViewController: UIViewController {
    /// Collection View of Appartments///
    ///
    var coordinator: HomeCoordinator?
    let homeCollectionsView =  HomeCollectionsView()
    let buttonsStackView = ButtonsStack()
    let searchBar = HomeSearchBar()
    let homeListView = HomeListView()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let menuButton: GradientBlueOcean = {
        let button = GradientBlueOcean()
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.contentMode = .scaleAspectFit
        button.backgroundColor = .clear
        button.setImage(UIImage(named: "Ic_filter"), for: .normal)
       
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var dropdownMenu: DropDown = {
        let menu = DropDown()
        menu.borderColor = .clear
        menu.arrowColor = UIColor(hex: "838383")
        menu.borderStyle = .none
        menu.hideOptionsWhenSelect = true
        menu.isSearchEnable = false
        menu.selectedIndex = 1
        menu.placeholder = "Jakarta"
        menu.font = AppFont.mediumRaleway20
        menu.textColor = .black
        menu.optionArray = ["Option 1", "Option 2", "Option 3"]
        menu.translatesAutoresizingMaskIntoConstraints = false
        return menu
    }()
    
    let locationLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.textAlignment = .left
        locationLabel.text = "Location"
        locationLabel.textColor = UIColor(hex: "838383")
        locationLabel.font = AppFont.regularRaleway12
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        return locationLabel
    }()
    
    let nearLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.textAlignment = .left
        locationLabel.text = "Near from you"
        locationLabel.textColor = UIColor(hex: "000000")
        locationLabel.font = AppFont.mediumRaleway16
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        return locationLabel
    }()
    
    let seeMoreButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("See more", for: .normal)
        btn.contentMode = .scaleAspectFill
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let notificationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Ic_notifications"), for: .normal)
        return button
    }()
    
    let bestLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.textAlignment = .left
        locationLabel.text = "Best for you"
        locationLabel.textColor = UIColor(hex: "000000")
        locationLabel.font = AppFont.mediumRaleway16
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        return locationLabel
    }()
    
    let bestForYouSeeMoreButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .clear
        btn.setTitle("See more", for: .normal)
        btn.contentMode = .scaleAspectFill
        btn.contentHorizontalAlignment = .center
        btn.contentVerticalAlignment = .center
        btn.showsLargeContentViewer = true
        btn.setTitleColor(UIColor(hex: "858585"), for: .normal)
        btn.titleLabel?.font = AppFont.regularRaleway12
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
//    override func viewDidAppear(_ animated: Bool) {
//            super.viewDidAppear(animated)
//            updateScrollViewContentSize()
//        }
    
//    func updateScrollViewContentSize() {
//            let contentHeight = homeListView.frame.maxY + 20 // Add some padding if needed
//            scrollView.contentSize = CGSize(width: scrollView.frame.width, height: contentHeight)
//        }
}
