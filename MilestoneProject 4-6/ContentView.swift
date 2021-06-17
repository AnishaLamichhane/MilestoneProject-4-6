//
//  ContentView.swift
//  MilestoneProject 4-6
//
//  Created by Anisha Lamichhane on 6/17/21.
//

import SwiftUI

struct ContentView: View {
    let items = Array(1...9).map({"\($0)"})
//    @Binding var number1: Int
    
    let layout = [
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50))
    ]

        var body: some View {
            NavigationView {
                ScrollView(.vertical) {
                    LazyVGrid(columns: layout, content: {
                        ForEach(items, id: \.self) { item in
                            VStack(alignment: .center) {
                               Text("Multiple")
                                Text("of")
                                Button("\(item)") {
                                    
                                }
                                .font(.title)
                                .foregroundColor(.green)
                            }
                            .border(Color.secondary)
                            .cornerRadius(12)
                            .padding()
                         }
                    })
                }
                .navigationBarTitle("Wanna Try Multiplication", displayMode: .inline)
            }
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
