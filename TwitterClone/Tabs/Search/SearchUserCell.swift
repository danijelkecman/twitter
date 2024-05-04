//
//  SearchUserCell.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 12/9/22.
//

import SwiftUI

struct SearchUserCell: View {
  var body: some View {
    HStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width: 44, height: 44)
        .clipShape(Circle())
      
      VStack(alignment: .leading) {
        Text("danijel")
          .fontWeight(.heavy)
        Text("@cxromos")
      }
      
      Spacer(minLength: 0)
    }
  }
}

struct SearchUserCell_Previews: PreviewProvider {
  static var previews: some View {
    SearchUserCell()
  }
}
