import Foundation
import SwiftUI

class PaysuccessfullyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Binding var isOpen: Bool
    @Published var isUpcomingEmptyViewShow: Bool = false

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
