//
//  Feed.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/23/22.
//

import SwiftUI

struct Feed: View {
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(spacing: 18) {
        TweetCellView(tweet: "Hey Tim! you thief :)", tweetImage: "post")
        Divider()
        ForEach(1...20, id: \.self) { _ in
          TweetCellView(tweet: "Docker is a tool which helps you run you application in isolated environment. Docker creates a isolated environment often called “container” where you run your application without getting affected by external factors.")
          Divider()
        }
      }
      .padding(.top)
      .padding(.horizontal)
      .zIndex(0)
    }
  }
}

struct Feed_Previews: PreviewProvider {
  static var previews: some View {
    Feed()
  }
}
