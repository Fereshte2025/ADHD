//
//  PomodoroView.swift
//  ADHD Focus
//
//  Created by Fereshte Ehsani on 27/02/25.
//

import SwiftUI

struct PomodoroView: View {
    @State private var timeRemaining = 25 * 60
    @State private var isRunning = false
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("Pomodoro Timer")
                .font(.largeTitle)
                .bold()

            Text("\(timeRemaining / 60):\(String(format: "%02d", timeRemaining % 60))")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding()

            HStack {
                Button(action: startTimer) {
                    Text("Start")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: resetTimer) {
                    Text("Reset")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }

    func startTimer() {
        guard !isRunning else { return }
        isRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                isRunning = false
                timer?.invalidate()
            }
        }
    }

    func resetTimer() {
        timer?.invalidate()
        timeRemaining = 25 * 60
        isRunning = false
    }
}

struct PomodoroView_Previews: PreviewProvider {
    static var previews: some View {
        PomodoroView()
    }
}
