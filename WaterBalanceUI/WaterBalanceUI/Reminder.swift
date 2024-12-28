//
//  Reminder.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//


import SwiftUI

struct Reminder: View {
    var body: some View {
        ZStack{
            Color(red: 251/245, green: 252/245, blue: 254/245)
                .ignoresSafeArea(.all, edges: .all)
        VStack(alignment: .center, spacing: 0) {
            VStack{
                Image(systemName: "chevron.left")
                    .font(.system(size: 23))
                    .foregroundColor(AppColors.textPrimary)
                    .frame(width: 360, height: 40, alignment: .leading)
                    .padding(.top, 50)
                
            Text("WATER BALANCE")
                    .font(.system(size: 24, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.textPrimary)
                    .textCase(.uppercase)
                    .padding(.top, 29)
                
                Text("Remind me each")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.textSecondary)
                    .padding(.top, 62)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(red: 212/245, green: 225/245, blue: 248/245))
                        .frame(width: 358, height: 330, alignment: .center)
                    VStack{
                        HStack{
                            customButtom(buttonName: "15 minutes")
                            customButtom(buttonName: "30 minutes")
                        }
                        HStack{
                            customButtom(buttonName: "45 minutes")
                            customButtom(buttonName: "1 hour")
                        }
                        HStack{
                            customButtom2(buttonName: "1,5 hours")
                            customButtom(buttonName: "2 hours")
                        }
                        HStack{
                            customButtom(buttonName: "3 hours")
                            customButtom(buttonName: "4 hours")
                        }
                    }
                }
                AppButton(buttonName: "Next")
                    .padding(.top, 116)
                    .padding(.bottom, 50)
            }
            
        }
        .padding([.leading, .trailing], 16)
        .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct customButtom: View{
    let buttonName:String
    
    var body: some View{
        Button(buttonName){}
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .semibold))
            .frame(width: 150, height: 60, alignment: .center)
            .background(.white)
            .cornerRadius(16)
            .padding(5)
    }
}

struct customButtom2: View{
    let buttonName:String
    
    var body: some View{
        Button(buttonName){}
            .foregroundColor(AppColors.button)
            .font(.system(size: 16, weight: .semibold))
            .frame(width: 150, height: 60, alignment: .center)
            .background(.white)
            .overlay(RoundedRectangle(cornerRadius: 16)
                .stroke(AppColors.button, lineWidth: 4))
            .cornerRadius(16)
            .padding(5)
    }
}

struct ReminderMenu_Previews: PreviewProvider {
    static var previews: some View {
        Reminder()
            .previewDevice("iPhone 15 Pro")
            
    }
}
