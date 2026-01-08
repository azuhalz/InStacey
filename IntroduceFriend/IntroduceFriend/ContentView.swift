import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      ZStack{
        Color.cyan.opacity(0.2)
          .edgesIgnoringSafeArea(.all)
        ScrollView {
          VStack(spacing: 20) {
            ProfileHeaderView()
            AboutView()
            ExperienceView()
            EducationView()
            CertificationView()
            PortfolioView(items: architectureItems)
          }
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
