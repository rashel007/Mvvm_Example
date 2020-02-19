//
//  SeconPageVC.swift
//  Mvvm_Example
//
//  Created by Estique on 2/12/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

let secondvcObserver = "com.ea.secondvcobserver"

class SeconPageVC : ViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var testLabelSecond: UILabel!
    
    var countries = [String]()
    
    let observer = Notification.Name(rawValue: secondvcObserver)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
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
        
        makeObservers()
        
    }
    
    func askQuestion () {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    
    func makeObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(SeconPageVC.updateView(notification:)), name: observer, object: nil)
    }
    
    @objc func updateView(notification: Notification) {
        print("notification 1 \(notification.name.rawValue)")
        testLabelSecond.text = notification.name.rawValue
    }
}
