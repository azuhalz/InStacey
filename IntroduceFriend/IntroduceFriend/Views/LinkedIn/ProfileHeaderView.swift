import SwiftUI

struct ProfileHeaderView: View {
  var body: some View {
    VStack {
      Image("profile")
        .resizable()
        .clipShape(Circle())
        .overlay {
          Circle().stroke(Color.white, lineWidth: 5)
        }
        .frame(width: 200, height: 200)
      
      
      Text("Stacey Elbita Eliana")
        .bold()
        .font(.title)
      
      HStack{
        Text("Architecture & Interior Design")
          .font(.subheadline)
          .frame(width: 215, height: 30)
          .padding(.all, (5))
          .background(.cyan .opacity(0.2))
          .cornerRadius(50)
        Text("ESFJ")
          .font(.subheadline)
          .frame(width: 60, height: 30)
          .padding(.all, (5))
          .background(.cyan .opacity(0.2))
          .cornerRadius(50)
      }
      
      HStack{
        Text("Watching Movie")
          .font(.subheadline)
          .frame(width: 130, height: 30)
          .padding(.all, (5))
          .background(.cyan .opacity(0.2))
          .cornerRadius(50)
        Text("Reading Comic")
          .font(.subheadline)
          .frame(width: 130, height: 30)
          .padding(.all, (5))
          .background(.cyan .opacity(0.2))
          .cornerRadius(50)
      }
    }
  }
}

#Preview {
  ProfileHeaderView()
}
