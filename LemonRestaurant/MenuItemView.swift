import SwiftUI

struct MenuItemView: View {
    var item: MenuItem

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(item.name)
                    .font(.headline)
                
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Text(String(format: "$%.2f", item.price))
                    .font(.callout)
                    .foregroundColor(.primary)
            }

            Spacer()

            if item.price >= 10 {
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Premium")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 5)
                .foregroundColor(.orange)
                .background(Color.orange.opacity(0.2))
                .cornerRadius(8)
            }
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    MenuItemView(item: MenuItem(name: "Steak", description: "Juicy grilled", price: 14.00))
}
