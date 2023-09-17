//
//  CollectionViewController.swift
//  sem_1_task
//
//  Created by Антон Баландин on 16.09.23.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CostomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
        collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        guard let cell = cell as? CostomCollectionViewCell else {
        return UICollectionViewCell()
        }
        cell.tap = { [weak self] image in
            self?.navigationController?.pushViewController(ImageViewController(image: image), animated: true)
        }
        return cell
    }

  

}
