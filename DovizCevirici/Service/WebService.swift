//
//  WebService.swift
//  DovizCevirici
//
//  Created by user210109 on 1/21/22.
//

import Foundation

class WebService{
    
    func downloadCurrencies(url : URL, completion: @escaping (Currency?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                let currencyList = try? JSONDecoder().decode(Currency.self, from: data)
                
                print(currencyList)
                
                if let currencyList = currencyList {
                    completion(currencyList)
                }
            }
        }.resume()
        
    }
    
}
