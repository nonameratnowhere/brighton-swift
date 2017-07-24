//
//  MainTabBarController.swift
//  EnlightenWatcher
//
//  Created by Wei Sun on 24/7/17.
//  Copyright © 2017 sun.wei. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, Coordinated {
  
  var coordinator: Coordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the
  }
}

extension MainTabBarController: UITabBarControllerDelegate {
  
}
