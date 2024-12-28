//
//  Settings.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct Settings: View {
    @State private var selectedTab: Int = 2
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .white
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    var body: some View {
        ZStack{
            Rectangle()
            Color(red: 251/245, green: 252/245, blue: 254/245)
                .ignoresSafeArea(.all, edges: .all)
            VStack{
                Text("EDIT")
                .font(.system(size: 17, weight: .black, design: .default))
                .foregroundColor(AppColors.textPrimary)
                .italic()
                .frame(width: 90, height: 5, alignment: .center)
                .padding(.top, 70)
                .padding(.bottom, 30)
        
                HStack{
                    Text("Daily Intake Level")
                        .frame(width: 260, height: 22, alignment: .leading)
                        .font(.system(size: 17))
                    Text("2400 ML")
                        .foregroundColor(.gray)
                        .frame(width: 70, height: 22, alignment: .trailing)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                    
                }
                .padding(.horizontal, 16)
                .padding(.vertical,11)
                Divider()
                    .frame(width: 370, alignment: .center)
                HStack{
                    Text("Your goal")
                        .frame(width: 335, height: 22, alignment: .leading)
                        .font(.system(size: 17))
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 16)
                .padding(.vertical,11)
                Divider()
                    .frame(width: 370, alignment: .center)
                HStack{
                    Text("Reminder")
                        .frame(width: 335, height: 22, alignment: .leading)
                        .font(.system(size: 17))
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 16)
                .padding(.vertical,11)
                Divider()
                    .frame(width: 370, alignment: .center)
            }
            .padding(.bottom,530)
        }
    }
}
        

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .previewDevice("iPhone 15 Pro")
    }
}
