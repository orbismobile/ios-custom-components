//
//  CategoryTableViewController.swift
//  SideMenuIrvin
//
//  Created by Irvin Leon on 7/31/19.
//  Copyright © 2019 Vagasoft. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    var items:[Setting] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        items = ViewController.getSettings()
        self.tableView.tableFooterView = UIView()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Category"
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "celdaHeader") as? HeaderTableViewCell else {
            fatalError()
        }
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.cancelAction))
        cell.cancel.addGestureRecognizer(tap)
        cell.cancel.isUserInteractionEnabled = true
        return cell
    }
    
    @objc func cancelAction() {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
