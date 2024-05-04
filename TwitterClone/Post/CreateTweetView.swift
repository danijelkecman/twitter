//
//  CreateTweetView.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/23/22.
//

import SwiftUI

struct CreateTweetView: View {
  @Environment(\.presentationMode) var presentationMode
  
  @State var text = ""
  
  var body: some View {
    VStack {
      HStack {
        Button {
          presentationMode.wrappedValue.dismiss()
        } label: {
          Text("Cancel")
        }

        Spacer()
        
        Button {
          
        } label: {
          Text("Tweet").padding()
        }
        .background(Color("bg"))
        .foregroundColor(.white)
        .clipShape(Capsule())
      }
      MultilineTextField(text: $text)
    }.padding()
  }
}

struct CreateTweetView_Previews: PreviewProvider {
  static var previews: some View {
    CreateTweetView()
  }
}
