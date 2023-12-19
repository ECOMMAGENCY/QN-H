import SwiftUI

struct MovingView: View {
    @StateObject var movingViewModel = MovingViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(4.0),
                                       height: getRelativeHeight(20.0), alignment: .bottom)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.DeepPurple100))
                                .padding(.top, getRelativeHeight(5.0))
                            Text(StringConstants.kLblAllServices)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0))
                    }
                    .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(26.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                               bottomRight: 4.0))
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.horizontal, getRelativeWidth(12.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    NdRow4Cell(interiorpaintiClick: {
                                        movingViewModel.isUpcomingEmptyViewShow = true
                                    }, interiorpaintioneClick: {
                                        movingViewModel.isUpcomingEmptyViewShow = true
                                    }, interiorpaintitwoClick: {
                                        movingViewModel.isUpcomingEmptyViewShow = true
                                    })
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(341.0), alignment: .center)
                    .padding(.vertical, getRelativeHeight(68.0))
                    .padding(.horizontal, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(737.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.WhiteA700))
            }
            .frame(width: UIScreen.main.bounds.width)
            if movingViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $movingViewModel.isUpcomingEmptyViewShow, content: {
                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $movingViewModel
                            .isUpcomingEmptyViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct MovingView_Previews: PreviewProvider {
    static var previews: some View {
        MovingView()
    }
}
