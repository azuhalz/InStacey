import SwiftUI

struct DetailView: View {
  let item: ArchitectureItem
  @State private var selectedIndex = 0
  
  var body: some View {
    ZStack {
      Color.cyan
        .opacity(0.2)
        .edgesIgnoringSafeArea(.all)
      ScrollView {
        VStack(alignment: .leading) {
          TabView(selection: $selectedIndex) {
            ForEach(0..<item.imageNames.count, id: \.self) { index in
              Image(item.imageNames[index])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 360, height: 250)
                .clipped()
                .cornerRadius(12)
                .padding(.horizontal)
                .tag(index)
            }
          }
          .tabViewStyle(PageTabViewStyle())
          .frame(height: 250)
          
          Text(item.title)
            .font(.title)
            .bold()
            .padding(.horizontal)
          
          Text(item.description)
            .font(.body)
            .padding(.horizontal)
            .padding(.top, 6)
        }
      }
    }
    .presentationDetents([.medium, .large])
  }
}

#Preview {
  let sampleItem = ArchitectureItem(
    title: "Teras Kampus Terbuka yang Berkelanjutan",
    imageNames: ["Gambar1", "Gambar1a", "Gambar1b", "Gambar1c"],
    description: """
Desain ini menampilkan sebuah bangunan kampus atau institusi pendidikan dengan konsep teras terbuka yang mengarah ke tenga area, membentuk sirkulasi alami cahaya dan udara. Struktur bangunan yang simetris dan dominasi elemen kayu serta kaca memberikan kesan modern dan ramah lingkungan. Setiap lantai didesain dengan koridor terbuka yang menghadap ke area hijau di tengah.

Area tengah dengan tangga bertingkat yang difungsikan sebagai tempat duduk menciptakan ruang sosial alami bagi para pengunjung atau mahasiswa. Elemen tanaman yang tersebar di berbagai tingkat menambah kenyamanan dan kesejukan suasana. Pendekatan desain ini sangat cocok untuk ruang edukasi yang ingin mendorong interaksi terbuka dan inklusif.

Dari perspektif keberlanjutan, desain ini memungkinkan pemanfaatan maksimal cahaya alami dan ventilasi silang. Dengan atap terbuka dan banyak jendela besar, konsumsi energi dapat ditekan. Ruang luar yang besar dan hijau juga memberikan nilai estetika dan manfaat ekologi yang lebih dalam lingkungan urban.
"""
  )
  
  NavigationView {
    DetailView(item: sampleItem)
  }
}
