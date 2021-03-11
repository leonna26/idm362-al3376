//
//  SettingsViewController.swift
//  idm362-al3376
//
//  Created by Anna Leong on 3/11/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var expectancyText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Disable keyboard when user touches screen
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
