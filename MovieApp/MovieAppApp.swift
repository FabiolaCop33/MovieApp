//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 22/10/24.
//

import SwiftUI

@main
struct MovieAppApp: App {
    
    // Movies model
    @State private var model = MoviesModel()
    
    @AppStorage("UserOnBoardingCompleted") var userOnBoardingCompleted = false
    
    var body: some Scene {
        WindowGroup {
            Group {
                if userOnBoardingCompleted {
                    #if os(iOS)
                    iPhoneNavigation()
                    #else
                    OtherDevicesNavigation()
                    #endif
                } else {
                    OnboardingView(movie: Movie.sample, onboardingCompleted: $userOnBoardingCompleted)
                }
            }
            .accentColor(.yellow)
        }
        .environment(model)
    }
}
