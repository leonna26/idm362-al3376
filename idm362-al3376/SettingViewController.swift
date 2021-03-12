//
//  SettingViewController.swift
//  idm362-al3376
//
//  Created by Anna Leong on 3/11/21.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var expectancyText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        
        let doneButton = UIBarButtonItem (barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))

        toolBar.setItems([flexibleSpace, doneButton], animated: false)

        // Do any additional setup after loading the view.
        
        ageText.inputAccessoryView = toolBar
        expectancyText.inputAccessoryView = toolBar
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
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
