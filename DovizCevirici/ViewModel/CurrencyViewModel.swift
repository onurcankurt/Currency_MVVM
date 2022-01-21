//
//  CurrencyViewModel.swift
//  DovizCevirici
//
//  Created by user210109 on 1/21/22.
//

import Foundation


struct CurrencyViewModel{
    let currency : Currency
//    let currencyName : String
//    let currencyValue : Double
//    let currencyNames : [String]
//    let currencyValues : [Double]
    
    
    func numberOfRowsInSection() -> Int {
        return self.currency.rates.capacity-1
    }
}
