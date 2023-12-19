import Foundation
import SwiftUI

class PlumbingViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
