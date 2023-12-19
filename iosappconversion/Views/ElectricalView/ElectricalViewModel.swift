import Foundation
import SwiftUI

class ElectricalViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isUpcomingEmptyViewShow: Bool = false
}
