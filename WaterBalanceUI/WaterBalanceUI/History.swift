//
//  History.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct History: View {
    @State private var selectedTab: Int = 3
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
                Group{
                    Text("HISTORY")
                    .font(.system(size: 17, weight: .black, design: .default))
                    .foregroundColor(AppColors.textPrimary)
                    .italic()
                    .frame(width: 90, height: 5, alignment: .center)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
               
                    Text("Today")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 390, height: 25, alignment: .leading)
                        .padding(.bottom, 5)
                        .padding(.leading, 20)
            
                    HStack{
                        AppText(textEx: "250 ml")
                        AppText2(textEx: "12:13")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                        
                    HStack{
                        AppText(textEx: "200 ml")
                        AppText2(textEx: "14:10")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                    
                    HStack{
                        AppText(textEx: "50 ml")
                        AppText2(textEx: "15:13")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                    
                    HStack{
                        AppText(textEx: "300 ml")
                        AppText2(textEx: "19:10")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                }
                
                Group{
                    Text("23.11.21")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 390, height: 25, alignment: .leading)
                        .padding(.bottom, 5)
                        .padding(.top, 25)
                        .padding(.leading, 20)
            
                    HStack{
                        AppText(textEx: "250 ml")
                        AppText2(textEx: "12:13")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                        
                    HStack{
                        AppText(textEx: "200 ml")
                        AppText2(textEx: "14:10")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                    
                    HStack{
                        AppText(textEx: "50 ml")
                        AppText2(textEx: "15:13")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                    
                    HStack{
                        AppText(textEx: "300 ml")
                        AppText2(textEx: "19:10")
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical,11)
                    Divider()
                        .frame(width: 370, alignment: .center)
                    }
                Spacer()
                }
            }
        }
    }

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
            .previewDevice("iPhone 15 Pro")
    }
}
