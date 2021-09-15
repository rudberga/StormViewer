//
//  ViewController.swift
//  Project1
//
//  Created by Alexander Rudberg on 2021-09-15.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                //picture to load
                pictures.append(item)
            }
        }
    }
}

