//
//  ContentView.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 0)
                    .shadow(radius: isShowing ? 50 : 0)
                    .offset(x: isShowing ? 350 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        leading: Button(action: {
                            withAnimation(.spring()) {
                                isShowing.toggle()
                            }
                        }) {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.black)
                        }
                )
            }
            .onAppear {
                isShowing = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
