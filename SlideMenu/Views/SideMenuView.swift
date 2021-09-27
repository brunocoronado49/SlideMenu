//
//  SideMenuView.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.blue, Color.red],
                startPoint: .top, endPoint: .bottom
            )
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) {
                        SideMenuOptionView(viewModel: option)
                    }
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
