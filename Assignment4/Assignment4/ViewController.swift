//
//  ViewController.swift
//  Assignment4
//
//  Created by Summer Lin on 2/25/22.
//

import UIKit

class ViewController: UIViewController, SendFirstLastNameDelegate {
    
    

    @IBOutlet weak var lblFirstName: UILabel!
    
    @IBOutlet weak var lblLastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getNameFromUser(_ sender: Any) {
        performSegue(withIdentifier: "segueGetName", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueGetName"{
            let getNameVC = segue.destination as! GetNameViewController
            guard let firstName = lblFirstName.text else {return}
            guard let lastName = lblLastName.text else {return}
            
            getNameVC.firstName = firstName
            getNameVC.lastName = lastName
            getNameVC.SendFirstLastNameDelegate = self
            
            
        }
    }
    
    func setFirstAndLastName(firstName: String, lastName: String) {
        lblFirstName.text = firstName
        lblLastName.text = lastName
    }
    
}

