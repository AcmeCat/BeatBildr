//
//  ContentView.swift
//  BeatBildr Watch App
//
//  Created by Rory Allen on 20/5/2023.
//

import SwiftUI
import AVFAudio

var player: AVAudioPlayer!

struct ContentView: View {
    var body: some View {
        VStack {
            HStack { //all these buttons are essentially the same. TODO: They should be extracted into their own custom button view
                Button(action: {playSound("crash")})
                {Text("!").font(Font(CTFont(.pushButton, size: 48)))}
                .background(Color(.orange))
                .cornerRadius(10)
                Button(action: {playSound("snare")})
                {Text("@").font(Font(CTFont(.pushButton, size: 48)))}
                .background(Color(.cyan))
                .cornerRadius(10)
            }
            HStack {
                Button(action: {playSound("hat")})
                {Text("#").font(Font(CTFont(.pushButton, size: 48)))}
                .background(Color(.yellow))
                .cornerRadius(10)
                Button(action: {playSound("kick")})
                {Text("$").font(Font(CTFont(.pushButton, size: 48)))}
                .background(Color(.magenta))
                .cornerRadius(10)
            }
        }
        .padding()
    }
    
    //super inefficient way of doing this, i.e. spinning up new instance of an AVAudioPlayer. TODO: Revise
    func playSound(_ name: String) {
        print("hello !")
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        } catch {
            print("error")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
