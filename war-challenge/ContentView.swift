//
//  ContentView.swift
//  war-challenge
//
//  Created by Daniel Mansour on 12/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0;
    @State private var cpuScore = 0;
    
    var body: some View {
        ZStack() {
            Image("background")
                .ignoresSafeArea()
            VStack() {
                Spacer()
                Image("logo")
                    .padding(.bottom)
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                        .padding(.top)
                    Spacer()
                    Image(cpuCard)
                        .padding(.top)
                    Spacer()
                }
                Spacer()
                Button(
                    action: {
                        // Generate a random number between 2 and 14
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        // Update the cards
                        playerCard = "card" + String(playerRand)
                        cpuCard = "card" + String(cpuRand)
                        
                        // Update the score
                        playerScore += playerRand > cpuRand ? 1 : 0
                        cpuScore += cpuRand > playerRand ? 1 : 0
                    },
                    label: {
                        Image("dealbutton")
                    }
                )
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        Text("Player")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack() {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
