import SwiftUI

struct PortfolioView: View {
  @State var items: [ArchitectureItem]
  @State private var showAll = false
  @State private var isShowingModal: Bool = false
  @State private var selectedItem: ArchitectureItem?
  
  var body: some View {
    ZStack {
      VStack {
        HStack{
          Text("Portfolio")
            .font(.title3)
            .bold()
          Spacer()
        }
        
        ForEach(showAll ? items : Array(items.prefix(2))) { item in
          Button {
            selectedItem = item
            isShowingModal = true
          } label: {
            VStack(alignment: .leading) {
              Image(item.imageNames.first ?? "")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 330, height: 200)
                .clipped()
                .cornerRadius(12)
              
              Text(item.title)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.primary)
                .padding(.bottom)
            }
            .frame(width: 320)
          }
          .buttonStyle(PlainButtonStyle())
        }
        
        Button(action: {
          withAnimation (.bouncy(duration: 2)) {
            showAll.toggle()
          }
        }) {
          Text(showAll ? "Less" : "More")
            .font(.headline)
            .foregroundColor(.blue)
            .padding(.top, 8)
        }
      }
      .padding()
    }
    .background(.white .opacity(0.5))
    .cornerRadius(20)
    .padding(.horizontal)
    
    .sheet(item: $selectedItem) { item in
      DetailView(item: item)
    }
  }
}

#Preview {
  PortfolioView(items: architectureItems)
}
