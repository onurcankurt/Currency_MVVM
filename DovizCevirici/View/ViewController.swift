//
//  ViewController.swift
//  DovizCevirici
//
//  Created by user210109 on 1/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    
    
    
    
    private var currencyViewModel : CurrencyViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func getData(){
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=602ad5381aca2c1865a382904ba933c1")!
        WebService().downloadCurrencies(url: url) { currencies in
            if let currencies = currencies {
                self.currencyViewModel = CurrencyViewModel(currency: currencies)
            }
        }
        
    }
    
    
    @IBAction func verileriAl(_ sender: Any) {
        getData()
        let currency = self.currencyViewModel.currency
        if let rates = currency.rates as? [String: Any] {
            if let cad = rates["CAD"] as? Double{
                self.cadLabel.text = "CAD: \(cad)"
            }
            if let chf = rates["CHF"] as? Double{
                self.chfLabel.text = "CHF: \(chf)"
            }
            
            if let gbp = rates["GBP"] as? Double{
                self.gbpLabel.text = "GBP: \(gbp)"
            }
            
            if let jpy = rates["JPY"] as? Double{
                self.jpyLabel.text = "JPY: \(jpy)"
            }
            
            if let usd = rates["USD"] as? Double{
                self.usdLabel.text = "USD: \(usd)"
            }
            
            if let turkish = rates["TRY"] as? Double{
                self.tryLabel.text = "TRY: \(turkish)"
            }
        }
    }
}
