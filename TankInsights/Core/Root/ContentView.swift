//
//  ContentView.swift
//  TankInsights
//
//  Created by cristal cervantes on 6/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                Image("snoopy")
                    .resizable()
                    .cornerRadius(15.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Beach Snoopy")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

                    }
            

        }
    }
}

#Preview {
    ContentView()
}
