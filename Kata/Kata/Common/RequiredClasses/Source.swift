//
//  Source.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/25.
//

import Foundation

protocol Source {
    func readChar() -> Character
    var source: String { get set }
}

class SourceImplementation: Source {
    
    // Mark: Attribute(s)
    
    private var index: Int = 0
    var source: String
    
    // Mark: Constructor(s)
    
    init(source: String) {
        self.source = source
    }
    
    // Mark: Method(s)
    
    func readChar() -> Character {
        index += 1
        guard index <= source.count else { return Character("\n") }
        return Character(source[index - 1])
    }
}

extension String {
    subscript(offset: Int ) -> String {
     return String (self[index(startIndex, offsetBy: offset)])
    }
}
