//
//  BlurredImageBackground.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

struct BlurredImageBackground: View {
    var image: Image
    var blurHeight: CGFloat = 250
    var body: some View {
        VStack {
            Spacer()
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: blurHeight, alignment: .bottom).clipped()
                .blur(radius: 15)
        }
        .background{
            image
                .resizable()
                .aspectRatio(contentMode: .fill)

        }
    }
    
    
}

 

#Preview {
    BlurredImageBackground(image: Image(.findingDory))
}
