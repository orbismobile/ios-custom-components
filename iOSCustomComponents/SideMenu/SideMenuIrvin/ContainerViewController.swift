//
//  ContainerViewController.swift
//  SideMenuIrvin
//
//  Created by Irvin Leon on 7/31/19.
//  Copyright © 2019 Vagasoft. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var sideMenuContraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuContraint.constant = 0

        NotificationCenter.default.addObserver(self, selector: #selector(toogleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func swipedLeft() {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func toogleSideMenu() {
        if sideMenuOpen {
            sideMenuContraint.constant = 0
            sideMenuOpen = false
        } else {
            sideMenuContraint.constant = 265
            sideMenuOpen = true
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    

}
