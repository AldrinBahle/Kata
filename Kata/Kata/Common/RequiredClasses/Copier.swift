//
//  Copier.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/25.
//

import Foundation

class Copier {
    
    // Mark: Attribute(s)
    
    private let source: Source
    private let destination: Destination
    
    // Mark: Contructor(s)
    
    init( src: Source, dest: Destination) {
        self.source = src
        self.destination = dest
    }
    
    // Mark: Method(s)
    
    func copy() {
        while case let char = source.readChar(), !char.isNewline {
            destination.writeChar(char: char)
        }
    }
}
