import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frame34597Text: String = ""
    @Published var frame34597oneText: String = ""
    @Published var frame34597twoText: String = ""
    @Published var frame34597threeText: String = ""
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
