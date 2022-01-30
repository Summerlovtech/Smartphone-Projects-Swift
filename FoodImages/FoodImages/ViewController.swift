//
//  ViewController.swift
//  FoodImages
//
//  Created by Summer Lin on 1/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = ["foodPic1", "foodPic2", "foodPic3", "foodPic4", "foodPic5", "foodPic6", "foodPic7", "foodPic8", "foodPic9", "foodPic10"]
    let foodNames = ["Steak", "Pho", "Pad Thai", "Fired Chicken", "Roast Wagyu", "Beef Noodles", "Dim Sum", "Sukiyaki", "Roast Duck", "Wonton Soup"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = foodNames[indexPath.row]
        return cell
    }


}

