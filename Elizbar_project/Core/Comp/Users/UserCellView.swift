//
//  UserCellView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack (spacing: 12){
            Circle()
                .frame(width: 48, height: 48)
            
            VStack (alignment: .leading , spacing: 4){
                Text("Elizbar.khel")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Elizbar Kheladze")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
        
        
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
