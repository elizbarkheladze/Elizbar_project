//
//  BurgerMenuView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI
import Darwin

struct BurgerMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading ,spacing : 4){
                    Text("Elizbar Kheladze")
                        .font(.headline)
                    
                    Text("@elizbar.khel")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserInfoView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(BurgerMenuViewModel.allCases, id: \.rawValue) {option in
                if option == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        BurgerMenuCellView(viewModel: option)
                    }
                    

                }
                else if option == .logout{
                    Button{
                        print("do logout")
                    }label :{
                        BurgerMenuCellView(viewModel: option)
                    }
                }else {
                    BurgerMenuCellView(viewModel: option)
                }
               
            }
            
            
            Spacer()
        }
        
    }
}

struct BurgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerMenuView()
    }
}



