//
//  AboutView.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 16/05/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
      ZStack{
        VStack{
          HStack{
            Text("About")
              .font(.title3)
              .bold()
              .padding(.bottom, 5)
            Spacer()
          }
          Text("Hi, I’m an architecture student with a strong passion for sustainable and innovative design. I’ve learned about design, construction, and space planning through my studies. Beyond architecture, I’m also interested in how it connects with property and sustainability. I aim to create designs that improve our environment and respond to today’s challenges. My goal is to creating sustainable spaces that contribute to a better future.")
            .font(.subheadline)
        }
        .padding()
      }
      .background(.white .opacity(0.5))
      .cornerRadius(20)
      .padding(.horizontal)
    }
}

#Preview {
    AboutView()
}
