//
//  Coordinator.swift
//  EnlightenWatcher
//
//  Created by Wei Sun on 21/7/17.
//  Copyright © 2017 sun.wei. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinated {
  var coordinator: Coordination.Coordinator? { get set }
}

struct Coordination {
  
  class Coordinator: Coordinated {
    var coordinator: Coordinator?
    
    private weak var window: UIWindow?
    private var appInitialized: Bool = false
    
    let network: Network
    
    init(_ window: UIWindow) {
      self.window = window
      
      network = Network()
    }
    
    func appInitialization() {
      print("App initializing...")
      
      if appInitialized {
        displayMainScreen()
      } else {
        appInitialized = true
        displayInitializationWarning()
      }
    }
    
    func displayMainScreen() {
      print("App initialized")
      let mainTabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MainTabBarController
      
      mainTabBarController.coordinator = self
      window?.rootViewController = mainTabBarController
    }
    
    private func displayInitializationWarning() {
      print("App initialzation failure")
      let warningViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InitializationWarning") as! InitializationWarningViewController
      
      warningViewController.coordinator = self
      window?.rootViewController = warningViewController
    }
  }
}
