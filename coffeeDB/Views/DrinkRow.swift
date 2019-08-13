//
//  DrinkRow.swift
//  coffeeDB
//
//  Created by Eric Blancas on 8/9/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import SwiftUI

struct DrinkRow : View {
    var categoryName:String
    var drinks:[Drink]
    
    var body: some View {
        VStack() {
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .center) {
                    ForEach(self.drinks.identified(by: drinks.name)) { drink in
                        NavigationLink(destination: DrinkDetail(drink: drink)) {
                            DrinkItem(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                            
                            
                        }
                        }
                    }
                }
            }
        
    }
}

#if DEBUG
struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
#endif
