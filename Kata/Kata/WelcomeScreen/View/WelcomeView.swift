//
//  WelcomeView.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/24.
//

import Foundation

protocol WelcomeView: AnyObject {
    func configureTextField(_ placeHolder: String)
    func configureCopyButton(_ title: String)
}

protocol DestinationDelegate: AnyObject {
    func presentChar(char: Character)
}
