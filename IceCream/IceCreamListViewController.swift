//
//  IceCreamListViewController.swift
//  IceCream
//
//  Created by Raymond Law on 12/10/15.
//  Copyright © 2015 Raymond Law. All rights reserved.
//

import UIKit

class IceCreamListViewController: UITableViewController
{
  // MARK: - View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }
}

// MARK: - Table view data source

extension IceCreamListViewController
{
  var dataStore: IceCreamStore {
    return IceCreamStore()
  }
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int
  {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return dataStore.allFlavors().count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  {
    let flavor = dataStore.allFlavors()[indexPath.row]
    let cell = tableView.dequeueReusableCellWithIdentifier("IceCreamListCell", forIndexPath: indexPath)
    cell.textLabel?.text = flavor
    return cell
  }
}
