import SwiftUI

struct CalculateButton: View {
    @Binding var v1: Int
    @Binding var v2: Int
    @Binding var op: String
    @Binding var result: String
    @Binding var inputText: String
    var body: some View {
        Button(action: {
            result = String(Calc().handle(firstValue: v1, secondValue: v2, op: op))
            inputText = String(result)
        }) {
                        Text("OBLICZ")
                            .frame(width: 315, height: 60)
                            .border(Color.black, width: 2).font(.largeTitle)
                    }
    }
}
