//
//  HomeCollectionsViewViewModel.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 14/06/2024.
//

import Foundation
import UIKit

protocol HomeCoordinatorProtocolCollectionData {
    func showDetail(for home: HomeInfoModel, with image: String)
}

class HomeCollectionsViewViewModel: NSObject {
    var coordinator: HomeCoordinatorProtocolCollectionData?
    private var homes: [HomeInfoModel] = []
    private var cellViewModels: [HomeCollectionViewCellViewModel] = []
       func updateViewModels(with homes: [HomeInfoModel]) {
           self.homes = homes
           cellViewModels = homes.map {
               HomeCollectionViewCellViewModel(
                homeName: $0.homeName,
                homeSubName: $0.homeSubName,
                totalBedRooms: $0.totalBedRooms,
                totalBathRooms: $0.totalBathRooms,
                homeImages: $0.homeImages,
                homeDescription: $0.homeDescription,
                homeOwnerName: $0.homeOwnerName,
                homeOwnerImage: $0.homeOwnerImage,
                homeOwnerContact: $0.homeOwnerContact,
                homePrice: $0.homePrice,
                homeLocation: $0.homeLocation,
                homeGalleryImages: $0.homeGalleryImages,
                homeLocationLat: $0.homeLocationLat,
                homeLocationLong: $0.homeLocationLong
               )
           }
       }
}

extension HomeCollectionsViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return cellViewModels.count
    }
    // There is just one row in every section
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell else {
            fatalError("Failed to cast")
        }
        
        let viewModel = cellViewModels[indexPath.row]
                cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width * 0.6)
        let height = collectionView.frame.height
        return CGSize(width: width, height: height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard indexPath.row < homes.count else {
                    print("Index out of bounds")
                    return
                }
        
        let homeViewModel = cellViewModels[indexPath.row]
                let home = HomeInfoModel(
                    homeName: homeViewModel.homeName,
                    homeSubName: homeViewModel.homeSubName,
                    totalBedRooms: homeViewModel.totalBedRooms,
                    totalBathRooms: homeViewModel.totalBathRooms,
                    homeImages: homeViewModel.homeImages,
                    homeDescription: homeViewModel.homeDescription,
                    homeOwnerName: homeViewModel.homeOwnerName,
                    homeOwnerImage: homeViewModel.homeOwnerImage,
                    homeOwnerContact: homeViewModel.homeOwnerContact,
                    homePrice: homeViewModel.homePrice,
                    homeLocation: homeViewModel.homeLocation,
                    homeGalleryImages: homeViewModel.homeGalleryImages,
                    homeLocationLat: homeViewModel.homeLocationLat,
                    homeLocationLong: homeViewModel.homeLocationLong
                )
                let selectedImage = homeViewModel.homeImages[0]  // Use the appropriate index for the selected image
     let gallerys =    HomeGalleryCollectionView()
        gallerys.viewModel.updateViewModels(with: homes)
                coordinator?.showDetail(for: home, with: selectedImage)
    }
}

