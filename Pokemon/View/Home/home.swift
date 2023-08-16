//
//  home.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 10/08/23.
//

import SwiftUI

struct Home: View {
        
    @ObservedObject private var viewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    
                    ForEach(viewModel.pokes.indices, id: \.self){ item in
                        HomeListItem()
                    }
                    
                }
                .padding()
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Home")
        }
        .onAppear {
            viewModel.getPokes()
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
