//
//  home.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 10/08/23.
//

import SwiftUI

struct Home: View {
        
    @ObservedObject var viewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isLoad { Load() }
            else { HomeList(viewModel: viewModel) }
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
