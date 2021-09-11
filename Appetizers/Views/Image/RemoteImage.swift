import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil

    func load(URLString: String) {
        NetworkManager.shared.downloadImage(fromURLString: URLString) { (uiImage) in
            guard let uiImage = uiImage else { return }

            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct remoteImage: View {
    var image: Image?

    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String

    var body: some View {
        remoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(URLString: urlString)
            }
    }
}
