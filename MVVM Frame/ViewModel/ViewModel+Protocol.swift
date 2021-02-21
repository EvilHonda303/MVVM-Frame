//
//  ModelView+Protocol.swift
//  MVVM Frame
//
//  Created by macintosh on 21/02/2021.
//

import UIKit

// V -> VM
protocol ViewModelCreator {
    associatedtype InitViewModelType
    init(with data: InitViewModelType)
}

// V <- VM
protocol ViewModelProvider {
    // эта функция (или переписать интерфейс) выкидывает на уровень выше "болванку" (вью прогрузки)
    // и отправляет синхронный запрос на создание модельки
    // получая модель отдает - меняет болванку на конкретную картинку или картинку ошибки от сервера!
    mutating func setUp(in superView: UIView)
}

typealias ViewModel = ViewModelCreator & ViewModelProvider

// Factory Method To Create A Concrete Class
// How to create a conrete model.
// T.Type requires a concrete ViewModel type (use this construction ConcreteViewModelTypeName.self)
// T.InitViewModelType requires an argument of type that set up by ConcreteViewModelTypeName as an typealias for ViewModel's protocol assosiated type InitViewModelType
func viewModelFactoryMethod<T: ViewModel>(object ofType: T.Type, with data: T.InitViewModelType) -> T {
    return T.init(with: data)
}
