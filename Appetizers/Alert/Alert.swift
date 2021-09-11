import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dissmissButton: Alert.Button
}

class AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data was received from server was invalid."),
                                       dissmissButton: .default(Text("")))

    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from server."),
                                           dissmissButton: .default(Text("Ok")))

    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server."),
                                      dissmissButton: .default(Text("Ok")))

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time."),
                                            dissmissButton: .default(Text("Ok")))

    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please make sure all fields in the form have been filled out."),
                                            dissmissButton: .default(Text("Ok")))

    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please make sure your email is correct."),
                                            dissmissButton: .default(Text("Ok")))

    static let userSaveSuccess = AlertItem(title: Text("Profile saved"),
                                            message: Text("Your profile information was successfully saved."),
                                            dissmissButton: .default(Text("Ok")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error for saving or retrieving your profile."),
                                            dissmissButton: .default(Text("Ok")))
}
