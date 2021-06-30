//
//  Settings.swift
//  Avocados
//
//  Created by Emile Wong on 28/6/2021.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enabledNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            // HEADER
            VStack(alignment: .center, spacing: 5){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: (Color("ColorBlackTransparentLight")), radius: 8, x: 4, y: 4)
                
                Text("Avocado".uppercased())
                    .font(.system(.title, design: .serif))
                    .font(.body)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                
            } //: VSTACK
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enabledNotification, label: {
                        Text("Enable Notification")
                    })
                    
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background Refresh")
                    })
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enabledNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone / iPad")
                        }
                        
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Emile Wong")
                        }
                        
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("www.emilewong.com")
                        }
                        
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                        
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                }
            }
            
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}
// MARK: - PREVIEW
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
