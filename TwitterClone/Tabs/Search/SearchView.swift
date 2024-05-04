//
//  SearchView.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/23/22.
//

import SwiftUI

struct SearchView: View {
  @State var text = ""
  @State var isEditing = false
  
  var body: some View {
    VStack {
      SearchBar(text: $text, isEditing: $isEditing)
        .padding(.horizontal)
      if !isEditing {
        List(0..<9) { i in
          SearchCell(tag: "Hello", tweets: String(i))
        }
        .listStyle(.plain)
      } else {
        List(0..<9) { _ in
          SearchUserCell()
        }
        .listStyle(.plain)
      }
    }
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
