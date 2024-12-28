//
//  AppText.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct AppText: View {
    let textEx: String
    var body: some View {
        Text(textEx)
            .font(.system(size: 17))
            .foregroundColor(.black)
            .frame(width: 309, height: 22, alignment: .leading)
    }
}

struct AppText_Previews: PreviewProvider {
    static var previews: some View {
        AppText(textEx: "")
    }
}
