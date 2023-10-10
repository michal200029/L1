import SwiftUI

struct ContentView: View {
    @State var inputText = "";
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text("Kalkulator")
                    .font(.system(size: 40))
            }
            Spacer()
            HStack{
                CustomTextField(text: $inputText);
            }
            HStack{
                ButtonNumber(number: "1");
                ButtonNumber(number: "2");
                ButtonNumber(number: "3");
            }
            HStack{
                ButtonNumber(number: "4");
                ButtonNumber(number: "5");
                ButtonNumber(number: "6");
            }
            HStack{
                ButtonNumber(number: "7");
                ButtonNumber(number: "8");
                ButtonNumber(number: "9");
            }
            HStack{
                ButtonNumber(number: "0");
                ButtonNumber(number: "+");
                ButtonNumber(number: "-");
            }
            HStack{
                ButtonNumber(number: "*");
                ButtonNumber(number: "/");
                ButtonNumber(number: "sin");
            }
            HStack{
                CalculateButton();
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
