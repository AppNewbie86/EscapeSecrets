//
//  OnboardingRules.swift
//  AppStorageApp
//
//  Created by Marcel Zimmermann on 13.04.23.
//


import SwiftUI
// Hier regeln wir die Onboardregeln
struct OnboardingRules: View {
    
    @EnvironmentObject var authService : AuthService
    @AppStorage("onBoarding")  var onBoarding = true
    @State private var showLoginView = false
    @State private var RestartOnboarding = false

    var body: some View {
        VStack {
            if onBoarding {
                OnBoardingView()
            } else {
                Group{
                    if authService.user != nil{
                        Home()
                    }else{
                        AfterOnBoarding()
                            .transition(.opacity.animation(.default))
                        
                    }
                }.onAppear{
                    authService.listenToAuthState()
                }
               
            }
        }
    }
}

struct OnboardingRules_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingRules()
    }
}
