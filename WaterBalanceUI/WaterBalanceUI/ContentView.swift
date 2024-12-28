//
//  ContentView.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.988, green: 0.992, blue: 1, alpha: 1))
                .ignoresSafeArea(.all, edges: .all)
            VStack(alignment: .center, spacing: 0) {
                Text("Water Balance")
                    .font(.system(size: 24, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.textPrimary)
                    .textCase(.uppercase)
                    .padding(.top, 108)

                Text("What is your goal?")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.textSecondary)
                    .padding(.top, 62)

                GoalsView()
                    .padding(.top, 32)

                AppButton(buttonName: "Next")
                    .padding(.top, 116)
                    .padding(.bottom, 50)

            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 15 Pro")
    }
}

struct GoalsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(AppColors.primary)
            VStack(alignment: .center, spacing: 14) {
                GoalView(title: "Goal Number One", isSelected: false)
                GoalView(title: "Goal Number Two", isSelected: true)
                GoalView(title: "Goal Number Three", isSelected: false)
                GoalView(title: "Goal Number Four", isSelected: false)
            }
            .padding(.horizontal, 19) // [leading, trailing]
            .padding(.vertical, 24) // [top, bottom]

        }
        .frame(height: 330)
    }
}

struct GoalView: View {
    var title: String
    var isSelected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
            HStack {
                Text(title)
                    .foregroundColor(AppColors.textSecondary)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.isSelected ? "Picker" : "No")
            }
            .padding([.leading, .trailing], 24)
        }
    }
}

struct circle: View {
    var Select: Bool
    var body: some View {
        Image(self.Select ? "Picker (1)" : "NoPicker")
    }
}
