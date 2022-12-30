//
//  ViewController.swift
//  Password-iOS
//
//  Created by Huang Yan on 12/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    let passwordView = PasswordField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordView.delegate = self
        style()
        layout()
    }
    
    
}

extension ViewController {
    func style() {
        
    }
    func layout() {
        //add views
        view.addSubview(passwordView)
        
        //toggle mask
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        NSLayoutConstraint.activate([
            passwordView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            passwordView.heightAnchor.constraint(equalToConstant: 200),
            passwordView.widthAnchor.constraint(equalToConstant: 250),
            
        ])
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
    }
}
