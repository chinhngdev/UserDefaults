//
//  ViewController.swift
//  Day6_UserDefaults
//
//  Created by Chinh Ng on 08/06/2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameTxtField: UITextField!
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(defaults.string(forKey: "name") ?? "")
        nameTxtField.text = defaults.string(forKey: "name") ?? ""  // Lấy value từ key lưu trong UserDefaults
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = nameTxtField.text ?? ""
        defaults.set(name, forKey: "name")  // Gán value cho key trong UserDefaults

        let destinationVC = segue.destination as! SecondViewController
        destinationVC.name = name

    }
}


/*
 * Tham khảo:
 - https://cocoacasts.com/ud-1-how-to-use-user-defaults-in-swift
 - https://developer.apple.com/documentation/foundation/userdefaults
 - https://www.hackingwithswift.com/example-code/system/how-to-save-user-settings-using-userdefaults
 */
