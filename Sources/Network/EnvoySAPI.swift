//
//  EnvoySAPI.swift
//  EnlightenWatcher
//
//  Created by Wei Sun on 22/7/17.
//  Copyright © 2017 sun.wei. All rights reserved.
//

import Foundation

struct EnvoySAPI {
  enum Host: String {
    case local = "http://10.1.1.249"
    
    fileprivate static var `default`: Host { return .local }
  }
  
  enum Version: String {
    case v1 = "api/v1"
    
    fileprivate static var `default`: Version { return .v1 }
  }
  
  enum Endpoint: String {
    case production
    case consumption
  }
  
  enum Path: String {
    case home
    
    fileprivate static var `default`: Path { return .home }
  }
  
  static func apiUrl(host: Host, version: Version, endpoint: Endpoint) {
  
  }
  
  static func fileUrl(host: Host, path: Path) {
    
  }
}
