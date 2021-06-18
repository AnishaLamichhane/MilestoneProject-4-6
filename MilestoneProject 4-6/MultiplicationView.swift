//
//  MultiplicationView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct MultiplicationView: View {
    @Binding var number1: Int
    @Binding var steps: Int
    var number2 = Int.random(in: 1...20)
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Find the answer")
            Text("\(self.number1) * \(self.number2) = ??")
        }
        
    }
}

//struct MultiplicationView_Previews: PreviewProvider {
//    static var previews: some View {
//        MultiplicationView(number1: <#Binding<Int>#>, steps: <#Binding<Int>#>)
//    }
//}
