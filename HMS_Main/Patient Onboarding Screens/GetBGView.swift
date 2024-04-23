//
//  GetBGView.swift
//  HMS_Main
//
//  Created by Rupaj Sen on 23/04/24.
//


import SwiftUI

struct GetBGView: View {
    @State private var selectedBloodGroup = "A+"
    let bloodGroups = ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"]

    var body: some View {
        VStack {
            Text("What is your blood group?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text("Knowing a patient's blood group is vital for anticipating compatibility in transfusions and transplants, diagnosing genetic conditions, and predicting disease susceptibility, enhancing their medical history.")
                .font(.body)
                .foregroundColor(.gray)
                .padding()

            
            Spacer()
            
            Image("bg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Picker("Blood Group", selection: $selectedBloodGroup) {
                ForEach(bloodGroups, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            
            Button(action: {
                print("Blood Group Selected: \(selectedBloodGroup)")
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


#Preview {
    GetBGView()
}
