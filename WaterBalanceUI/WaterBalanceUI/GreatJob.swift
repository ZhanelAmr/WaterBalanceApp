//
//  GreatJob.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct GreatJob: View {
    var body: some View {
        ZStack {
            Rectangle()
            Color(red: 251/245, green: 252/245, blue: 254/245)
                .ignoresSafeArea(.all, edges: .all)
            VStack {
                Text("WATER BALANCE")
                    .font(.system(size: 17, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.textPrimary)
                    .textCase(.uppercase)
                    .padding(.top, 80)
                    .padding(.bottom, 10)
                
                ZStack {
                    GradientRectangle()
                    
                    VStack {
                        ZStack {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 180, height: 180)
                            
                            Text("34%")
                                .font(.system(size: 36))
                                .bold()
                            
                            Image("level")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180)
                        }
                        .padding(.bottom, 20)
                        
                        Text("0,8 out of 2,4L")
                            .padding(.bottom, 10)
                        Text("Monday, 25th of November")
                            .padding(.bottom, 100)
                        Text("Great job!")
                            .font(.system(size: 36, weight: .semibold))
                            .foregroundColor(AppColors.textSecondary)
                            .multilineTextAlignment(.center)
                            .padding(.top, 30)
                        AppButton(buttonName: "Add")
                            .padding(.top, 20)
                    }
                }
            }
        }
    }
}

struct GreatJob_Previews: PreviewProvider {
    static var previews: some View {
        GreatJob()
            .previewDevice("iPhone 15 Pro")
    }
}
