//
//  Model+Protocol.swift
//  MVVM Frame
//
//  Created by macintosh on 21/02/2021.
//

import UIKit

protocol ModelCreator {
    associatedtype InitModelType
    
    var definingData: InitModelType { get }
    
    init(with data: InitModelType)
}

protocol ModelProvider {
    // providing type is tuple
    associatedtype ProvidingModelType
    
    var readyToUse: ProvidingModelType { get }
}

typealias Model = ModelCreator & ModelProvider

// Factory Method To Create a instance of concrete model
// How to create an instance of conrete model?
// T.Type requires a concrete Model type (use this construction ConcreteModelTypeName.self)
// T.InitViewModelType requires an argument of type that set up by ConcreteViewModelTypeName as an typealias for Model's protocol assosiated type InitModelType

func modelFactoryMethod<T: Model>(object ofType: T.Type, with data: T.InitModelType) -> T {
    return T.init(with: data)
}

