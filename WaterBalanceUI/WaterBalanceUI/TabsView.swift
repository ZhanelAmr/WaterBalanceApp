//
//  TabsView.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct TabsView: View {
    @State private var selectedTab: Int = 1
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .darkGray
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    var body: some View {
    
        TabView(selection: $selectedTab){
            AddDrink()
                .tabItem{
                Image(systemName: "house.circle").renderingMode(.template)
                    .accentColor(.white)
                Text("Main")
                    .foregroundColor(.white)
            }.accentColor(.gray)
            .tag(1)
            Settings()
                    .tabItem{
                        Image(systemName: "slider.horizontal.3").renderingMode(.template)
                            .accentColor(.white)
                        Text("Settings")
                            .foregroundColor(.white)
                    }.accentColor(.gray)
                 .tag(2)
            History()
                .tabItem{
                    Image(systemName: "square.and.pencil").renderingMode(.template)
                        .accentColor(.white)
                    Text("History")
                        .foregroundColor(.white)
                }.accentColor(.white)
                .tag(3)
        }
        .accentColor(Color.gray)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
            .previewDevice("iPhone 15 Pro")
    }
}
