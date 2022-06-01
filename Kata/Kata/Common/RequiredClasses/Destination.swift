//
//  Destination.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/25.
//

import Foundation

protocol Destination {
    func writeChar(char: Character)
}

class DestinationImplementation: Destination {
    
    // Mark: Dependancy
    
    private weak var delegate: DestinationDelegate?
    
    // Mark: Constructor(s)
    
    init(delegate: DestinationDelegate?) {
        self.delegate = delegate
    }
    
    // Mark: Method(s)
    
    func writeChar(char: Character) {
        delegate?.presentChar(char: char)
    }
}
