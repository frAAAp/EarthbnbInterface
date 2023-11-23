//
//  AirbnbInterfaceApp.swift
//  AirbnbInterface
//
//  Created by Francesca Pia Gargiulo on 14/11/23.
//

import SwiftUI

@main
struct AirbnbInterfaceApp: App {
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView().tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                LoginView().tabItem {
                    Image(systemName: "heart")
                    Text("Wishlist")
                }
                
                LoginView().tabItem {
                    Image(systemName: "airplane.departure")
                    Text("Trips")
                }
                
                LoginView().tabItem {
                    Image(systemName: "message")
                    Text("Inbox")
                }
                
                
                LoginView().tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Log in")
                }
                
            }
            //.tint(.green) PUOI USARE QUESTO INVECE CHE CAMBIARE L ACCENT COLOR
        }
    }
}

//pagina folle pazza dove dovevo mettere la tab bar. Waaa
