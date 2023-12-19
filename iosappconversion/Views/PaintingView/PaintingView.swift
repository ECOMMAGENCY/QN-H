import SwiftUI

struct PaintingView: View {
    @StateObject var paintingViewModel = PaintingViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
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
                                        paintingViewModel.nextScreen = "AllCategoriesView"
                                    }
                                Spacer()
                                Image("img_icon24pxnotif")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        paintingViewModel.nextScreen = "NotificationEmptyView"
                                    }
                            }
                            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(38.0))
                            .padding(.trailing, getRelativeWidth(48.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(72.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        VStack(alignment: .leading, spacing: 0) {
                            VStack {
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeHeight(20.0), alignment: .bottom)
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
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0))
                            .padding(.top, getRelativeHeight(57.0))
                            .padding(.horizontal, getRelativeWidth(11.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            StRowCell(interiorpaintiClick: {
                                                paintingViewModel.isUpcomingEmptyViewShow = true
                                            }, interiorpaintioneClick: {
                                                paintingViewModel.isUpcomingEmptyViewShow = true
                                            })
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(345.0), alignment: .center)
                            .padding(.vertical, getRelativeHeight(32.0))
                            .padding(.horizontal, getRelativeWidth(11.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(740.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.WhiteA700))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    Group {
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $paintingViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $paintingViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            .hideNavigationBar()
            if paintingViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $paintingViewModel.isUpcomingEmptyViewShow, content: {
                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $paintingViewModel
                            .isUpcomingEmptyViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct PaintingView_Previews: PreviewProvider {
    static var previews: some View {
        PaintingView()
    }
}
