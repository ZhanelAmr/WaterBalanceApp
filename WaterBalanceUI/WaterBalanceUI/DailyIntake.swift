//
//  DailyIntake.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct DailyIntake: View {
    var body: some View {
        ZStack{
            Color(red: 251/245, green: 252/245, blue: 254/245)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(alignment: .center, spacing: 0){
                Image(systemName: "chevron.left")
                    .font(.system(size: 23))
                    .foregroundColor(AppColors.textPrimary)
                    .frame(width: 360, height: 40, alignment: .leading)
                    .padding(.top, 50)
                
                Text("WATER")
                    .font(.system(size: 24, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.textPrimary)
                    .textCase(.uppercase)
                    .padding(.bottom, 29)
                
                Text("Daily intake?")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.textSecondary)
                    .padding(.top, 62)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(red: 212/245, green: 225/245, blue: 248/245))
                        .frame(width: 358, height: 108, alignment: .leading)
                        .padding(.horizontal, 19)
                    
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .frame(width: 250, height: 60, alignment: .leading)
                        .padding(.trailing, 75)
                        .cornerRadius(16)
                    
                    HStack{
                        TextField("", text: .constant("2400"))
                            .keyboardType(.numberPad)
                            .frame(width: 50, height: 50,alignment: .center)
                            .foregroundColor(AppColors.button)
                            .textContentType(.oneTimeCode)
                            .background(.white)
                            .padding(.leading, 80)
                        Text("ML")
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50, alignment: .center)
                            .padding(.leading, 100)
                            }
                    }
                .padding(.top, 32)
                
                AppButton(buttonName: "Save")
                    .padding(.top, 77)
                    .padding(.bottom, 311)
            }
            .padding(.horizontal, 16)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DailyIntake_Previews: PreviewProvider {
    static var previews: some View {
        DailyIntake()
            .previewDevice("iPhone 15 Pro")
    }
}
