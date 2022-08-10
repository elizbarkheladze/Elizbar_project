//
//  FeedView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showPostView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0...20 , id: \.self) { _ in
                        postCellView()
                            .padding()
                    }
                }
            }
            
            Button{
                showPostView.toggle()
            }label : {
                Image(systemName: "person")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
                    .fullScreenCover(isPresented: $showPostView) {
                        NewPostView()
                    }
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
