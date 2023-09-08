//
//  SecondScreen.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

struct SecondScreen: View {
    
    @EnvironmentObject var productsViewModel: ProductsViewModel

    var body: some View {
        NavigationView {
            List(productsViewModel.products, id: \.self) { product in
                NavigationLink {
                    DetailScreen(product: product)
                } label: {
                    Text(product)
                }
            }
            .navigationTitle("Second Screen")
        }
        .navigationViewStyle(.stack)
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
