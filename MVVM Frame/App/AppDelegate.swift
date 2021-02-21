//
//  AppDelegate.swift
//  MVVM Frame
//
//  Created by macintosh on 21/02/2021.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = self.window ?? UIWindow()
        self.window!.backgroundColor = .white
        self.window!.rootViewController = DummyViewController()
        self.window!.makeKeyAndVisible()
        
        
        return true
    }
}

