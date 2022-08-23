//
//  SecondViewController.swift
//  Day6_UserDefaults
//
//  Created by Chinh Ng on 08/06/2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String = ""
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = "Hello " + name
        
    }

}
