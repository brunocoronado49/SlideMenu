//
//  SideMenuOptionView.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: viewModel.imageName)
                .frame(width: 25, height: 25)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .profile)
    }
}
