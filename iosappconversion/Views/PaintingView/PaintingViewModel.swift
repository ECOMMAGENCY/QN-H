import Foundation
import SwiftUI

class PaintingViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
