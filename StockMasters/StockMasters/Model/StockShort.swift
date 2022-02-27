//
//  StockShort.swift
//  StockMasters
//
//  Created by Summer Lin on 2/27/22.
//

import Foundation
import RealmSwift

class StockStort : Object{
    @objc dynamic var symbol : String = ""
    @objc dynamic var price : Float = 0.0
    @objc dynamic var volume : Int = 0
    
    override static func primaryKey() -> String? {
        return "symbol"
    }
}

