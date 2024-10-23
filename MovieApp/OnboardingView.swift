//
//  OnboardingView.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

struct OnboardingView: View {
    let movie: Movie
    let imageName = "FindingDory"
    
    var body: some View {
        VStack(spacing: 15){
            
            Spacer()
            
            Text(movie.title)
            Text(movie.unwrappedReleaseDate, format: .dateTime.day().month().year())
            Button("Enter now"){
                print("Enter Now button")
            }
        }
        
    }
}

#Preview {
    OnboardingView(movie: Movie.sample)
}
