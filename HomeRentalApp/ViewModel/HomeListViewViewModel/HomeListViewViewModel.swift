//
//  HomeListViewViewModel..swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 19/06/2024.
//

import Foundation
import UIKit


protocol HomeCoordinatorProtocolListData {
    func navigateToDetails(for homess: HomeInfoModel, with image: String)
}
class HomeListViewViewModel: NSObject {
    var coordinator: HomeCoordinatorProtocolListData?
     var homes: [HomeInfoModel] = []
    private var cellViewModels: [HomeViewTableViewCellViewModel] = []
    
       func updateViewModels(with homes: [HomeInfoModel]) {
           self.homes = homes
           cellViewModels = homes.map {
              HomeViewTableViewCellViewModel(
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

extension HomeListViewViewModel: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellViewModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeViewTableViewCell.identifier, for: indexPath) as? HomeViewTableViewCell else {
           fatalError("Failed to cast")
       }
       
        let viewModel = cellViewModels[indexPath.section]
        cell.configure(with: viewModel)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        18
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        let rowHeight = screenHeight * 0.09
        return rowHeight;//Choose your custom row height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard indexPath.section < homes.count else {
                    print("Index out of bounds")
                    return
                }
        
        let homeViewModel = cellViewModels[indexPath.section]
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
                let selectedImage = homeViewModel.homeImages[0]
               tableView.deselectRow(at: indexPath, animated: true)
        coordinator?.navigateToDetails(for: home, with: selectedImage)
    }
}
