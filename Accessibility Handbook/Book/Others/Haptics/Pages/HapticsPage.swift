//
//  HapticsPage.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 21/09/22.
//

import SwiftUI

struct HapticsPage: View, Page {
  var title: String = "Haptics"

  let link: String = """
  https://developer.apple.com/design/human-interface-guidelines/patterns/playing-haptics/
  """

  let hapticLink: String = """
  https://developer.apple.com/design/human-interface-guidelines/patterns/playing-haptics/
  """

  let code: String = """
  // Selection
  UISelectionFeedbackGenerator()
    .selectionChanged()

  // Impact - light, medium , heavy
  UIImpactFeedbackGenerator(style: .light)
    .impactOccurred()

  // Success, error , warning
  UINotificationFeedbackGenerator()
    .notificationOccurred(.success)
  """

  var body: some View {
    PageContent(next: HapticsListPage()) {
      Group {
        Text("Haptics are little vibrations the device can make")
        Text("There are several types of Haptics, and each one is used to represent something different.")
        Comment("But... why are we talking about haptics in an accessibility guide?")
        Text("Haptics are a type of feedback. When you select something, when something suceeds...")
        Text("It's an additional layer of feedback. Imagine most actions have some kind of visual feedback, like when you tap a button and it changes it's color slightly so you know the button is pressed.")
        Text("Since sometimes we cannot rely on visual cues, the Haptics can be a very interesting and powerful way to improve accessibility.")
        Code(uiKit: code)
        DocButton(link: link, title: title)
      }
      .toAny()
    }
  }
}
