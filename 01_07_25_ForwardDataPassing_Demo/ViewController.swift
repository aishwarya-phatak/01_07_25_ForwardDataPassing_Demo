//
//  ViewController.swift
//  01_07_25_ForwardDataPassing_Demo
//
//  Created by Vishal Jagtap on 31/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var cityTextField: UITextField!
    
    let reuseIdentifierForSVC = "SecondViewController"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnNextClick(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForSVC) as! SecondViewController
        
        let extractedName = nameTextField.text
        let extractedLastName = lastNameTextField.text
        let extractedCity = cityTextField.text
        
//        secondViewController.nameContainer = extractedName
//        secondViewController.lastNameContainer = extractedLastName
//        secondViewController.cityContainer = extractedCity
        
        let person = Person(name: extractedName!,
                            lastName: extractedLastName!,
                            city: extractedCity!)
        
        secondViewController.personContainer = person
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
