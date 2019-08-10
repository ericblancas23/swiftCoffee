//
//  DrinkDetail.swift
//  coffeeDB
//
//  Created by Eric Blancas on 8/9/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    var drink:Drink
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.35)
                    .blur(radius: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(drink.name)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
#endif
