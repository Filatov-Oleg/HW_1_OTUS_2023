//
//  FirstScreen.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

struct FirstScreen: View {
    
    @Binding var tabSelection: Int
    @EnvironmentObject var productsViewModel: ProductsViewModel
    @State var isAnimating: Bool = true

    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                Button {
                    self.tabSelection = 2
                } label: {
                    Text("Open Second Screen")
                        .font(.title)
                        .foregroundStyle(.black)
                        .padding(16)
                        .background(.indigo)
                        .cornerRadius(16)
                }

                NavigationLink {
                    DetailScreen(product: productsViewModel.products[1])
                } label: {
                    Text("Open \(productsViewModel.products[1]) Detail Screen of Second Screen")
                        .font(.title)
                        .foregroundStyle(.black)
                        .padding(16)
                        .background(.mint)
                        .cornerRadius(16)
                }
                
                Button {
                    withAnimation(.easeOut) {
                        isAnimating.toggle()
                    }
                } label: {
                    Text(isAnimating ? "Stop activity indicator" : "Start activity indicator")
                        .font(.title)
                        .foregroundStyle(.black)
                        .padding(16)
                        .background(.teal)
                        .cornerRadius(16)
                }
                ActivityIndicator(isAnimating: $isAnimating)
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabSelection: .constant(0))
    }
}
