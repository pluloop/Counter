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
        VStack { // to display the prompt, count, and buttons all vertically
            Text("Click buttons below to change the counter") // show prompt
                .padding() // add empty line
            
            Text(String(count)) // show count
                .padding() // add empty line
            
            HStack{ // to have 2 buttons side by side
                Button("Increment", action: increment) // creates button with text "Increment" and calls function increment upon click
                    .padding() // adds more color from the border to the text
                    .background(Color.blue) // makes the color blue for button
                    .foregroundColor(.white) // makes the text white for button
                    .cornerRadius(8) // makes the button corners round
                
                Button("Increment", action: decrement) // creates button with text "Decrement" and calls function decrement upon click
                    .padding() // adds more color from the border to the text
                    .background(Color.blue) // makes the color blue for button
                    .foregroundColor(.white) // makes the text white for button
                    .cornerRadius(8) // makes the button corners round
            } // to close hstack
        } // to close vstack
        .padding()
    }
    func increment(){ // to add 1 to counter
        if (count < 50){ // only adds 1 if less than 50
            count += 1 // adds 1 to count
        } // end of if
    } // to close increment
    
    func decrement(){ // to subtract 1 to counter
        if (count > 0){ // only subtracts 1 if more than 0
            count -= 1 // subtracts 1 to count
        } // end of if
    } // to close decrement
}

#Preview {
    ContentView()
}
