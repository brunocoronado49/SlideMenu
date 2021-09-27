//
//  SideMenuHeaderView.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .frame(width: 35, height: 35)
                    .foregroundColor(.white)
                    .padding()
            }
            
            VStack(alignment: .leading) {
                Image("harley")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.bottom, 15)
                
                Text("Harley Quinn")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@harls")
                    .font(.system(size: 14))
                    .padding(.bottom, 30)
                
                HStack(spacing: 12) {
                    HStack {
                        Text("1,250")
                            .bold()
                        
                        Text("Following")
                    }
                    HStack {
                        Text("805")
                            .bold()
                        Text("Followers")
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
