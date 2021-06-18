//
//  MultiplicationView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct MultiplicationView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var number1: Int
    @Binding var steps: Int
    @State private var answer = ""
    var number2 = Int.random(in: 1...10)
    
    @State private var showingAgain = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
              
                Text("Find the answer")
                Text("\(self.number1)  *  \(self.number2) = ??")
                    .font(.title)
                
                TextField("    Answer:", text: $answer)
                    .foregroundColor(.white)
                    
                    .frame(height:44)
                    .accentColor(Color.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                                
                
                Button(showingAgain ? "Next" : "Submit") {
                    self.steps -= 1
                   if self.steps < 1 {
                        self.showingAgain = false
                   
                    } else {
                      self.showingAgain = true
                        
                    }
                    
                }
                
            }
            .padding([.leading, .trailing])
        }
        .navigationBarTitle("hello Kids", displayMode: .inline)
        .background(
            NavigationLink(destination: MultiplicationView(number1: $number1, steps: $steps), isActive: $showingAgain) {
                
            }
        )
        
    }
    
}

struct MultiplicationView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplicationView(number1: .constant(3), steps: .constant(3))
    }
}
