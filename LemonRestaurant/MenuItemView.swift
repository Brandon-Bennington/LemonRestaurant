import SwiftUI

struct MenuItemView: View {
    var item: MenuItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$" + String(format: "%.2f", item.price))
                    .foregroundColor(.secondary)
            }

            Spacer()

            if item.price > 10 {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Premium")
                        .font(.caption)
                }
                .font(.caption)
                .foregroundColor(.orange)
                .padding(6)
                .background(Color.orange.opacity(0.1))
                .cornerRadius(6)
            }
        }
    }
}

// #Preview {
//     MenuItemView()
// }
