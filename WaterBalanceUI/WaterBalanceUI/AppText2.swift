//
//  AppText2.swift
//  WaterBalanceUI
//
//  Created by Zhanel Amralina on 7/15/24.
//

import SwiftUI

struct AppText2: View {
    let textEx: String
    var body: some View {
        Text(textEx)
            .foregroundColor(.black)
            .frame(width: 60, height: 22, alignment: .center)
    }
}

struct AppText2_Previews: PreviewProvider {
    static var previews: some View {
        AppText2(textEx: "")
    }
}
