//
//  WelcomeViewModel.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/24.
//

import Foundation

final class WelcomeViewModel {
    
    // MARK: String(s)
    
    private let placeHolder = "Please enter text"
    private let copyButtonTitle = "Copy"
    private let presentButtonTitle = "Present copied text"
    
    // MARK: Dependencies
    
    private weak var view: WelcomeView?
    private weak var dest: DestinationDelegate?
    
    // MARK: Constructor(s)
    
    init(view: WelcomeView, delegate: DestinationDelegate) {
        self.view = view
        self.dest = delegate
    }
    
    // MARK: Attribute(s)
    
    var sourceValue: String = ""
    
    // MARK: Method(s)
    
    func onViewDidLoad() {
        self.view?.configureTextField(placeHolder)
        self.view?.configureCopyButton(copyButtonTitle)
    }
    
    @objc func copySource() {
        let copier = Copier(src: SourceImplementation(source: sourceValue),
                            dest: DestinationImplementation(delegate: dest))
        copier.copy()
    }
}
