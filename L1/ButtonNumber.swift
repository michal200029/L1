import SwiftUI

struct ButtonNumber: View {
   let number: String

    var body: some View {
        
        Button(action: {

        }){
            Text(number)
                .frame(width: 100, height: 60).border(Color.black, width: 2).font(.largeTitle)
        }

    }
}
