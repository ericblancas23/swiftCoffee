//
//  Drink.swift
//  coffeeDB
//
//  Created by Eric Blancas on 8/9/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import Foundation
import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
