import SwiftUI

@main
struct IntroduceFriendApp: App {
    var body: some Scene {
        WindowGroup {
          InstagramProfileView(items: postItems, highlightItemss: highlightItems)
        }
    }
}
