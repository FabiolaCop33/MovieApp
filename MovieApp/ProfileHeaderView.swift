//
//  ProfileHeaderView.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 24/10/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let name: String
    
    var body: some View{
        Group{
            HStack{
                Image(systemName: "person.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.orange)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Circle().stroke(Color.yellow, lineWidth: 2)
                    )
                VStack(alignment: .leading){
                    Text("Welcome back! 👋")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(name)
                        .font(.title)
                }
                Spacer()
                Image(systemName: "bell.badge")
                    .symbolRenderingMode(.multicolor)
                    .foregroundColor(.orange)
                    .font(.system(size: 30))
                    .frame(width: 60, height: 60)
                    .background(Material.ultraThin)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }.padding()
        }
    }
}

#Preview {
    ProfileHeaderView(name: "Fabiola Correa")
}
