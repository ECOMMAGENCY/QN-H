import Foundation
import SwiftUI

class GeneralHandymanViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
