//
//  CostomCollectionViewCell.swift
//  sem_1_task
//
//  Created by Антон Баландин on 16.09.23.
//

import UIKit

class CostomCollectionViewCell: UICollectionViewCell {
    var tap: ((UIImage) -> Void)?
    private var imageView = UIImageView(image: UIImage (systemName: "person" ))
    
    override init (frame: CGRect) {
    super.init (frame: frame)
    setupViews ()
    let recognizer = UITapGestureRecognizer(target: self, action: #selector (cellTap))
    addGestureRecognizer(recognizer)
    }
    
    required init? (coder: NSCoder) {
    fatalError ("init(coder:) has not been implemented" )
    }
    
    private func setupViews () {
    addSubview(imageView)
    setupConstraints ()
    }
    
    
    
}
