//
//  ContentView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct ContentView: View {
//    let items = Array(1...9).map({"\($0)"})
    @State private var showingSheet = false

    @State var number1 = 0
    @State var keepRecord = 0
    @State var steps = 5
    
    let layout = [
        GridItem(.flexible(minimum: 20)),
        GridItem(.flexible(minimum: 20)),
        GridItem(.flexible(minimum: 20))
    ]

        var body: some View {
            NavigationView {
                ScrollView(.vertical) {
                    VStack {
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
                                .onAppear{
                                    self.keepRecord = item
                                }
                                
                             }
                            .onTapGesture {
                                self.number1 = keepRecord
                            }
                        }
                        
                        .padding(.bottom)
                        Stepper("Enter the no of steps: \(steps)", value: $steps, in: 0...10)
                            .padding([.bottom, .top])
                        Button(action: {
                            self.showingSheet.toggle()
                        }, label: {
                            Text("Start Test")
                        })
                        .frame(width: 100, height: 60, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.green)
                        .border(Color.secondary)
                        .clipShape(Capsule())
                        
                        .sheet(isPresented: $showingSheet) {
                            MultiplicationView(number1: $number1, steps: $steps)
                        }
                        
                    }
                    
                    .padding([.all])
                   
                    
                }
                .navigationBarTitle("Wanna Try Multiplication", displayMode: .inline)
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
