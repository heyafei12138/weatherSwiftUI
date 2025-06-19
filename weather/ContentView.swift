//
//  ContentView.swift
//  weather
//
//  Created by 贺亚飞 on 2025/6/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                HStack{
                    weaterView(dateStr: "周一", icon: "cloud", weatherStr: "多云")
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

struct weaterView : View {
    var dateStr : String
    var icon : String
    var weatherStr : String
    
    var body: some View {
        VStack{
            Text(dateStr)
                .font(.system(size: 12))
            Image(systemName: icon)
                .resizable()
                .frame(width: 40, height: 40)
            Text(weatherStr)
                .font(.system(size: 13))
        }
    }
}
