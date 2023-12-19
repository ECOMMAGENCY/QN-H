import SwiftUI

struct GeneralHandymanView: View {
    @StateObject var generalHandymanViewModel = GeneralHandymanViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
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
                                            generalHandymanViewModel
                                                .nextScreen = "AllCategoriesView"
                                        }
                                    Spacer()
                                    Image("img_icon24pxnotif")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            generalHandymanViewModel
                                                .nextScreen = "NotificationEmptyView"
                                        }
                                }
                                .frame(width: getRelativeWidth(289.0),
                                       height: getRelativeHeight(22.0), alignment: .leading)
                                .padding(.horizontal, getRelativeWidth(41.0))
                            }
                            .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                        }
                        .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(72.0),
                               alignment: .leading)
                        VStack(alignment: .leading, spacing: 0) {
                            VStack(alignment: .leading, spacing: 0) {
                                VStack {
                                    HStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(13.0), alignment: .top)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0)
                                                    .fill(ColorConstants.DeepPurple100))
                                            .padding(.bottom, getRelativeHeight(4.0))
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
                                           height: getRelativeHeight(22.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0))
                                }
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(17.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0))
                                .padding(.trailing)
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                StRow1Cell(interiorpaintiClick: {
                                                    generalHandymanViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                }, interiorpaintioneClick: {
                                                    generalHandymanViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                }, interiorpaintitwoClick: {
                                                    generalHandymanViewModel
                                                        .isUpcomingEmptyViewShow = true
                                                })
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(350.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(34.0))
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_interiorpainti_68")
                                            .resizable()
                                            .frame(width: getRelativeWidth(72.0),
                                                   height: getRelativeHeight(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 36.0,
                                                                       topRight: 36.0,
                                                                       bottomLeft: 36.0,
                                                                       bottomRight: 36.0))
                                        Text(StringConstants.kMsgLocksInstalla)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(69.0),
                                                   height: getRelativeHeight(34.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(17.0))
                                            .padding(.horizontal, getRelativeWidth(1.0))
                                    }
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    Spacer()
                                    VStack {
                                        Image("img_interiorpainti_40")
                                            .resizable()
                                            .frame(width: getRelativeWidth(72.0),
                                                   height: getRelativeHeight(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 36.0,
                                                                       topRight: 36.0,
                                                                       bottomLeft: 36.0,
                                                                       bottomRight: 36.0))
                                            .padding(.horizontal, getRelativeWidth(17.0))
                                            .onTapGesture {
                                                generalHandymanViewModel
                                                    .isUpcomingEmptyViewShow = true
                                            }
                                        Text(StringConstants.kMsgHangingPicture2)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(106.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                    }
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_interiorpainti_73x66")
                                            .resizable()
                                            .frame(width: getRelativeWidth(66.0),
                                                   height: getRelativeHeight(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 33.25,
                                                                       topRight: 33.25,
                                                                       bottomLeft: 33.25,
                                                                       bottomRight: 33.25))
                                            .onTapGesture {
                                                generalHandymanViewModel
                                                    .isUpcomingEmptyViewShow = true
                                            }
                                        Text(StringConstants.kMsgHandymanServi)
                                            .font(FontScheme
                                                .kInterSemiBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(65.0),
                                                   height: getRelativeHeight(34.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(17.0))
                                    }
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(316.0),
                                       height: getRelativeHeight(125.0), alignment: .center)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(22.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(350.0), height: getRelativeHeight(618.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            .padding(.trailing)
                        }
                        .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(618.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(78.0))
                    }
                    .frame(width: getRelativeWidth(373.0), alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.bottom, getRelativeHeight(134.0))
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $generalHandymanViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $generalHandymanViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if generalHandymanViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $generalHandymanViewModel.isUpcomingEmptyViewShow,
                                content: {
                                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $generalHandymanViewModel
                                            .isUpcomingEmptyViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct GeneralHandymanView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralHandymanView()
    }
}
