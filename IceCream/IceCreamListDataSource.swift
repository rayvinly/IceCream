//
//  IceCreamListDataSource.swift
//  IceCream
//
//  Created by Raymond Law on 12/10/15.
//  Copyright © 2015 Raymond Law. All rights reserved.
//

import UIKit

class IceCreamListDataSource: NSObject, UITableViewDataSource
{
  let dataStore = IceCreamStore()
  
  // MARK: - Table view data source
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return dataStore.allFlavors().count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  {
    let flavor = dataStore.allFlavors()[indexPath.row]
    let cell = tableView.dequeueReusableCellWithIdentifier("IceCreamListCell", forIndexPath: indexPath)
    cell.textLabel?.text = flavor
    return cell
  }
}
