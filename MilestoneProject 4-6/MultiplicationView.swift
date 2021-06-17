//
//  MultiplicationView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct MultiplicationView: View {
    let number1: Int
    init(number1: Int) {
        self.number1 = number1
    }
    var body: some View {
        Text("\(number1)")
    }
}

struct MultiplicationView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplicationView(number1: 2)
    }
}
