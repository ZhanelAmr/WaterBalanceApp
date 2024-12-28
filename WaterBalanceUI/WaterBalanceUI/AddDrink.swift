//
//  AddDrink.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct AddDrink: View {
    @State private var selectedTab: Int = 1
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
                Text("WATER BALANCE")
                    .font(.system(size: 17, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.textPrimary)
                    .textCase(.uppercase)
                    .padding(.top, 80)
                    .padding(.bottom, 10)
                
                ZStack{
                    GradientRectangle()
                    Text("0%")
                        .font(.system(size: 36))
                        .bold()
                        .padding(.bottom, 420)
                    Text("0 out of 2,4L")
                        .padding(.bottom, 320)
                    Text("Monday, 25th of November")
                        .padding(.bottom, 100)
                    Text("Add your first drink for today")
                        .font(.system(size: 36, weight: .semibold))
                        .foregroundColor(AppColors.textSecondary)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    AppButton(buttonName: "Add")
                        .padding(.top, 500)
                    }
                }
            }
        }
    }

struct AddDrink_Previews: PreviewProvider {
    static var previews: some View {
        AddDrink()
            .previewDevice("iPhone 15 Pro")
    }
}
