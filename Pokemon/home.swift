//
//  home.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 10/08/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        NavigationView {
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
                Text("Item 4")
            }
            .navigationTitle("Home")
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
