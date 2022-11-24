//
//  StartButtonView.swift
//  FruitsUdemyApp
//
//  Created by Bishwajit Purkaystha on 12/11/22.
//

import SwiftUI

struct StartButtonView: View {
    // PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    // BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        } //: Button
        .accentColor(.white)
    }
}

// PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
