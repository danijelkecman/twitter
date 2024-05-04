//
//  Extensions.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 12/9/22.
//

import UIKit

extension UIApplication {
  func endEditiong() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
