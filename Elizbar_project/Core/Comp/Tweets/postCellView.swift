//
//  postCellView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct postCellView: View {
    var body: some View {
        VStack(alignment: .leading){
            // პროფაილის ფოტო მომხმარებლის სახელი და პოსტის ტექსტი
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //მომხმარებლის სახელი და პოსტის ტექსტი
                VStack(alignment: .leading, spacing: 4){
                    //მომხმარებლის მონაცემები
                    HStack{
                        Text("Elizbar Kheladze")
                            .font(.subheadline).bold()
                        
                        Text("@elizbar")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    
                    //პოსტის ტექსტი
                    
                    Text("me var elizbari")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
            }
            //ღილაკები
            
            HStack{
                Button{
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }

    }
}

struct postCellView_Previews: PreviewProvider {
    static var previews: some View {
        postCellView()
    }
}
