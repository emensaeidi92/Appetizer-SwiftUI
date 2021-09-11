import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel ()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .disableAutocorrection(true)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .disableAutocorrection(true)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, in: Date().oneHundredYears...Date().eighteenYears, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section(header: Text("Requests")) {
                    Toggle("Utensils", isOn: $viewModel.user.utensils)
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
            }
                .navigationTitle("Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dissmissButton)
        }
        .onAppear() {
            viewModel.retrievUser()
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
