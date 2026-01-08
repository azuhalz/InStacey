//
//  PostItem.swift
//  IntroduceFriend
//
//  Created by Ahmad Zuhal Zhafran on 17/05/25.
//
import Foundation

struct PostItem: Identifiable {
  var id = UUID()
  var imageFeeds: [String]
  var caption: String
  var date: String
}
