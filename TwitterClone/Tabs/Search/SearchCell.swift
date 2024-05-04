//
//  SearchCell.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 12/8/22.
//

import SwiftUI

struct SearchCell: View {
  var tag = ""
  var tweets = ""
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      Text("hello").fontWeight(.heavy)
      Text(tweets + " Tweets").fontWeight(.light)
    }
  }
}

struct SearchCell_Previews: PreviewProvider {
  static var previews: some View {
    SearchCell()
  }
}
