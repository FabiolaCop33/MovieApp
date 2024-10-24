//
//  MovieList.swift
//  MovieApp
//
//  Created by Familia Alvarado Perez on 23/10/24.
//

import SwiftUI

struct MoviesList: View {
    
    @Environment(MoviesModel.self) private var model
    @State var searchQuery = ""
  
    var body: some View {
        List(model.movies) { movie in
            NavigationLink {
                MovieDetailView(movie: movie)
            } label: {
                MovieRow(movie: movie)
            }
        }
        .navigationTitle("Movies")
        .task {
            model.fetchMovies()
        }
        .searchable(text: $searchQuery, prompt: "Movie title to search")
        .onSubmit(of: .search, search)
    }
    
    func search() {
        model.searchMovieByTitle(title: searchQuery)
    }
}

#Preview {
    NavigationStack {
        MoviesList()
            .environment(MoviesModel())
    }
}
