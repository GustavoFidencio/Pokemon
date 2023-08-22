//
//  HomeList.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

import SwiftUI

struct HomeList: View {
    
    @ObservedObject var viewModel : HomeViewModel
    
    init(viewModel:  HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(Array(viewModel.pokes.enumerated()), id: \.element.id){ index, poke in
                        HomeListItem(Poke: poke)
                            .onAppear {
                                if index == viewModel.pokes.count - 6 { // You can adjust the index as needed
//                                    self.reachedEnd = true
//                                    print("tamo no fimmmmm")
                                    viewModel.getPokes(next: true)
                                    // Perform your action here when reaching the end
                                }
                            }
                    }
                }
                .padding()
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Home")
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
