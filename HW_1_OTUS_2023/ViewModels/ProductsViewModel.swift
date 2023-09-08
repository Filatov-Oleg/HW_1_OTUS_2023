//
//  ProductsViewModel.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

final class ProductsViewModel: ObservableObject {
    @Published var products = ["Milk ", "Fruits", "Meat", "Vegetables", "Cake"]
}
