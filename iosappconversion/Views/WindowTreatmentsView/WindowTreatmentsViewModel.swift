import Foundation
import SwiftUI

class WindowTreatmentsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
