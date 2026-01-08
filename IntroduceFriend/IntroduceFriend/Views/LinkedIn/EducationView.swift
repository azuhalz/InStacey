//
//  Education.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 16/05/25.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
      ZStack{
        VStack{
          HStack{
            Text("Education")
              .font(.title3)
              .bold()
              .padding(.bottom, 5)
            Spacer()
          }
          
          HStack{
            Image("LogoUC")
              .resizable()
              .clipShape(Circle())
              .frame(width: 45, height: 45)
            
            VStack (alignment: .leading) {
              Text("University of Ciputra Surabaya")
                .font(.headline)
              Text("Bachelor's degree, Interior Architecture")
                .font(.subheadline)
              Text("2020 - 2024")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            Spacer()
          }
          
          Divider()
          
          HStack{
            Image("LogoSCB")
              .resizable()
              .clipShape(Circle())
              .frame(width: 45, height: 45)
            
            VStack (alignment: .leading) {
              Text("Citra Berkat High School")
                .font(.headline)
              Text("Natural Science")
                .font(.subheadline)
              Text("2017 - 2020")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            Spacer()
          }
        }
        .padding()
      }
      .background(.white .opacity(0.5))
      .cornerRadius(20)
      .padding(.horizontal)
    }
}

#Preview {
    EducationView()
}
