import Foundation
import SwiftUI

class BankappTwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var applepayRadio: String = ""
}
