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
  let dataSource = IceCreamListDataSource()
  
  // MARK: - View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    tableView.dataSource = dataSource
  }
}
