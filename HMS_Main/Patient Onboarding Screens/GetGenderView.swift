//
//  GetGenderView.swift
//  HMS_Main
//
//  Created by Rupaj Sen on 23/04/24.
//

import SwiftUI

struct GetGenderView: View {
    @State private var selectedGender: String = ""
    
    var body: some View {
        VStack {
            Text("What is your Gender?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Knowing the gender allows doctor to get additional information about the patient, which can be an important part of the medical history")
                .font(.body)
                .foregroundColor(.gray)
                .padding()
            
            HStack {
                GenderCard(gender: "MALE", isSelected: $selectedGender)
                GenderCard(gender: "FEMALE", isSelected: $selectedGender)
            }
            
            Spacer()
            
            Button(action: {
                // Save action
            }) {
                Text("Save")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
        .background(Color("backgroundColor"))
    }
}

struct GenderCard: View {
    let gender: String
    @Binding var isSelected: String
    
    var body: some View {
        Button(action: {
            isSelected = gender
        }) {
            VStack {
                // Use different images for male and female
                if gender == "MALE" {
                    Image("male") // Replace with your male image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding()
                } else if gender == "FEMALE" {
                    Image("female") // Replace with your female image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding()
                }
                
                Text(gender)
                    .font(.headline)
                    .foregroundColor(isSelected == gender ? .white : .black)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(isSelected == gender ? Color.blue : Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding()
    }
}



#Preview {
    GetGenderView()
}
