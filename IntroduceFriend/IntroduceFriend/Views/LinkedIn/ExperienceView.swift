//
//  ExperienceView.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 16/05/25.
//

import SwiftUI

struct ExperienceView: View {
    var body: some View {
      ZStack{
        VStack{
          HStack{
            Text("Experience")
              .font(.title3)
              .bold()
              .padding(.bottom, 5)
            Spacer()
          }
          
          HStack(alignment: .top){
            Image("LogoUC")
              .resizable()
              .clipShape(Circle())
              .frame(width: 45, height: 45)
            
            VStack (alignment: .leading) {
              Text("Team Member")
                .font(.headline)
              Text("Super Mentor (Node)")
                .font(.subheadline)
              Text("2024")
                .font(.subheadline)
                .foregroundStyle(.secondary)
              Text("""
- Short internship at Han Awal & Partners led by Yori Antar.
- Presented my Final Project results and received feedback from the architects at Han Awal & Partners.
- Learned from and contributed to one of Han Awal & Partners' architectural projects.
- Worked in a group and divided tasks to meet project needs.
- Visited and learned alongside Harun Hajadi at the Ciputra Group in Jakarta
""")
              .font(.caption)
            }
            Spacer()
          }
          Divider()
          
          HStack(alignment: .top){
            Image("LogoUC")
              .resizable()
              .clipShape(Circle())
              .frame(width: 45, height: 45)
            
            VStack (alignment: .leading) {
              Text("Exchange Student Program")
                .font(.headline)
              Text("Sakura Science Exchange Program")
                .font(.subheadline)
              Text("Japan - 2024")
                .font(.subheadline)
                .foregroundStyle(.secondary)
              Text("""
- Selected as one of four students to participate in a government fully-funded exchange program at Shimane University, Matsue, Japan.
- Studied basic acoustics from several Professor in Japan.
- Collaborated with fellow students from Vietnam in group project.
- Planned and conducted several experiments to develop an innovative acoustic insulation as a team.
""")
              .font(.caption)
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
    ExperienceView()
}
