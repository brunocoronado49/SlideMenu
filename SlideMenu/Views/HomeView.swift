//
//  HomeView.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Hola, este es un menu muy cool!")
                .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
