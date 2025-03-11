//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Damian Jardim on 3/11/25.
//

import SwiftUI

struct FavoriteButton: View {
    // Propogate back to the data source
    @Binding var isSet:Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label:{
            // Toggle Favorite added for accessability
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
