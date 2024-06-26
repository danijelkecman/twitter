//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/23/22.
//

import SwiftUI

struct NotificationsView: View {
  var body: some View {
    VStack {
      ScrollView {
        ForEach(0..<9) { _ in
          NotificationCell()
        }
      }
    }
  }
}

struct NotificationsView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationsView()
  }
}
