//
//  ModalScreen.swift
//  HW_1_OTUS_2023
//
//  Created by Филатов Олег Олегович on 06.09.2023.
//

import SwiftUI

struct ModalScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Modal Screen")
            
            Button {
                dismiss()
            } label: {
                Text("Close modal screen")
                    .font(.title)
                    .foregroundStyle(.black)
                    .padding(16)
                    .background(.cyan)
                    .cornerRadius(16)
            }

        }
        
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
