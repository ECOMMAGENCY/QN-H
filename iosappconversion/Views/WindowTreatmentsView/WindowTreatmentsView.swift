import SwiftUI

struct WindowTreatmentsView: View {
    @StateObject var windowTreatmentsViewModel = WindowTreatmentsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                ZStack(alignment: .topLeading) {
                    ScrollView(.vertical, showsIndicators: false) {
                        ZStack(alignment: .bottomLeading) {
                            Image("img_componentsartb")
                                .resizable()
                                .frame(width: getRelativeWidth(371.0),
                                       height: UIScreen.main.bounds.height, alignment: .topLeading)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(4.0))
                            VStack(alignment: .leading, spacing: 0) {
                                VStack {
                                    HStack {
                                        Divider()
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .bottom)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0)
                                                    .fill(ColorConstants.DeepPurple100))
                                            .padding(.top, getRelativeHeight(5.0))
                                        Text(StringConstants.kLblAllServices)
                                            .font(FontScheme
                                                .kInterSemiBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray903)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(99.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(113.0),
                                           height: getRelativeHeight(25.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0))
                                }
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(26.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0))
                                .padding(.top, getRelativeHeight(39.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                NdRow3Cell(interiorpaintiClick: {
                                                    windowTreatmentsViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                }, interiorpaintioneClick: {
                                                    windowTreatmentsViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                }, interiorpaintitwoClick: {
                                                    windowTreatmentsViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                })
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(341.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(37.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(799.0),
                                   alignment: .bottomLeading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(50.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                    }
                    HStack {
                        HStack {
                            Image("img_union_deep_purple_a200")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Image("img_iconoutline")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    windowTreatmentsViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    windowTreatmentsViewModel.nextScreen = "NotificationEmptyView"
                                }
                        }
                        .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.bottom, getRelativeHeight(777.0))
                    Group {
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $windowTreatmentsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $windowTreatmentsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            .hideNavigationBar()
            if windowTreatmentsViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $windowTreatmentsViewModel.isUpcomingEmptyViewShow,
                                content: {
                                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $windowTreatmentsViewModel
                                            .isUpcomingEmptyViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct WindowTreatmentsView_Previews: PreviewProvider {
    static var previews: some View {
        WindowTreatmentsView()
    }
}
