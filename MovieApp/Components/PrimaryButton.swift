//
//  PrimaryButton.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

struct PrimaryButton: View {
    var body: some View {
        Button{
            print("Button tapped")
        } label: {
            HStack{
                Text("Enter Now")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding(10)
            }
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .tint(.yellow)
        .cornerRadius(15)
    }
}

#Preview {
    PrimaryButton()
}
