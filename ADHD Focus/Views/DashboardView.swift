//
//  DashboardView.swift
//  ADHD Focus
//
//  Created by Fereshte Ehsani on 27/02/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("ADHD Focus")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                NavigationLink(destination: ToDoListView()) {
                    DashboardButton(title: "Daily Planner", icon: "calendar")
                }


                NavigationLink(destination: PomodoroView()) {
                    DashboardButton(title: "Pomodoro Timer", icon: "timer")
                }

                NavigationLink(destination: BreathingView()) {
                    DashboardButton(title: "Breathing Exercises", icon: "wind")
                }

               
                Spacer()
            }
            .padding()
        }
    }
}

struct DashboardButton: View {
    var title: String
    var icon: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .font(.title)

            Text(title)
                .font(.headline)
                .foregroundColor(.primary)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
