import SwiftUI

struct CustomTextField: View {
    @Binding var text: String;
    var body: some View {
        TextField("", text: $text)
            .frame(width: 315, height: 60)
            .border(Color.black, width: 2)
    }
}
