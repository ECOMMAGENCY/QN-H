import Foundation
import SwiftUI

class HomevThreeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isReferaFriendViewShow: Bool = false
    @Published var isMovingViewShow: Bool = false
}
