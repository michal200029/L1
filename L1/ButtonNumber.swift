import SwiftUI

struct ButtonNumber: View {
   let number: String
    @Binding var v1: Int;
    @Binding var v2: Int;
    @Binding var op: String;
    var body: some View {
        
        Button(action: {
            switch number {
            case "+": op = "+"
            case "-": op = "-"
            case "*": op = "*"
            case "/": op = "/"
            case "sin": op = "sin"
            default: if (v1 != nil) {
                v1 = Int(number)!
            } else {
                v2 = Int(number)!
            }
            }
        }){
            Text(number)
                .frame(width: 100, height: 60).border(Color.black, width: 2).font(.largeTitle)
        }

    }
}
