//
//  Profile.swift
//  Net Zero Commute
//
//  Created by Surya Narayan Santhakumar on 2023-10-19.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BG").ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                        Image("Symbol")
                            .scaledToFit()
                            .padding()
                        
                        Text("Net Zero Commute")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    .frame(width: 150.0)
                    
                    HStack {
                        Text("Profile")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .bold()
                            .padding()

                            Spacer()
                    }
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color(.green))
                            .frame(height: 75)
                            .padding()
                        
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: Home().navigationBarBackButtonHidden(), label: {
                                ZStack {
                                    VStack {
                                        Image(systemName: "house.fill")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                            .padding(.all, 10.0)
                                            .background(Color("BG"))
                                            .cornerRadius(10)
                                    }
                                }
                            })
                            
                            Spacer()
                            
                            NavigationLink(destination: Dashboard().navigationBarBackButtonHidden(), label: {
                                ZStack {
                                    VStack {
                                        Image(systemName: "chart.bar.xaxis")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                            .padding(.all, 10.0)
                                            .background(Color("BG"))
                                            .cornerRadius(10)
                                    }
                                }
                            })
                            
                            Spacer()
                            
                            NavigationLink(destination: Profile(), label: {
                                ZStack {
                                    VStack {
                                        Image(systemName: "person.fill")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                            .padding(.all, 10.0)
                                            .background(Color("BG"))
                                            .cornerRadius(10)
                                    }
                                }
                            })
                            
                            Spacer()
                        }
                        
                        
                        
                    }
                }
            }
        }
        
    }
}

#Preview {
    Profile()
}
