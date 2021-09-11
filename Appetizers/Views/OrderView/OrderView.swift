import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        } .onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())

                    Button {

                    } label: {
                        Text("$\(order.totalPrice,specifier: "%.2f")- Add to Order")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 260, height: 50)
                            .foregroundColor(.white)
                            .background(Color.brandPrimary)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "there is no item in your list.\nplease add appetizer.")
                }
            }

            .navigationTitle("Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
