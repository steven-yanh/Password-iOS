//
//  PasswordField.swift
//  Password-iOS
//
//  Created by Huang Yan on 12/27/22.
//

import Foundation
import UIKit

class PasswordField: UIView {
    
    let VStack = UIStackView()
    
        let HStack = UIStackView()
            let lockImageView = UIImageView()
            let passwordField = UITextField()
            let eyeButton = UIButton()
        let divider = UIView()
        let promptLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}

extension PasswordField {
    func setup() {
        passwordField.delegate = self
        eyeButton.addTarget(self, action: #selector(toggleSecureMode), for: .touchUpInside)
        eyeButton.setImage(UIImage(systemName: "eye.circle"), for: .normal)
        lockImageView.image = UIImage(systemName: "lock.fill")
        
    }
    func style() {
        VStack.axis = .vertical
        VStack.spacing = 6
        
        HStack.axis = .horizontal
        HStack.spacing = 8
        
        passwordField.placeholder = "New Password"
        passwordField.isSecureTextEntry = true
        
        divider.backgroundColor = .separator
        
        promptLabel.text = "Enter password"
        promptLabel.numberOfLines = 0
        promptLabel.textColor = .red
        promptLabel.font = UIFont.preferredFont(forTextStyle: .title3)
        
    }
    
    func layout() {
        //addViews
        addSubview(VStack)
        VStack.addArrangedSubview(HStack)
        VStack.addArrangedSubview(divider)
        VStack.addArrangedSubview(promptLabel)
        HStack.addArrangedSubview(lockImageView)
        HStack.addArrangedSubview(passwordField)
        HStack.addArrangedSubview(eyeButton)
        
        
        //toggle mask to false
        VStack.translatesAutoresizingMaskIntoConstraints = false
        HStack.translatesAutoresizingMaskIntoConstraints = false
        lockImageView.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        divider.translatesAutoresizingMaskIntoConstraints = false
        promptLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //constraint
        lockImageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        passwordField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        eyeButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        NSLayoutConstraint.activate([
            divider.leadingAnchor.constraint(equalTo: leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 3),

        ])
    }
}
//MARK: - TextFieldDelegate
extension PasswordField: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
//MARK: - Action
extension PasswordField {
    @objc func toggleSecureMode() {
        
    }
}
