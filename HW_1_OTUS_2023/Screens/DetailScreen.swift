//
//  DetailScreen.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

struct DetailScreen: View {
    
    var product: String
    
    var body: some View {
        VStack {
            Text(product)
        }
        
        
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(product: "Milk")
    }
}

