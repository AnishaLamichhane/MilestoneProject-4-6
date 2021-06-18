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
    @State private var score = 0
    
    @State private var showingAlert = false
    @State private var number2 = Int.random(in: 1...10)
    
    @State var trackNum2 = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
              
                Text("Find the answer")
                
                withAnimation{
                    Text("\(self.number1)  *  \(self.number2) = ??")
                        .font(.title)
                }
                
                TextField("   Answer:", text: $answer)
                    .foregroundColor(.white)
                    
                    .frame(height:44)
                    .accentColor(Color.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    
                
                Button(showingAlert ? "Submit" : "Next") {
                    self.steps -= 1
                    self.trackNum2 = number2
                    self.checkAnswer(num1: number1, num2: number2, answer: answer)
                    print("\(answer) \(number1) \(trackNum2)")
                    
                    if steps < 1 {
                        self.showingAlert = true
                    }
                    
              }
            
                
                
            }
            
            .padding([.leading, .trailing])
        }
        .navigationBarTitle("hello Kids", displayMode: .inline)
        
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Result!"), message: Text( "Your score is \(score)"), dismissButton: .default(Text("Okay")))
        }
   }
    func checkAnswer(num1: Int, num2: Int, answer: String){
        let solution = num1 * num2
        if let answer = Int(answer) {
            if (answer == solution) {
                self.score += 5
               
            }
        }
        number2 = Int.random(in: 1...10)
        print("\(score)")
    }
    
     func askQuestions() {
        
    }
    
    
}

struct MultiplicationView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplicationView(number1: .constant(3), steps: .constant(3))
    }
}
