//
//  ContentView.swift
//  ADHD Focus
//
//  Created by Fereshte Ehsani on 27/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DashboardView() // هدایت به صفحه اصلی
        }
        .navigationViewStyle(StackNavigationViewStyle()) // جلوگیری از دو پنجره در iPad
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
