//
//  HotelListView.swift
//  AppStorageApp
//
//  Created by Marcel Zimmermann on 28.03.23.
//

import SwiftUI


struct HotelListView: View {
    
    @StateObject var hotelType = HotelTypeViewModel()
    
    @Binding var HotelListViewisShowing : Bool
    
    // Suchtext für die Filterung der Hotels
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Image("santorini")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                // Ein Farbverlauf wird als Hintergrund festgelegt
                LinearGradient(colors: [.black.opacity(0.67),.black.opacity(0.97)], startPoint: .topLeading, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    SearchBarView2(searchTerm:  $searchText)
                        .padding(.horizontal)
                        .background(Color.black.opacity(0.75))
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 10) {
                            ForEach(hotelType.hotelsList.filter({ searchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(searchText) })) { hotel in
                                NavigationLink(destination: HotelDetailView(hotel: hotel).environmentObject(Cart1())) {
                                    HStack {
                                        HotelButton(name: hotel.name, image: hotel.image, description: hotel.description, price: hotel.price, amenities: hotel.amenities)
                                        
                                        
                                        
                                            .frame(height: 80)
                                            .foregroundColor(.white)
                                            .cornerRadius(6)
                                        
                                        VStack(alignment: .leading, spacing: 5) {
                                            
                                            
                                            HStack {
                                                // Display stars based on rating
                                                ForEach(0..<hotel.rating) { _ in
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                }
                                                // Display other hotel information
                                                Text("\(hotel.rating) Stars")
                                            }
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Hotels")
        
    }
    
}
    struct HotelListView_Previews: PreviewProvider {
        private static var HotelListViewisShowing =
        Binding.constant(false)
        static var previews: some View {
            HotelListView(HotelListViewisShowing: .constant(true))
        }
    }
    




