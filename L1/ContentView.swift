import SwiftUI

struct ContentView: View {
    @State var v1: Int = 0
    @State var v2: Int = 0
    @State var op: String = ""
    @State var reuslt: String = "";
    @State var inputText: String
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text("Kalkulator")
                    .font(.system(size: 40))
            }
            Spacer()
            HStack{
                CustomTextField(text: $reuslt);
            }
            HStack{
                ButtonNumber(number: "1", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "2", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "3", v1: $v1, v2: $v2, op: $op);
            }
            HStack{
                ButtonNumber(number: "4", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "5", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "6", v1: $v1, v2: $v2, op: $op);
            }
            HStack{
                ButtonNumber(number: "7", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "8", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "9", v1: $v1, v2: $v2, op: $op);
            }
            HStack{
                ButtonNumber(number: "0", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "+", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "-", v1: $v1, v2: $v2, op: $op);
            }
            HStack{
                ButtonNumber(number: "*", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "/", v1: $v1, v2: $v2, op: $op);
                ButtonNumber(number: "sin", v1: $v1, v2: $v2, op: $op);
            }
            HStack{
                CalculateButton(v1: $v1, v2: $v2, op: $op, result: $reuslt, inputText: $inputText)
            }
        }
        .padding()
    }
}
