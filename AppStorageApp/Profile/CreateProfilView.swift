//
//  ProfileRow.swift
//  AppStorageApp
//
//  Created by Marcel Zimmermann on 01.03.23.
//



import SwiftUI

struct CreateProfilView: View {
    
    // Observable-Object-Klasse zur Verwaltung des App-Status
    @StateObject var memberDataViewModel = MemberDataViewModel()
    
    // Eingabevariablen für die Textfields
    @State var firstNameText: String = ""
    @State var lastNameText: String = ""
    @State var emailText: String = ""
    @State var ageText: String = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false
    
    // Definition der Ansichtsstruktur
    var body: some View {
        
        Image("person.fill.badge.plus")
    
            NavigationStack {
              
                VStack(spacing:20) {
                    // Erste Sektion des Formulars für persönliche Daten
                    TextField("Firstname", text: $firstNameText)
                        .padding()
                    TextField("Lastname", text: $lastNameText)
                        .padding()
                    
                    TextField("Age", text: $ageText)
                        .padding()
                    
                    TextField("Email", text: $emailText)
                        .padding()
                    
                }
                // Button zum Hinzufügen eines neuen Profils
                Button {
                    // Überprüfung, ob alle Felder ausgefüllt wurden
                    guard !firstNameText.isEmpty, !lastNameText.isEmpty, !emailText.isEmpty, !ageText.isEmpty else { return }
                    // Aufruf der addNewMember-Funktion des ViewModel, um ein neues Profil hinzuzufügen
                    memberDataViewModel.addNewMember("\(firstNameText) \(lastNameText), \(ageText), \(emailText)")
                    // Zurücksetzen der Eingabefelder
                    firstNameText = ""
                    lastNameText = ""
                    emailText = ""
                    ageText = ""
                } label: {
                    Text("Create Account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                // Liste der gespeicherten Benutzerdaten
                List{
                    ForEach(memberDataViewModel.savedUserDaten){ memberData in
                        HStack{
                            Image(systemName: memberData.done ? "checkmark.circle.fill": "checkmark.circle")
                            Text(memberData.desc ?? "no desc.")
                        }
                        .listRowBackground(memberData.done ? Color.gray : Color.orange)
                        .onTapGesture {
                            memberDataViewModel.updateMemberData(MemberData: memberData)
                        }
                    }
                    .onDelete(perform: memberDataViewModel.deleteMemberData)
                }
                
            }
            // Navigationstitel
            .navigationTitle("Member Data")
            .background(Image("Background_gradient"))
        }
    }

    
