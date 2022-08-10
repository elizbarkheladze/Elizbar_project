//
//  ProfileView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedOption : PostFilter = .replies
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment:.leading){
            headerView
            
            buttons
            
            profileInfo
            
            postFilterTab
            
            postView
            
            
            Spacer()
        
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewInterfaceOrientation(.portrait)
    }
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16,y: 12)
                }
                
                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var buttons : some View {
        
        HStack (spacing : 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray ,lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var profileInfo : some View {
        VStack(alignment: .leading,spacing: 4){
            
            HStack {
                Text("Elizbar Kheladze")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@Elizbar.Khel")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            
            Text("Dabadebuli 2001 wels batumshi mgeli")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack( spacing:24 ){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Batumi, Georgia")
                    
                }
                
                HStack{
                    Image(systemName: "link")
                    
                    Text("www.Batumi.com")
                    
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserInfoView()
             .padding(.vertical)
            
            
        }
        .padding(.horizontal)
    }
    
    var postFilterTab : some View {
        HStack{
            ForEach(PostFilter.allCases, id : \.rawValue) { option in
                VStack{
                    Text(option.title)
                        .font(.subheadline)
                        .fontWeight(selectedOption == option ? .semibold : .regular)
                        .foregroundColor(selectedOption == option ? .black : .gray)
                    
                    if selectedOption == option {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height : 3)

                    }else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height : 3)
                    }
                }
                .onTapGesture{
                    withAnimation(.easeInOut) {
                        self.selectedOption = option
                    }
                }
                
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
        
    }
    
    var postView : some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self) { _ in
                    postCellView()
                        .padding()
                }
            }
        }
    }
    
}
