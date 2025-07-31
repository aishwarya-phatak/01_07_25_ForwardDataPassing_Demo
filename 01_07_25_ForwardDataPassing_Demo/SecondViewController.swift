//
//  SecondViewController.swift
//  01_07_25_ForwardDataPassing_Demo
//
//  Created by Vishal Jagtap on 31/07/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    var nameContainer : String?
    var lastNameContainer : String?
    var cityContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindData()
    }
    
    func bindData(){
        self.nameLabel.text = nameContainer!
        self.lastNameLabel.text = lastNameContainer!
        self.cityLabel.text = cityContainer!
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
