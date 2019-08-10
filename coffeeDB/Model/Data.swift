//
//  Data.swift
//  coffeeDB
//
//  Created by Eric Blancas on 8/9/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import Foundation

let drinkData:[Drink] = load("drinks.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("coudldn't load \(filename) from main bundler: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldn't load \(filename) as \(T.self): \n\(error)")
    }
}
