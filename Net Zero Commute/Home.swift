//
//  Home.swift
//  Net Zero Commute
//
//  Created by Surya Narayan Santhakumar on 2023-10-15.
//

import SwiftUI
import MapKit
import Combine

struct Home: View {
    @State var start = ""
    @State var dest = ""
    var bools = true
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion()
        @State private var cancellable: AnyCancellable?
        
        private func setCurrentLocation() {
            cancellable = locationManager.$location.sink { location in
                region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 500, longitudinalMeters: 500)
            }
        }
    
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
                    
                    Spacer()
                    
                    VStack {
                        if locationManager.location != nil {
                            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true)
                        } else {
                            Text("Locating user location...")
                        }
                    }
                    
                    .onAppear {
                        setCurrentLocation()
                    }
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "location.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            
                            TextField("Start", text: $start)
                                .font(.title)
                                .padding(.all)
                                .background(.gray)
                                .cornerRadius(30)
                            Spacer()
                        }
                        //Spacer()
                        HStack {
                            Image(systemName: "mappin")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            
                            TextField("Destination", text: $dest)
                                .font(.title)
                                .padding(.all)
                                .background(.gray)
                                .cornerRadius(30)
                            Spacer()
                        }
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
                            
                            NavigationLink(destination: Profile().navigationBarBackButtonHidden(), label: {
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
    Home()
}
