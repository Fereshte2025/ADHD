//
//  BreathingView.swift
//  ADHD Focus
//
//  Created by Fereshte Ehsani on 27/02/25.
//

import SwiftUI

struct BreathingView: View {
    @State private var isBreathing = false

    var body: some View {
        ZStack {
            WavesView()
            VStack {
                Text("Breathing Exercise")
                
                    .font(.largeTitle)
                    .bold()
                    . multilineTextAlignment(.center)
                    .padding(.top, -70)
                    .fontWeight(.bold)
                
                
                VStack{
                    Circle()
                        .frame(width: 100, height: 100)
                        .scaleEffect(isBreathing ? 1.4 : 1)
                        .padding(.top, 40)
                        .foregroundColor(Color(red: 0.6, green: 0.7, blue: 0.6))
                    //seconds for scaling
                        .animation(.easeInOut(duration: 2), value: isBreathing)
                        .onAppear {
                            startAnimnation()
                        }
                    
                    Text(isBreathing ? "Inhale" : "hold" )
                        .font(.headline)
                        .padding()
                }
                .padding()
            }
        }
    }
    private func startAnimnation() {
        isBreathing = true
        //intervals
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isBreathing = false
            //intervals
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                startAnimnation()
            }
        }
    }
    
}

struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}
