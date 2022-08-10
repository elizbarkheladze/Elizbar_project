//
//  BurgerMenuCellView.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import SwiftUI

struct BurgerMenuCellView: View {
    let viewModel : BurgerMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageLink)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.info)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
    }


struct BurgerMenuCellView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerMenuCellView(viewModel: .profile)
    }
}
