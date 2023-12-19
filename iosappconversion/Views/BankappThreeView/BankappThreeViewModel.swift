import Foundation
import SwiftUI

class BankappThreeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var paypalRadio: String = ""
    @Published var googlepayRadio: String = ""
    @Published var isPaysuccessfullyViewShow: Bool = false
}
