//
//  ContentView.swift
//  BeatBildr Watch App
//
//  Created by Rory Allen on 20/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button ("!", action: playSound1)
                    .background(Color(.orange))
                    .cornerRadius(10)
                    .font(Font(CTFont(.pushButton, size: 32)))
                Button ("@", action: playSound2)
                    .background(Color(.cyan))
                    .cornerRadius(10)
                    .font(Font(CTFont(.pushButton, size: 32)))
            }
            HStack {
                Button ("#", action: playSound3)
                    .background(Color(.yellow))
                    .cornerRadius(10)
                    .font(Font(CTFont(.pushButton, size: 32)))
                
                .cornerRadius(10)
                Button ("$", action: playSound4)
                    .background(Color(.magenta))
                    .cornerRadius(10)
                    .font(Font(CTFont(.pushButton, size: 32)))
            }
        }
        .padding()
    }
    
    func playSound1() {
        print("hello !")
    }
    
    func playSound2() {
        print("hello @")
    }
    
    func playSound3() {
        print("hello #")
    }
    
    func playSound4() {
        print("hello $")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
