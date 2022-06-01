// MARK: - Mocks generated from file: Kata/Common/RequiredClasses/Destination.swift at 2022-06-01 06:05:05 +0000

//
//  Destination.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/25.
//

import Cuckoo
@testable import Kata

import Foundation


 class MockDestination: Destination, Cuckoo.ProtocolMock {
    
     typealias MocksType = Destination
    
     typealias Stubbing = __StubbingProxy_Destination
     typealias Verification = __VerificationProxy_Destination

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Destination?

     func enableDefaultImplementation(_ stub: Destination) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func writeChar(char: Character)  {
        
    return cuckoo_manager.call("writeChar(char: Character)",
            parameters: (char),
            escapingParameters: (char),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.writeChar(char: char))
        
    }
    

	 struct __StubbingProxy_Destination: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func writeChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDestination.self, method: "writeChar(char: Character)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_Destination: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func writeChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.__DoNotUse<(Character), Void> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return cuckoo_manager.verify("writeChar(char: Character)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DestinationStub: Destination {
    

    

    
    
    
     func writeChar(char: Character)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockDestinationImplementation: DestinationImplementation, Cuckoo.ClassMock {
    
     typealias MocksType = DestinationImplementation
    
     typealias Stubbing = __StubbingProxy_DestinationImplementation
     typealias Verification = __VerificationProxy_DestinationImplementation

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: DestinationImplementation?

     func enableDefaultImplementation(_ stub: DestinationImplementation) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func writeChar(char: Character)  {
        
    return cuckoo_manager.call("writeChar(char: Character)",
            parameters: (char),
            escapingParameters: (char),
            superclassCall:
                
                super.writeChar(char: char)
                ,
            defaultCall: __defaultImplStub!.writeChar(char: char))
        
    }
    

	 struct __StubbingProxy_DestinationImplementation: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func writeChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.ClassStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDestinationImplementation.self, method: "writeChar(char: Character)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DestinationImplementation: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func writeChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.__DoNotUse<(Character), Void> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return cuckoo_manager.verify("writeChar(char: Character)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DestinationImplementationStub: DestinationImplementation {
    

    

    
    
    
     override func writeChar(char: Character)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Kata/WelcomeScreen/View/WelcomeView.swift at 2022-06-01 06:05:05 +0000

//
//  WelcomeView.swift
//  Kata
//
//  Created by Aldrin Gama on 2022/05/24.
//

import Cuckoo
@testable import Kata

import Foundation


 class MockWelcomeView: WelcomeView, Cuckoo.ProtocolMock {
    
     typealias MocksType = WelcomeView
    
     typealias Stubbing = __StubbingProxy_WelcomeView
     typealias Verification = __VerificationProxy_WelcomeView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WelcomeView?

     func enableDefaultImplementation(_ stub: WelcomeView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func configureTextField(_ placeHolder: String)  {
        
    return cuckoo_manager.call("configureTextField(_: String)",
            parameters: (placeHolder),
            escapingParameters: (placeHolder),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.configureTextField(placeHolder))
        
    }
    
    
    
     func configureCopyButton(_ title: String)  {
        
    return cuckoo_manager.call("configureCopyButton(_: String)",
            parameters: (title),
            escapingParameters: (title),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.configureCopyButton(title))
        
    }
    

	 struct __StubbingProxy_WelcomeView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func configureTextField<M1: Cuckoo.Matchable>(_ placeHolder: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: placeHolder) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWelcomeView.self, method: "configureTextField(_: String)", parameterMatchers: matchers))
	    }
	    
	    func configureCopyButton<M1: Cuckoo.Matchable>(_ title: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWelcomeView.self, method: "configureCopyButton(_: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WelcomeView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func configureTextField<M1: Cuckoo.Matchable>(_ placeHolder: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: placeHolder) { $0 }]
	        return cuckoo_manager.verify("configureTextField(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureCopyButton<M1: Cuckoo.Matchable>(_ title: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return cuckoo_manager.verify("configureCopyButton(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WelcomeViewStub: WelcomeView {
    

    

    
    
    
     func configureTextField(_ placeHolder: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
     func configureCopyButton(_ title: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockDestinationDelegate: DestinationDelegate, Cuckoo.ProtocolMock {
    
     typealias MocksType = DestinationDelegate
    
     typealias Stubbing = __StubbingProxy_DestinationDelegate
     typealias Verification = __VerificationProxy_DestinationDelegate

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DestinationDelegate?

     func enableDefaultImplementation(_ stub: DestinationDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentChar(char: Character)  {
        
    return cuckoo_manager.call("presentChar(char: Character)",
            parameters: (char),
            escapingParameters: (char),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentChar(char: char))
        
    }
    

	 struct __StubbingProxy_DestinationDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDestinationDelegate.self, method: "presentChar(char: Character)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DestinationDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentChar<M1: Cuckoo.Matchable>(char: M1) -> Cuckoo.__DoNotUse<(Character), Void> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: char) { $0 }]
	        return cuckoo_manager.verify("presentChar(char: Character)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DestinationDelegateStub: DestinationDelegate {
    

    

    
    
    
     func presentChar(char: Character)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

