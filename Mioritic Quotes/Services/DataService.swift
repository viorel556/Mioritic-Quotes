//
//  DataService.swift
//  Mioritic Quotes
//
//  Created by Viorel Harabaru  on 22.01.2023.
//


import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
    
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        // check if pathstring is not equal with nil, otherwilse run the code:
        guard pathString != nil else {
            return [Quote]()
        }
        
        // create a url object
        //  we can safely unwrap it since the guardian checked for us
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // create a data object
            let data = try Data(contentsOf: url)
            
            // Create a decoder
            let decoder = JSONDecoder()
            
            // Decoding the data with a json decoder
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                // add the uniquie ID's
                for i in quoteData {
                    i.id = UUID()
                }
                
                // Return the recipes:
                return quoteData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            /* error with getting data */
            print(error)
        }
    return [Quote]()
    }

}
