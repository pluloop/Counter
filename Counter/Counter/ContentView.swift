//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0 // to store count (display below)
    
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter") // show prompt
                .padding() // add empty line
            
            Text(String(count)) // show count
                .padding() // add empty line
            
            HStack{ // to have 2 buttons side by side
                // add 1 to count upon click and shows design of button
                Button("Increment", action: increment)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                // subtracts 1 to count upon click and shows design of button
                Button("Increment", action: decrement)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
    // to add 1 to counter
    func increment(){
        // only adds 1 if less than 50
        if (count < 50){
            count += 1
        }
    }
    
    // to subtract 1 to counter
    func decrement(){
        // only subtracts 1 if more than 0
        if (count > 0){
            count -= 1
        }
    }
}

#Preview {
    ContentView()
}
