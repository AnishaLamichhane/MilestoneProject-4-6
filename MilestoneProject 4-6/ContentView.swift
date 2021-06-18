//
//  ContentView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct ContentView: View {

    @State private var showingView = false
    

    @State var number1 = 0
//    @State var keepRecord = 0
    @State var steps = 5
    
    let layout = [
        GridItem(.flexible(minimum: 20)),
        GridItem(.flexible(minimum: 20)),
        GridItem(.flexible(minimum: 20))
    ]

        var body: some View {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 20) {
                        Section {
                            Text("Test your Multiplication skills.")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                                .font(.title2)
                        }
                        
                        Section {
                            LazyVGrid(columns: layout, spacing: 5) {
                                ForEach(1...9, id: \.self) { item in
                                    VStack(alignment: .center) {
                                        Text("Multiple")
                                        Text("of")
                                        Text("\(item)")
                                        .font(.title)
                                        
                                        
                                    }
                                    .frame(width: 90, height: 80, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(getRandomColor())
                                    .border(Color.secondary)
                                    .cornerRadius(12)
        //                            .padding()
                                   .onTapGesture {
                                        self.number1 = item
                                    }
                                    
                                 }
                                
                            }
                        }
                        
                        
                        Section {
                            Stepper("Enter the no of steps: \(steps)", value: $steps, in: 0...10)
                        }
                           
                        Button(action: {
                            self.showingView = true
                        }, label: {
                            Text("Start Test")
                        })
                        .frame(width: 100, height: 60, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.green)
                        .border(Color.secondary)
                        .clipShape(Capsule())
                        
                    }
                    
                    .padding([.all])
                   
                    
                }
                .navigationBarTitle("Multiplication Quiz", displayMode: .inline)
                .background(
                    NavigationLink(destination: MultiplicationView(number1: $number1, steps: $steps), isActive: $showingView) {
                    
                    }
                )
            }
            
        }

    func getRandomColor() -> Color{
         let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...0.9)
         let randomBlue = CGFloat.random(in: 0...1)
         return Color(red: Double(randomRed), green: Double(randomGreen), blue: Double(randomBlue))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
