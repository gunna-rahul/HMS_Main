//
//  GetAgeView.swift
//  HMS_Main
//
//  Created by Rupaj Sen on 23/04/24.
//

import SwiftUI

struct GetAgeView: View {
    @State private var age = 33.045977

    var body: some View {
        
            VStack {
                Text("How old are you?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Taking the patient's age into account is an important aspect of an individualized approach to providing medical care and ensuring the safety and effectiveness of treatment.")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding()
                
                Spacer()
                
                Image("d") // Replace "patient" with your actual image name
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Slider(value: $age, in: 0...100, step: 0.01)
                    .padding(.horizontal)
                
                VStack{
                    Text("\(age, specifier: "%.0f")")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Button(action: {
                        print("Age saved")
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
            }
           .background(Color("backgroundColor"))
        
    }
}

#Preview {
    GetAgeView()
}
