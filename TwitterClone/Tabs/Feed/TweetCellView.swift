//
//  TweetCellView.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/24/22.
//

import SwiftUI

struct TweetCellView: View {
  var tweet: String
  var tweetImage: String?
  
  var body: some View {
    VStack {
      HStack(alignment: .top, spacing: nil) {
        Image("logo")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 55, height: 55)
          .clipShape(Circle())
        
        VStack(alignment: .leading, spacing: 10, content: {
          (
            Text("danijel ")
              .fontWeight(.bold)
              .foregroundColor(.primary)
            +
            Text("@cxromos")
              .foregroundColor(.gray)
          )
          
          Text(tweet)
            .frame(maxHeight: 100, alignment: .top)
          
          if let tweetImage {
            GeometryReader { proxy in
              Image(tweetImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: proxy.frame(in: .global).width, height: 250)
                .cornerRadius(15)
              
            }
            .frame(height: 250)
          }
        })
      }
      
      HStack(spacing: 50, content: {
        Button {
          
        } label: {
          Image("Comments")
            .resizable()
            .frame(width: 16, height: 16)
            .foregroundColor(.gray)
        }
        
        Button {
          
        } label: {
          Image("Retweet")
            .resizable()
            .frame(width: 18, height: 14)
            .foregroundColor(.gray)
        }
        
        Button {
          
        } label: {
          Image("love")
            .resizable()
            .frame(width: 18, height: 15)
            .foregroundColor(.gray)
        }
        
        Button {
          
        } label: {
          Image("upload")
            .resizable()
            .frame(width: 18, height: 15)
            .foregroundColor(.gray)
        }
      })
      .padding(.top, 4)
    }
  }
}

struct TweetCellView_Previews: PreviewProvider {
  static var previews: some View {
    TweetCellView(tweet: "Docker is a tool which helps you run you application in isolated environment. Docker creates a isolated environment often called “container” where you run your application without getting affected by external factors.")
    Divider()
  }
}
