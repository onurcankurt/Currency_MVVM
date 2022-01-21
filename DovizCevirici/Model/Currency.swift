//
//  Currency.swift
//  DovizCevirici
//
//  Created by user210109 on 1/21/22.
//

import Foundation

struct Currency : Decodable{
    let success : Bool
    let timestamp : Int64
    let base : String
    let date: String
    let rates : Dictionary<String, Double>
}
