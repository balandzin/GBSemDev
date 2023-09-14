//
//  ViewController.swift
//  sem_1_task
//
//  Created by Антон Баландин on 14.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    private var label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.textAlignment = .center
        label.textColor = .white
        label.text = "Мое первое приложение!"
        return label
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Перейти на новый экран", for: .normal)
        button.setTitle("нажатие", for: .highlighted)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
    }
    
    func setupViews() {
        view.addSubview(label)
        view.addSubview(button)
        setupConstreints()
    }
    
    private func setupConstreints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.widthAnchor.constraint(equalToConstant: view.frame.width/1.5),
            label.heightAnchor.constraint(equalToConstant: view.frame.height/8),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            //button.heightAnchor.constraint(equalToConstant: view.frame.height/25),
            button.widthAnchor.constraint(equalToConstant: view.frame.width)
        ])
    }
}

private extension ViewController {
    @objc func tap() {
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
}
