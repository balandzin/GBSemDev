//
//  CustomTableViewCell.swift
//  sem_1_task
//
//  Created by Антон Баландин on 16.09.23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private var circle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .green
        circle.layer.cornerRadius = 25
        return circle
    }()
    
    private var text1: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.textColor = .black
        return label
    }()
    
    private var text2: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.textColor = .black
        return label
    }()
    
    private var text3: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.textColor = .black
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(text1)
        contentView.addSubview(text2)
        contentView.addSubview(text3)
        contentView.addSubview(circle)
        setupConstreints()
    }
    
    private func setupConstreints() {
        text1.translatesAutoresizingMaskIntoConstraints = false
        text2.translatesAutoresizingMaskIntoConstraints = false
        text3.translatesAutoresizingMaskIntoConstraints = false
        circle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            circle.heightAnchor.constraint(equalToConstant: 50),
            circle.widthAnchor.constraint(equalTo: circle.heightAnchor),
            
            text1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            text1.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 30),
            text1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            
            text2.topAnchor.constraint(equalTo: text1.bottomAnchor, constant: 10),
            text2.leadingAnchor.constraint(equalTo: text1.leadingAnchor),
            text2.trailingAnchor.constraint(equalTo: text1.trailingAnchor),
            
            text3.topAnchor.constraint(equalTo: text2.bottomAnchor, constant: 10),
            text3.leadingAnchor.constraint(equalTo: text1.leadingAnchor),
            text3.trailingAnchor.constraint(equalTo: text1.trailingAnchor),
            text3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
