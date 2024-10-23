//
//  BlurredImageBackground.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

struct BlurredImageBackground: View {
    var image: Image
    var blurHeigh: CGFloat = 250
    var body: some View {
        VStack {
            Spacer()
            image
                .resizable()
        }
    }
}

#Preview {
    BlurredImageBackground(image: Image("FindingDory"))
}
