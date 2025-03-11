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
        HStack(alignment:.center, spacing: 10) {
            landmark.image
                .resizable()
                .frame(width: 75, height:75)
            Text("\(landmark.name)")
                .font(.title3)
            Spacer()
            
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundStyle(.yellow)
                    .frame(width: 30, height: 30, alignment: .center)
                
            }
        }
    }
}

#Preview("landmarks"){
    // landmarks is from ModelData.swift
    let landmarks = ModelData().landmarks
    return Group{
        LandmarkRow(landmark: landmarks[0]).preferredColorScheme(.dark)
        LandmarkRow(landmark: landmarks[1]).preferredColorScheme(.dark)
    }
    
    

}
