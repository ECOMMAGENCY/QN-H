import Foundation
import SwiftUI

class CalendaryFourViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
