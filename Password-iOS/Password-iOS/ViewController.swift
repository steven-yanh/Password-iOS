//
//  ViewController.swift
//  Password-iOS
//
//  Created by Huang Yan on 12/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    let loginView = PasswordField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        style()
        layout()
    }
    
    
}

extension ViewController {
    func style() {
        
    }
    func layout() {
        //add views
        view.addSubview(loginView)
        
        //toggle mask
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        NSLayoutConstraint.activate([
            loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.heightAnchor.constraint(equalToConstant: 200),
            loginView.widthAnchor.constraint(equalToConstant: 250),
            
        ])
    }
}
