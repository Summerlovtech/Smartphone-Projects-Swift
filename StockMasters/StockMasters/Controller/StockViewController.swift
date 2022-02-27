//
//  StockViewController.swift
//  StockMasters
//
//  Created by Summer Lin on 2/27/22.
//

import UIKit
import RealmSwift

class StockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(Realm.Configuration.defaultConfiguration.fileURL?.path)
    }
    

    @IBAction func addDBAction(_ sender: Any) {
        let stock = StockStort()
        stock.symbol = "AAPL"
        stock.price = 120.96
        stock.volume = 332607163
        
        do {
            let realm = try Realm()
            try realm.write({
                realm.add(stock, update: .modified)
                })
            }catch{
                print("Error in writing to db")
            }
    }
    func loadStockValue(){
        do{
           let realm = try Realm()
            let stocks = realm.objects(StockStort.self)
            print(stocks)
            
            for stock in stocks {
                print(stock.symbol)
            }
            
        }catch{
            print("Error in reading from Realm")
        }
    }
    
    func getTSLA() -> StockStort {
        do {
            let realm = try Realm()
            let stocks = realm.objects(StockStort.self)
            for stock in stocks {
                if stock.symbol == "AAPL" {
                    return stock
                }
            }
        } catch {
            print("error")
        }
        return StockStort()
    }
    
    @IBAction func deleteTSLAStock(_ sender: Any) {
//        let tsla = StockStort()
//        tsla.symbol = "TSLA"
        deleteStockFromDb(stock: getTSLA())
        
    }
    
    func deleteStockFromDb(stock : StockStort) {
        do {
            let realm = try Realm()
            try realm.write({
                realm.delete(stock)
                })
        }catch{
    }
    
    
    
    
}

}
