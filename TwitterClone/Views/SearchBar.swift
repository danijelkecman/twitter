//
//  SearchBar.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 12/8/22.
//

import SwiftUI

struct SearchBar: View {
  @Binding var text: String
  @Binding var isEditing: Bool
  
  var body: some View {
    HStack {
      TextField("Search Twitter", text: $text)
        .padding(8)
        .padding(.horizontal, 24)
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .overlay(
          HStack {
            Image(systemName: "magnifyingglass")
              .foregroundColor(.gray)
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 8)
          }
        )
      
      Button {
        isEditing = false
        text = ""
        UIApplication.shared.endEditiong()
      } label: {
        Text("Cancel")
      }
      .foregroundColor(.black)
      .padding(.trailing, 8)
      .transition(.move(edge: .trailing))
      .animation(.default, value: 1)

    }
    .onTapGesture {
      isEditing = true
    }
  }
}

struct SearchBar_Previews: PreviewProvider {
  static var previews: some View {
    SearchBar(text: .constant(""), isEditing: .constant(true))
  }
}

