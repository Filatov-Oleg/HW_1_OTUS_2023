//
//  ThirdScreen.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

struct ThirdScreen: View {
    
    @State private var isShowModalScreen = false
    
    var body: some View {
        Button {
            isShowModalScreen.toggle()
        } label: {
            Text("Open modal screen")
                .font(.title)
                .foregroundStyle(.black)
                .padding(16)
                .background(.orange)
                .cornerRadius(16)
                
        }
        .sheet(isPresented: $isShowModalScreen) {
            ModalScreen()
        }
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
