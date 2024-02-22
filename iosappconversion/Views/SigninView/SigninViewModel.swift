import Foundation
import SwiftUI

class SigninViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formformsText: String = ""
    @Published var isValidFormformsText: Bool = true
    @Published var formformsoneText: String = ""
    @Published var isValidFormformsoneText: Bool = true
}
