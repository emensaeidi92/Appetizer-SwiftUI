import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "sample appetizer",
                                           description: "this is the description for the appetizer",
                                           price: 20.99,
                                           imageURL: "",
                                           calories: 50,
                                           protein: 500,
                                           carbs: 253)

    static let orderOne = Appetizer(id: 001,
                                           name: "sample appetizer one",
                                           description: "this is the description for the appetizer",
                                           price: 20.99,
                                           imageURL: "",
                                           calories: 50,
                                           protein: 500,
                                           carbs: 253)
    static let orderTwo = Appetizer(id: 002,
                                           name: "sample appetizer two",
                                           description: "this is the description for the appetizer",
                                           price: 20.99,
                                           imageURL: "",
                                           calories: 50,
                                           protein: 500,
                                           carbs: 253)
    static let orderThree = Appetizer(id: 003,
                                           name: "sample appetizer three",
                                           description: "this is the description for the appetizer",
                                           price: 20.99,
                                           imageURL: "",
                                           calories: 50,
                                           protein: 500,
                                           carbs: 253)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItems = [orderOne, orderTwo, orderThree]
}
