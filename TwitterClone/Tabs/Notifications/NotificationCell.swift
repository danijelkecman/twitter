//
//  NotificationCell.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 12/15/22.
//

import SwiftUI

struct NotificationCell: View {
  @State var width = UIScreen.main.bounds.width
  var body: some View {
    VStack {
      Rectangle()
        .frame(width: width, height: 1, alignment: .center)
        .foregroundColor(.gray)
        .opacity(0.3)
      
      HStack(alignment: .top) {
        Image(systemName: "person.fill")
          .resizable()
          .foregroundColor(.blue)
          .scaledToFit()
          .frame(width: 20, height: 20)
        
        VStack(alignment: .leading, spacing: 4) {
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 36, height: 36)
            .cornerRadius(18)
          
          Text("danijel ")
            .fontWeight(.bold)
            .foregroundColor(.primary)
          +
          Text("followed you")
            .foregroundColor(.black)
        }
        
        Spacer(minLength: 0)
      }
      .padding(.leading, 30)
    }
  }
}

struct NotificationCell_Previews: PreviewProvider {
  static var previews: some View {
    NotificationCell()
  }
}
