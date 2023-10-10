//
//  ButtonOp.swift
//  L1
//
//  Created by student on 10/10/2023.
//

import Foundation

struct ButtonOp: View {
   let number: String
    @Binding var v1: Double;
    @Binding var v2: Double;
    @Binding var op: String;
    @Binding var reuslt: Double;
    var body: some View {
        
        Button(action: {
            if (v1 != nil) {
                v1 = Double(number)!
            } else {
                v2 = Double(number)!
            }
        }){
            Text(number)
                .frame(width: 100, height: 60).border(Color.black, width: 2).font(.largeTitle)
        }

    }
}
