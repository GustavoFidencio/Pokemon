//
//  infoPoke.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 21/08/23.
//

import SwiftUI

struct infoPoke: View {
    
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Image(systemName: "scalemass.fill")
                    .font(.system(size: 20))
                Text(String(157) + " KG")
                    .foregroundColor(.primary)
            }
            .frame(maxWidth: geometry.size.width, maxHeight: 80)
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(7)
        }
    }
}

struct infoPoke_Previews: PreviewProvider {
    static var previews: some View {
        infoPoke()
    }
}
