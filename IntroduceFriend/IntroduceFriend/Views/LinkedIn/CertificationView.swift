//
//  CertificationView.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 16/05/25.
//

import SwiftUI

struct CertificationView: View {
    var body: some View {
      ZStack{
        VStack{
          HStack{
            Text("Certification")
              .font(.title3)
              .bold()
              .padding(.bottom, 5)
            Spacer()
          }
          
          HStack {
            VStack (alignment: .leading) {
              Text("Duolingo English Test")
                .font(.headline)
              Text("Overall score of 125")
                .font(.subheadline)
              Text("2023")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            Spacer()
          }
          
          Divider()
          
          HStack {
            VStack (alignment: .leading) {
              Text("Autodesk Revit Architecture Customized Project")
                .font(.headline)
              Text("Autodesk Revit project completion")
                .font(.subheadline)
              Text("2023")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            Spacer()
          }
          
          Divider()
          
          HStack {
            VStack (alignment: .leading) {
              Text("Autocad & 3DS Max for Architecture")
                .font(.headline)
              Text("Autocad & 3Ds Max project completion")
                .font(.subheadline)
              Text("2021")
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
    CertificationView()
}
