//
//  DrinkRow.swift
//  coffeeDB
//
//  Created by Eric Blancas on 8/9/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName:String
    var drinks:[Drink]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

#if DEBUG
struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
#endif
