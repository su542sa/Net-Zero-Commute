//
//  ContentView.swift
//  Net Zero Commute
//
//  Created by Surya Narayan Santhakumar on 2023-10-10.
//

import SwiftUI

struct ContentView: View {
    var email = ""
    var body: some View {
        ZStack {
            Color("BG").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                VStack {
                    HStack {
                        Text("Please enter your email:")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                        Spacer()
                    }
                    
                    
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
