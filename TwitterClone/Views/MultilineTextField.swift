//
//  MultilineTextView.swift
//  TwitterClone
//
//  Created by Danijel Kecman on 11/23/22.
//

import SwiftUI

struct MultilineTextField: UIViewRepresentable {
  
  func makeCoordinator() -> MultilineTextField.Coordinator {
    return MultilineTextField.Coordinator(parent: self)
  }
  
  @Binding var text: String
  
  func makeUIView(context: Context) -> some UITextView {
    let text = UITextView()
    text.isEditable = true
    text.text = "Type Something"
    text.isUserInteractionEnabled = true
    text.textColor = .gray
    text.font = .systemFont(ofSize: 20)
    text.delegate = context.coordinator
    return text
  }
  
  func updateUIView(_ uiView: UIViewType, context: Context) {
    
  }
  
  class Coordinator: NSObject, UITextViewDelegate {
    var parent: MultilineTextField
    
    init(parent: MultilineTextField) {
      self.parent = parent
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
      textView.text = ""
      textView.textColor = .black
    }
    
    func textViewDidChange(_ textView: UITextView) {
      self.parent.text = textView.text
    }
  }
}
