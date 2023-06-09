import SwiftUI
struct FloatingActionButton: View {
    @State var showMenu = false
    @State var CreatedMemberViewIsShowing = false

    var body: some View {
        VStack {
            Spacer()
            if showMenu {
                VStack {
                    NavigationLink(destination: CreateProfilView()) {
                        MenuItem(icon: "person.crop.circle")
                    }
                    
                    NavigationLink(destination: BookingRow()) {
                        MenuItem(icon: "ticket")
                    }
                    
                    NavigationLink(destination: VideoAssistentView()) {
                        MenuItem(icon: "video")
                    }
                    
                    NavigationLink(destination: CreatedMemberView(CreatedMemberViewIsShowing: $CreatedMemberViewIsShowing, memberDataViewModel: MemberDataViewModel())) {
                        MenuItem(icon: "person.fill.checkmark")
                    }
                   
                }
            }
            Button(action: {
                self.showMenu.toggle()
            }) {
                Image(systemName: "pencil.tip.crop.circle.badge.plus")
                    .frame(width: 45, height: 45)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color(red: 90/255, green: 125/255, blue: 115/255))
                    .background(Circle())
                    .foregroundColor(.green.opacity(0.9))
                    .shadow(color: .gray, radius: 0.5, x: 1, y: 1)
            }
        }
    }
}

struct MenuItem: View {
    var icon: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(red: 75/255, green: 115/255, blue: 115/255))
                .frame(width: 45, height: 45)
            Image(systemName: icon)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.black)
        }
        .shadow(color: .gray, radius: 0.3, x: 1, y: 1)
        .transition(.move(edge: .trailing))
        .padding()
    }
}

struct FloatingActionButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingActionButton()
    }
}
