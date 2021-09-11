import SwiftUI

struct AppetizerDetailView: View {
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)

            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    VStack(spacing: 5)  {
                        Text("Calories")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }

                    VStack(spacing: 5)  {
                        Text("Carbs")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }

                    VStack(spacing: 5)  {
                        Text("Protein")
                            .bold()
                            .font(.caption)

                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }

            Spacer()

            Button {
                order.items.append(appetizer)
                isShowingDetail = false

            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
        .frame(width: 325, height: 500)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(.white))
                    .opacity(0.6)

                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }

        }, alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}
