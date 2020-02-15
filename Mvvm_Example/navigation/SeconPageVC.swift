//
//  SeconPageVC.swift
//  Mvvm_Example
//
//  Created by Estique on 2/12/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit


class SeconPageVC : ViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    
    override func viewDidLoad() {
        
        countries += ["estonia", "france", "germany", "ireland"
        , "italy", "monaco", "nigeria", "poland", "russia",
          "spain", "uk"
        ]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
        
    }
    
    func askQuestion () {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
}
