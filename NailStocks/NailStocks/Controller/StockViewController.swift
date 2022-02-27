//
//  ViewController.swift
//  NailStocks
//
//  Created by Summer Lin on 2/20/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner
import SwiftSpinner

class ViewController: UIViewController {
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStockPrice(_ sender: Any) {
        
        guard let symbol = txtStockSymbol.text else {return}
            //let url = "\(shortQuoteURL)\(symbol)?apiKey=\(apiKey)"
        let url = "\(shortQuoteURL)\(symbol)?apikey=\(apiKey)"
        print(url)
        AF.request(url).responseJSON { response in
            if response.error != nil {
                SwiftSpinner.hide(nil)
                print (response.error!)
                return
            }
            let stocks = JSON(response.data!).array
            guard let stock = stocks!.first else {return}
            
            let quote = QuoteShort()
            quote.symbol = stock["symbol"].stringValue
            quote.price = stock["price"].floatValue
            quote.volume = stock["volume"].intValue
            
            self.lblStockPrice.text = "\(quote.symbol) : \(quote.price)"
            
        }
    }
    
}

