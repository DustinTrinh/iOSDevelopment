//
//  CodableBundleExtension.swift
//  CodableBundleExtension
//
//  Created by Dustin Trinh on 2021-08-30.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        //1. Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to find/locate \(file) in the bundle")
        }
        
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) in the bundle")
        }
        
        //3. Create a decoder
        let decoder = JSONDecoder()
        
        //4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) in the bundle")
        }
        
        //5. Return ready to use data
        return loaded
    }
}
