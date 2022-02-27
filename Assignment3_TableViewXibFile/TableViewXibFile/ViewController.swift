//
//  ViewController.swift
//  TableViewXibFile
//
//  Created by Summer Lin on 2/20/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name : String?
    
    
    let images = ["foodPic1", "foodPic2", "foodPic3", "foodPic4", "foodPic5", "foodPic6", "foodPic7", "foodPic8", "foodPic9", "foodPic10"]
    let imageLable = ["Steak", "Pho", "Pad Thai", "Fired Chicken", "Roast Wagyu", "Beef Noodles", "Dim Sum", "Sukiyaki", "Roast Duck", "Wonton Soup"]
    
    @IBOutlet weak var tblView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblImage.text = imageLable[indexPath.row]
        
        return cell
    }


}

