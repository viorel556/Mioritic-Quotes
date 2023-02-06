//
//  Quote.swift
//  Mioritic Quotes
//
//  Created by Viorel Harabaru  on 22.01.2023.
//

import Foundation

class Quote: Identifiable,
            Decodable {
    
    var id: UUID?
    
    var author:String = ""
    var image:String
    var quotes:[String]
    
}
