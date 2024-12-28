//
//  AppButton.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//


import SwiftUI

struct AppButton: View {
    let buttonName: String
        var body: some View {
            Button(buttonName){}
            .foregroundColor(.white)
            .font(.system(size: 24, weight: .semibold, design: .default))
            .frame(width: 358, height: 60)
            .background(AppColors.button)
            .cornerRadius(16)
        }
    }

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(buttonName: " ")
    }
}
