//
//  ContentView.swift
//  TimerTest
//
//  Created by Samir Raut on 09/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var countDownTimer = 5
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
        VStack {
            Text("\(countDownTimer)").onReceive(timer) { _ in
                
                if countDownTimer > 0 && timerRunning {
                    countDownTimer -= 1
                } else {
                    timerRunning = false
                }
                
            }
            .font(.system(size: 80,weight: .bold)).opacity(0.80)
            
            HStack(spacing: 30)
            {
                Button("Start") {
                    timerRunning = true
                }
                
                Button("Reset")
                {
                    timerRunning = false
                    countDownTimer = 5
                }.foregroundColor(.red)
            }
            
            
                VStack(spacing: 30){
                    NavigationLink(
                        destination: UISubhashit(),
                        label: {
                            Text("Next")
                        }).foregroundColor(Color.green)
                }.padding(30)
            }
            }
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
