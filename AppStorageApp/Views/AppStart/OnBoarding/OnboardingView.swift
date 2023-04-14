import SwiftUI

struct OnBoardingPageOne: View {
    @AppStorage("onBoarding")  var onBoarding = true
    @State private var showAfterOnBoarding = false // Neuer Zustand hinzugefügt
    
    @State private var current = 1
    var body: some View {
        ZStack {
            
            Image("studentonroad")
                .resizable()
                .scaledToFit()
                .overlay(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.black.opacity(0.55))
                .contrast(0.7)

            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    NavigationLink(destination: AfterOnBoarding(), isActive: $showAfterOnBoarding) { // Neuer NavigationLink hinzugefügt
                        Text("skip")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .background(
                        Capsule()
                            .fill(Color(.gray).opacity(0.2))
                            .frame(width: 60, height: 30)
                    )
                    .padding(.trailing, 20)
                }.padding()
                
                if current == 1 {
                    OnboardItem(image: "banner", title: "Connect with \ncompanys", description: "Connect with companys and lot of different Peoples locally & globally. Discover Chat & Engage")
                        .transition(AnyTransition.slide.animation(.spring()))
                        .animation(.default)
                }
                
                if current == 2 {
                    OnboardItem(image: "bookingplane", title: "Discover new \nlocations", description: "Explore new locations and booking easyier your Holidays. ")
                        .transition(AnyTransition.slide.animation(.spring()))
                        .animation(.default)
                }
                
                if current == 3 {
                    OnboardItem(image: "familiebackground", title: "Share your \nTripmoments", description: "Share you trip with your Community and Friends. Let’s make the travel fun & a lot of adventures")
                        .transition(AnyTransition.slide.animation(.spring()))
                        .animation(.default)
                }
                
                HStack {
                    HStack(spacing: 12) {
                        Capsule()
                            .frame(width: 18, height: 4)
                            .foregroundColor(current == 1 ? Color("Purple") : Color("Purple").opacity(0.3))
                        
                        Capsule()
                            .frame(width: 18, height: 4)
                            .foregroundColor(current == 2 ? Color("Purple") : Color("Purple").opacity(0.3))
                        
                        Capsule()
                            .frame(width: 18, height: 4)
                            .foregroundColor(current == 3 ? Color("Purple") : Color("Purple").opacity(0.3))
                    }
                    
                    Spacer()
                    
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            Image(systemName: current == 3 ? "checkmark" : "arrow.right")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        )
                        .onTapGesture {
                            if current == 3 { // Neuer Code hinzugefügt
                                showAfterOnBoarding = true
                            } else {
                                withAnimation {
                                    current += 1
                                }
                            }
                        }
                    
                }
                .padding(20)
            }
        }
    }
    
}
