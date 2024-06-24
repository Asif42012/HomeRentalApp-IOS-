//
//  HomeCoordinator.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 20/06/2024.
//
import UIKit

class HomeCoordinator: HomeCoordinatorProtocolCollectionData, HomeCoordinatorProtocolListData {
    
    
    func navigateToDetails(for homess: HomeInfoModel, with image: String) {
        let detailViewController = HomeDetailsViewController()
        detailViewController.viewModel = HomeDetailsViewViewModel(home: homess, homeImage: image)
        detailViewController.coordinator = self
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationController?.pushViewController(homeViewController, animated: false)
    }
    
    func showDetail(for home: HomeInfoModel, with image: String) {
        let detailViewController = HomeDetailsViewController()
        detailViewController.viewModel = HomeDetailsViewViewModel(home: home, homeImage: image)
        detailViewController.coordinator = self
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func popViewController() {
               navigationController?.popViewController(animated: true)
    }
}

