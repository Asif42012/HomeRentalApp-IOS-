//
//  HomeGalleryCollectionViewViewModel.swift
//  HomeRentalApp
//
//  Created by Asif Hussain on 21/06/2024.
//

import Foundation
import UIKit

class HomeGalleryCollectionViewViewModel: NSObject {
    private var homes: [HomeInfoModel] = []
    private var cellViewModels: [HomeGalleryCollectionViewCellViewModel] = []
    func updateViewModels(with homes: [HomeInfoModel]) {
        self.homes = homes
        cellViewModels = homes.map {
            HomeGalleryCollectionViewCellViewModel(
                homeGalleryImages: $0.homeGalleryImages
            )
        }
    }
}


extension HomeGalleryCollectionViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return cellViewModels.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeGalleryCollectionViewCell.identifier, for: indexPath) as? HomeGalleryCollectionViewCell else {
            fatalError("Failed to cast")
        }
        
        let viewModel = cellViewModels[indexPath.row]
        cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.height
        let height = collectionView.frame.height
        return CGSize(width: width, height: height)
    }
}
