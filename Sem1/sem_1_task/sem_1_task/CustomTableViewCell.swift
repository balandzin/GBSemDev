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
            text1.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            text1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            text1.widthAnchor.constraint(equalToConstant: view.frame.width/1.5),
            text1.heightAnchor.constraint(equalToConstant: view.frame.height/8),
            
            text2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            //button.heightAnchor.constraint(equalToConstant: view.frame.height/25),
            text2.widthAnchor.constraint(equalToConstant: view.frame.width),
            
            text3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text3.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            text3.widthAnchor.constraint(equalToConstant: view.frame.width)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
