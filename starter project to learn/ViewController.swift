//
//  ViewController.swift
//  Learn Activity Indicator
//
//  Created by Steven Hertz on 12/25/19.
//  Copyright © 2019 DevelopItSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    

    
    fileprivate func setupScreen() {
        
        view.backgroundColor = UIColor.gray
        
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = .center
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let status = UILabel()
        status.translatesAutoresizingMaskIntoConstraints = false
        status.text = "Here is some text"
        status.textColor = UIColor.white
        status.font = UIFont.preferredFont(forTextStyle: .body)
        status.numberOfLines = 0
        status.textAlignment = .center
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(button1Clicked), for: .touchUpInside)
        button.setTitle("Click Me!", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        
        stackView.addArrangedSubview(status)
        stackView.addArrangedSubview(button)
        
    }

    
    
    fileprivate func setupScreen3() {
        
        view.backgroundColor = UIColor.gray

        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = .center
        stackView.axis = .vertical
        view.addSubview(stackView)

        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        let status = UILabel()
        status.translatesAutoresizingMaskIntoConstraints = false
        status.text = "Submitting…"
        status.textColor = UIColor.white
        status.font = UIFont.preferredFont(forTextStyle: .title1)
        status.numberOfLines = 0
        status.textAlignment = .center

        let spinner = UIActivityIndicatorView(style: .whiteLarge)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.hidesWhenStopped = true
        spinner.startAnimating()

        stackView.addArrangedSubview(status)
        stackView.addArrangedSubview(spinner)
        
    }

    
    @objc func button1Clicked() {
        print("I was clicked")
    }
    

    
    
}

