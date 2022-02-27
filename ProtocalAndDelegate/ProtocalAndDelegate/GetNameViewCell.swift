//
//  GetNameViewCell.swift
//  ProtocalAndDelegate
//
//  Created by Summer Lin on 2/13/22.
//

import UIKit

protocol SendFirstAndLastNameDelegate{
    func setFirstAndLastName(firstName: String, lastName: String)
}
class GetNameViewCell: UITableViewCell {

    var firstName: String?
    var lastName: String?
    var 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
