//
//  PostView.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 19/05/25.
//

import SwiftUI

struct PostView: View {
  let item: PostItem
  @State private var selectedIndex = 0
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .leading, spacing: 8) {
        
        // TopBarPostView()
        HStack {
          Button {
            dismiss()
          } label: {
            Image(systemName: "chevron.left")
              .resizable()
              .frame(width: 12, height: 21)
              .foregroundStyle(.black)
          }
          
          Spacer()
          VStack() {
            Text("Posts")
              .font(.title2)
              .bold()
            Text("staceliana")
          }
          .padding(.trailing, 12)
          Spacer()
        }
        .padding(.horizontal)
        Divider()
        
        // UserInfoView()
        ScrollView {
          HStack {
            Image("Stacey ig")
              .resizable()
              .frame(width: 38, height: 38)
              .clipShape(Circle())
            VStack(alignment: .leading) {
              Text("staceliana").bold()
              Text("🎵 Miau Miaw · What Was I Made For?")
                .font(.footnote)
            }
            Spacer()
            Image(systemName: "ellipsis")
          }
          .padding(.horizontal)
          
          // Image Carousel
          
          TabView(selection: $selectedIndex) {
            ForEach(0..<item.imageFeeds.count, id: \.self) { index in
              Image(item.imageFeeds[index])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .tag(index)
            }
          }
          .tabViewStyle(PageTabViewStyle())
          .frame(height: 430)
          
          // Actions: like, comment, share, save
          HStack {
            HStack(spacing: 16) {
              Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 23, height: 21)
                .foregroundStyle(.red)
              Image(systemName: "bubble.right")
                .resizable()
                .frame(width: 23, height: 21)
                .padding(.leading, 6)
              Text("17")
                .font(.headline)
                .padding(.leading, -9)
              Image(systemName: "paperplane")
                .resizable()
                .frame(width: 23, height: 21)
                .padding(.leading, 6)
            }
            Spacer()
            Image(systemName: "bookmark")
              .resizable()
              .frame(width: 20, height: 23)
          }
          .padding(.horizontal)
          .padding(.vertical, 7)
          
          // Likes
          HStack {
            Image("Prabowo")
              .resizable()
              .frame(width: 24, height: 24)
              .clipShape(Circle())
            Text("Liked by **presidenrepublikindonesia** and **others**")
              .font(.subheadline)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
          
          // Caption
          HStack {
            Text("staceliana ").fontWeight(.semibold) + Text(item.caption)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
          
          HStack {
            Text(item.date)
              .font(.caption)
              .foregroundStyle(.gray)
              .bold()
              .padding(.top, 8)
              .padding(.horizontal)
            Spacer()
          }
        }
      }
    }
    .toolbar(.hidden, for: .navigationBar)
  }
}


#Preview {
  let sampleItem = PostItem(
    imageFeeds: ["Feeds 1", "Feeds 1a"],
    caption: """
, S.Ars. 🎓✨️

Grateful to proudly announce that I am officially awarded the degree of S.Ars. All the sleepless nights, hard work, and endless determination have finally paid off.

This accomplishment is a blessing that I could only achieve by HIS Grace and with the unwavering support of the most important people in my life.

First and foremost, I am deeply thankful to my parents, who have been my God-sent angels and my greatest support system. My father @jimmyellyakurniawan , who has been my mentor and role model, showing me resilience and dedication. My mother @lucyana_st12 , who has been the provider, nurturer, and source of encouragement through every step of this journey. My heartfelt thanks also go to my cousin @_02josiana_j , my grandmother, and my aunt, who, despite the distance, have kept me in their prayers and supported me constantly. 🤍

To my boyfriend, @awilliamm12 , who stood by me through half of this four-year journey, thank you. You listened to my complaints, absorbed my frustrations, and dried my tears. Together, we’ve finished this chapter and are ready to unlock a new journey ahead. 🚀

I am incredibly grateful to @maureen_nuradhi , my mentor, who guided me through the past year, which was one of the most challenging yet rewarding phases of my studies. Thank you to @mariayohanasusan and @astrid_kusumo , among the first lecturers who introduced me to the fascinating world of architecture. To @yusufariyanto88 , one of the funniest, friendliest, and most insightful lecturers, who has even been my travel buddy on a few occasions. And to all the other lecturers and mentors who have supported me on this S.Ars journey, each of you has left an invaluable mark on my path.

Lastly, to my dear friends. Thank you for giving me strength, laughter, and unforgettable memories. Every bit of our shared struggles, sleepless nights, and joyous moments will forever be a part of me. I am proud to have walked this journey with all of you. Congratulations to all my fellow 2020 graduates, we did it! Here's to reaching new heights together. See you at the top! 🥂
""",
    date: "October 30, 2024"
  )
  
  NavigationView{
    PostView(item: sampleItem)
  }
}
