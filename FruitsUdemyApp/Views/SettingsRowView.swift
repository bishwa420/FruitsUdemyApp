//
//  SettingsRowView.swift
//  FruitsUdemyApp
//
//  Created by Bishwajit Purkaystha on 24/11/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES

    var name: String
    var contentOptional: String? = nil
    var linkLabelOptional: String? = nil
    var linkDestinationOptional: String? = nil

    // MARK: - BODY

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if contentOptional != nil {
                    Text(contentOptional!)
                } else if linkLabelOptional != nil && linkDestinationOptional != nil {
                    Link(
                        linkLabelOptional!,
                        destination: URL(
                            string: "https://\(linkDestinationOptional!)"
                        )!
                    )
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Website", linkLabelOptional: "SwiftUI Masterclass", linkDestinationOptional: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
