//
//  HomeList.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

import SwiftUI

struct HomeList: View {
    
    var pokes : [SimplePoke]
    
    init(pokes:  [SimplePoke]) {
        self.pokes = pokes
    }
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach(pokes.indices, id: \.self){ item in
                    HomeListItem(Poke: pokes[item])
                }
            }
            .padding()
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Home")
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
