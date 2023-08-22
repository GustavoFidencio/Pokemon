//
//  infoPoke.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 21/08/23.
//

import SwiftUI

struct infoPoke: View {
    
    private var val : String
    private var icon : String
    
    init(val: String, icon: String) {
        self.val = val
        self.icon = icon
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Image(systemName: icon)
                    .font(.system(size: 30))
                Spacer()
                Text(val)
                    .foregroundColor(.primary)
            }
            .padding(14)
            .frame(maxWidth: geometry.size.width, maxHeight: 80)
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(7)
        }
    }
}

struct infoPoke_Previews: PreviewProvider {
    static var previews: some View {
        infoPoke(val: "156", icon: "scalemass.fill")
    }
}
