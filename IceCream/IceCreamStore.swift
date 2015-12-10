//
//  IceCreamStore.swift
//  IceCream
//
//  Created by Raymond Law on 12/10/15.
//  Copyright © 2015 Raymond Law. All rights reserved.
//

import Foundation

class IceCreamStore
{
  private let flavors = ["Vanilla", "Chocolate", "Strawberry", "Coffee", "Cookies & Cream", "Rum Raisins", "Mint Chocolate Chip", "Peanut Butter Cup"]
  
  func allFlavors() -> [String]
  {
    return flavors
  }
}