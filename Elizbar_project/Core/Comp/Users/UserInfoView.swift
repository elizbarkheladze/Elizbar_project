//
//  UserInfoView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        HStack( spacing:24 ){
            HStack(spacing: 4){
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            
            HStack(spacing: 4){
                Text("546")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
        }

    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
