//
//  InitializationWarningViewController.swift
//  EnlightenWatcher
//
//  Created by Wei Sun on 24/7/17.
//  Copyright © 2017 sun.wei. All rights reserved.
//

import UIKit

class InitializationWarningViewController: UIViewController, Coordinated {
  
  var coordinator: Coordination.Coordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func reloadButtonTapped(_ sender: Any) {
    coordinator?.appInitialization()
  }
}
