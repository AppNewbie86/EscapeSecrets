//
//  ContentView.swift
//  AppStorageApp
//
//  Created by Marcel Zimmermann on 28.02.23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authService : AuthService
    @Binding var show : Bool

    var body: some View {
        ZStack {
           Image("BG 1")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                RulesOfMyWay(show: $show)
            }
        }
    }
}
    

