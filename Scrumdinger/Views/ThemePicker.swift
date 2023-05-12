//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Adwoa Dadson on 12/05/2023.
//

import SwiftUI

@available(iOS 16.0, *)
struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            ThemePicker(selection: .constant(.periwinkle))
        } else {
            // Fallback on earlier versions
        }
    }
}
