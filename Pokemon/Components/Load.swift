//
//  Load.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

import SwiftUI

struct Load: View {
    var body: some View {
        ProgressView("Carregando...")
            .padding()
    }
}

struct Load_Previews: PreviewProvider {
    static var previews: some View {
        Load()
    }
}
