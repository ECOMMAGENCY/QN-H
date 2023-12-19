import Foundation
import SwiftUI

class BankappOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var paypalRadio: String = ""
    @Published var googlepayRadio: String = ""
    @Published var applepayRadio: String = ""
}
