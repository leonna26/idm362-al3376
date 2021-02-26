//
//  SettingsViewController.swift
//  idm362-al3376
//
//  Created by Anna Leong on 2/26/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var expectancyText: UITextField!
    @IBOutlet var ageText: UITextField!
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
