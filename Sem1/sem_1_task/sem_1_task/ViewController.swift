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
    
    private var button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Изменить цвет экрана", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    
    private var button2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Перейти на TableViewController", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        button1.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        button2.addTarget(self, action: #selector(tap2), for: .touchUpInside)
        
    }
    
    private var isTab = false

    
    func setupViews() {
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(button1)
        view.addSubview(button2)
        setupConstreints()
    }
    
    private func setupConstreints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.widthAnchor.constraint(equalToConstant: view.frame.width/1.5),
            label.heightAnchor.constraint(equalToConstant: view.frame.height/8),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            //button.heightAnchor.constraint(equalToConstant: view.frame.height/25),
            button.widthAnchor.constraint(equalToConstant: view.frame.width),
            
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            button1.widthAnchor.constraint(equalToConstant: view.frame.width),
            
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20),
            button2.widthAnchor.constraint(equalToConstant: view.frame.width)
        ])
    }
}

private extension ViewController {
    @objc func tap() {
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
}
private extension ViewController {
    @objc func tap2() {
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
}

private extension ViewController {
    @objc func tap1() {
        isTab.toggle()
        if isTab {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .yellow
        }
    }
}
