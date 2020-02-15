//
//  ViewController.swift
//  Mvvm_Example
//
//  Created by Estique on 2/10/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getNumberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = viewModel.getUserAtIndex(index: indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SelfSizingTableViewCell
       
        cell.selfSizingLabel.text = "\(user.body!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "FirstPageVC") as! FirstPageVC
        
        vc.details = viewModel.getUserAtIndex(index: indexPath.row).title!
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBOutlet var tableView: UITableView!
    var viewModel = UserViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
    
        self.showLoadingSpinner()
        
        viewModel.getDataFromAPIHandlerClass(url: EndPoint.strUrl){
            print("Got Data From API")
            DispatchQueue.main.async {
                self.hideLoadingSpinner()
                self.tableView.reloadData()
            }
           
        }
    }


}

