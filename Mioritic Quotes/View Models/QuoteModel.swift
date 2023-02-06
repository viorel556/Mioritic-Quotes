//
//  QuoteModel.swift
//  Mioritic Quotes
//
//  Created by Viorel Harabaru  on 22.01.2023.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quote = [Quote]()
    
    init() {
        self.quote = DataService.getLocalData()
    }
}
