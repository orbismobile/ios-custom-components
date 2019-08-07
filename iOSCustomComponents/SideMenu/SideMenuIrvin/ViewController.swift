//
//  ViewController.swift
//  SideMenuIrvin
//
//  Created by Irvin Leon on 7/31/19.
//  Copyright © 2019 Vagasoft. All rights reserved.
//

import UIKit

struct Setting {
    var field: String
    var values: [String]
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCategoryTapped() {
        print("toogle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    static func getSettings() -> [Setting] {
        var settings: [Setting] = []
        settings.append(Setting(field:"Primero",values:["valor","valor2","valor3"]))
        settings.append(Setting(field:"Segundo",values:["valor"]))
        settings.append(Setting(field:"Tercero",values:["valor","valor2"]))
        settings.append(Setting(field:"Cuarto",values:["valor"]))
        return settings
    }
    

}

