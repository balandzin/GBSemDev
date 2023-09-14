//
//  ViewController.swift
//  sem_1
//
//  Created by Антон Баландин on 14.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Text!"
        label.textAlignment = .center
        label.backgroundColor = .green
        return label
    }()
    
    private var button: UIButton = {
        var button = UIButton()
        button.setTitle("Tap!", for: .normal)
        button.setTitle("Tap action", for: .highlighted)
        button.backgroundColor = .green
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.red, for: .highlighted)
        return button
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupViews()
        
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    func setupViews() {
        view.addSubview(label)
        view.addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor
                                       , constant: 20),
            //            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            //            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            label.widthAnchor.constraint(equalToConstant: view.frame.width/1.5),
            label.heightAnchor.constraint(equalToConstant: view.frame.width/4),
            //label.heightAnchor.constraint(equalToConstant: 100),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 15),
            //            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            //            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            button.widthAnchor.constraint(equalToConstant: view
                .frame.size.width/1.1),
            button.heightAnchor.constraint(equalToConstant: view
                .frame.size.height/25)
            
            
        ])
    }
}

private extension ViewController {
    @objc func tap() {
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
}

