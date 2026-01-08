import SwiftUI

struct InstagramProfileView: View {
  @State var items: [PostItem]
  @State var highlightItemss: [HighlightItem]
  @State private var selectedTab = 0
  
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(alignment: .leading) {
          HStack {
            Text("staceliana")
              .font(.title2)
              .fontWeight(.bold)
            Spacer()
            Image(systemName: "bell")
              .resizable()
              .frame(width: 25, height: 25)
            Image(systemName: "ellipsis")
              .padding(.horizontal, 10)
          }
          .padding(.horizontal)
          
          HStack() {
            // Profile photo
            Image("Stacey ig")
              .resizable()
              .frame(width: 100, height: 100)
              .clipShape(Circle())
              .padding(.trailing, 10)
            
            // Stats
            HStack() {
              VStack (alignment: .leading){
                Text("Stacey Elbita Eliana").bold()
                
                HStack {
                  VStack (alignment: .leading) {
                    Text("5").font(.title3).bold()
                    Text("posts").font(.subheadline)
                  }
                  
                  VStack (alignment: .leading) {
                    Text("1,272").font(.title3).bold()
                    Text("followers").font(.subheadline)
                  }
                  .padding(.horizontal, 15)
                  VStack (alignment: .leading) {
                    Text("1,062").font(.title3).bold()
                    Text("following").font(.subheadline)
                  }
                }
                .padding(.vertical, 5)
              }
            }
          }
          .padding()
          
          VStack(alignment: .leading, spacing: 4) {
            Text("@ staceliana")
              .bold()
            NavigationLink(destination: ContentView()) {
              Text("iosda.link/myportfolio")
                .padding(.bottom, 20)
                .foregroundStyle(.blue)
            }
            
            HStack {
              Image("Gibran")
                .resizable()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
              Image("Cakno")
                .resizable()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
                .padding(.leading, -20)
              Image("Prabowo")
                .resizable()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
                .padding(.leading, -20)
              Text("Followed by **gibran_rakabuming**, **cakno_00** and **34 others**")
                .font(.subheadline)
            }
          }
          .padding(.horizontal)
          .padding(.bottom)
          
          HStack {
            (Text("Following ") + Text(Image(systemName: "chevron.down")))
              .bold()
              .padding(.horizontal, 25)
              .padding(.vertical, 7)
              .background(
                RoundedRectangle(cornerRadius: 10)
                  .stroke(.gray, lineWidth: 1)
                  .opacity(0.4)
              )
            Text("Message")
              .bold()
              .padding(.horizontal, 40)
              .padding(.vertical, 7)
              .background(
                RoundedRectangle(cornerRadius: 10)
                  .stroke(.gray, lineWidth: 1)
                  .opacity(0.4)
              )
            Text(Image(systemName: "person.badge.plus"))
              .bold()
              .padding(.horizontal, 10)
              .padding(.vertical, 6)
              .background(
                RoundedRectangle(cornerRadius: 10)
                  .stroke(.gray, lineWidth: 1)
                  .opacity(0.4)
              )
          }
          .padding(.horizontal)
          
          // Highlights
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              ForEach(highlightItemss) { highlight in
                VStack {
                  Image(highlight.imageHighlight)
                    .resizable()
                    .frame(width: 60, height: 70)
                    .clipShape(Circle())
                    .clipped()
                    .padding(4)
                    .overlay{
                      Circle().stroke(Color.gray .opacity(0.4), lineWidth: 3)
                    }
                  Text(highlight.titleHighlight)
                    .font(.caption2)
                    .lineLimit(1)
                }
              }
            }
            .padding(.horizontal)
          }
          .padding(.vertical, 4)
          
          // GridPostsView()
          HStack {
            Spacer()
            Image(systemName: "square.grid.3x3.fill")
              .resizable()
              .frame(width: 20, height: 20)
            Spacer()
            Image(systemName: "play.rectangle")
              .resizable()
              .frame(width: 20, height: 20)
              .foregroundColor(.gray)
              .padding(.horizontal, 60)
            Spacer()
            Image(systemName: "person.crop.square")
              .resizable()
              .frame(width: 20, height: 20)
              .foregroundColor(.gray)
            Spacer()
          }
          .padding(.vertical, 8)
          
          // Grid posts
          
          LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 2) {
            ForEach(items) { item in
              NavigationLink(destination: PostView(item: item)) {
                Image(item.imageFeeds.first ?? "")
                  .resizable()
                  .scaledToFill()
                  .frame(width: 132, height: 160)
                  .clipped()
              }
            }
          }
        }
      }
    }
    .toolbar(.hidden, for: .navigationBar)
  }
}

#Preview {
  InstagramProfileView(items: postItems, highlightItemss: highlightItems)
}
