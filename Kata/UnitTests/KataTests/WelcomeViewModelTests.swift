//
//  WelcomeViewModelTests.swift
//  KataTests
//
//  Created by Aldrin Gama on 2022/05/31.
//

import Cuckoo
import XCTest
@testable import Kata

class WelcomeViewModelTests: XCTestCase {
    
    private var systemUnderTest: WelcomeViewModel!
    private var mockDestinationDel = MockDestinationDelegate()
    private var mockDestination = MockDestination()
    private var mockView = MockWelcomeView()
    private var mockSource = MockSource()
    var indexCounter = 0
        
    override func setUp() {
        super.setUp()
        systemUnderTest = WelcomeViewModel(view: mockView,
                                       delegate: mockDestinationDel)
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func stubView() {
        stub(mockView) {
            when($0).configureTextField(any()).thenDoNothing()
            when($0).configureCopyButton(any()).thenDoNothing()
        }
    }
    
    func testThatOnViewDidLoadComponentsAreConfiguredSuccessfully() {
        
        stubView()

        systemUnderTest.onViewDidLoad()

        verify(mockView).configureTextField(any())
        verify(mockView).configureCopyButton(any())
    }
    
    func testThatCopyScourceCopiesCharactersSuccessfuly() {

        mockSource.source = "MySwift\nmyTest"
        mockSource.index = 0

        stub(mockDestination) {
            when($0.writeChar(char: any())).thenDoNothing()
        }

        systemUnderTest.copySource()

        verify(mockDestination, never()).writeChar(char: any())
    }
}
