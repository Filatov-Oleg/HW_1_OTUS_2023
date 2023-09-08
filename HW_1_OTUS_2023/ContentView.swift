//
//  ContentView.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 04.09.2023.
//

import SwiftUI

struct ContentView: View {

    @State var tabSelection: Int = 0

    var body: some View {
        TabView(selection: $tabSelection) {
            FirstScreen(tabSelection: $tabSelection)
                .tag(1)
                .tabItem {
                    Label("First", systemImage: "1.circle")
                }
            SecondScreen()
                .tag(2)
                .tabItem {
                    Label("Second", systemImage: "2.circle")
                }
            ThirdScreen()
                .tag(3)
                .tabItem {
                    Label("Third", systemImage: "3.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
