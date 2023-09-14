//
//  ViewController2ViewController.swift
//  sem_1_task
//
//  Created by Антон Баландин on 14.09.23.
//

import UIKit

class NewViewController: UIViewController {
    
    var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    var view3: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    var view4: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    var view5: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var view6: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Next ViewController"
        setupViews()
        
    }
    
    func setupViews() {
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        setupConstreints()
    }
    
    private func setupConstreints() {
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        view5.translatesAutoresizingMaskIntoConstraints = false
        view6.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            view1.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view1.heightAnchor.constraint(equalToConstant: 120),
            
            view2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            view2.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view2.heightAnchor.constraint(equalToConstant: 120),
            
            view3.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 5),
            view3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            view3.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view3.heightAnchor.constraint(equalToConstant: 120),
            
            view4.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 5),
            view4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            view4.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view4.heightAnchor.constraint(equalToConstant: 120),
            
            view5.topAnchor.constraint(equalTo: view4.bottomAnchor, constant: 5),
            view5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            view5.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view5.heightAnchor.constraint(equalToConstant: 120),
            
            view6.topAnchor.constraint(equalTo: view4.bottomAnchor, constant: 5),
            view6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            view6.widthAnchor.constraint(equalToConstant: view.frame.width/2 - 7.5),
            view6.heightAnchor.constraint(equalToConstant: 120)
            
            
        
        
        
        
        
        ])
    }
    
}
