//
//  RadioGroupButton.swift
//

import SwiftUI

/**
  RadioGroup is collection of radio buttons.

  # Input Variable: #

  - `items`: array of String values.

  - `selectedId`: By default selected radio button from items array.

  - `selectedColor`: tint color of radio buttons.

  # Example #
 ```
  var items: [String] = ["US", "India", "Canada"]
  @State private var selectedId: String = "India"

  RadioGroup(items: items, selectedId: $selectedId, selectedColor: Color.red)
 ```
 */

struct RadioGroup: View {
    let items: [String]

    @Binding var selectedId: String

    var selectedColor: Color!

    var body: some View {
        VStack {
            ForEach(0 ..< items.count) { index in
                Radio(self.items[index], callback: self.radioGroupCallback,
                      selectedID: self.selectedId, color: selectedColor)
            }
        }
    }

    func radioGroupCallback(idVal: String) {
        selectedId = idVal
    }
}

struct Radio: View {
    @Environment(\.colorScheme) var colorScheme

    let idVal: String
    let callback: (String) -> Void
    let selectedID: String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat

    init(_ idVal: String,
         callback: @escaping (String) -> Void,
         selectedID: String,
         size: CGFloat = 20,
         color: Color = Color.primary,
         textSize: CGFloat = 14)
    {
        self.idVal = idVal
        self.size = size
        self.color = color
        self.textSize = textSize
        self.selectedID = selectedID
        self.callback = callback
    }

    var body: some View {
        Button(action: {
            self.callback(self.idVal)
        }) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.selectedID == self
                    .idVal ? "largecircle.fill.circle" : "circle")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(self.color)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)

                Text(idVal)
                    .font(Font.system(size: textSize))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(self.color)
    }
}
