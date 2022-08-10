//
//  SearchView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView{
                    LazyVStack{
                        ForEach(0...25 , id: \.self) { _ in
                            NavigationLink{
                                ProfileView()
                            } label: {
                                UserCellView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
