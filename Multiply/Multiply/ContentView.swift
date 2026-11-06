import SwiftUI
struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply App")
                .font(.title).bold()
            TextField("Enter a Number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Text("X")
                .font(.body).bold()
            TextField("Enter a Number", text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                    }
                }
                if calculation == 64 {
                    imageName = "Bears"
                } else if calculation % 2 == 1 {
                    imageName = "Volunteers"
                } else {
                    imageName = ""
                }
            }
                .padding()
            Text("\(calculation)")
                .padding()
            Image(imageName)
                .resizable()
                .padding()
            Spacer()
            }
        }
    }
#Preview {
    ContentView()
}
