//
//  GetNameViewController.swift
//  Assignment4
//
//  Created by Summer Lin on 2/25/22.
//

import UIKit

protocol SendFirstLastNameDelegate {
    func setFirstAndLastName(firstName: String, lastName: String)
    
}


class GetNameViewController: UIViewController {

    var firstName : String?
    var lastName : String?
    
    var SendFirstLastNameDelegate: SendFirstLastNameDelegate?
    
    @IBOutlet weak var txtFirstName: UITextField!
   
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let firstName = firstName else {return}

        guard let lastName = lastName else {return}
        
        txtFirstName.text = firstName
        txtLastName.text = lastName
        
    }
    

    @IBAction func saveName(_ sender: Any) {
        
        guard let first = txtFirstName.text else {return}
        guard let last = txtLastName.text else {return}
        
        SendFirstLastNameDelegate?.setFirstAndLastName(firstName: first, lastName: last)
        
        self.navigationController?.popViewController(animated: true)
       
    }    

}
