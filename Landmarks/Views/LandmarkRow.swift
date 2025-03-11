//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Damian Jardim on 2/17/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack(alignment:.top, spacing: 0) {
            landmark.image
                .resizable()
                .frame(width: 50, height:50)
            Text("\(landmark.name)")
            Spacer()
            
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                
            }
        }
        .border(.red)
    }
}

#Preview("landmarks"){
    // landmarks is from ModelData.swift
    LandmarkRow(landmark: landmarks[0])
    LandmarkRow(landmark: landmarks[1])
    

}
