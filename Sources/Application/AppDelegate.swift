//
//  AppDelegate.swift
//  EnlightenWatcher
//
//  Created by Wei Sun on 20/7/17.
//  Copyright © 2017 sun.wei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var coordinator: Coordinator?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    coordinator = Coordinator(window!)
    
    coordinator?.appInitialization()
    
    return true
  }
}

