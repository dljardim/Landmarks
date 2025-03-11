//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Damian Jardim on 2/18/25.
//

import SwiftUI

struct LandmarkList: View {
    
    // passing landmarks into this view
    
    @State private var showFavoritesOnly:Bool = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter{landmark in
            (showFavoritesOnly && landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks){landmark in
                    
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
