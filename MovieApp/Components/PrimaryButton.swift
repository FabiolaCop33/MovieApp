//
//  PrimaryButton.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

struct PrimaryButton: View {
    var body: some View {
            Button {
                print("Button tapped")
            } label: {
                HStack {
                    Text("Enter Now")
                        .fontWeight(.bold)
                        .foregroundColor(.init(red: 0.261, green: 0.261, blue: 0.261))
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .background {
                            let cornerRadius = 15.0
                            RoundedRectangle(cornerRadius: cornerRadius)
                            .foregroundColor(.yellow)
                            .background {
                                RoundedRectangle(cornerRadius: cornerRadius)
                                    .stroke(Color("PrimaryButttonBorderColor"), lineWidth: 2)
                            }
                        }
                        .padding(.horizontal, 80)
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
    }

#Preview {
    PrimaryButton()
}
