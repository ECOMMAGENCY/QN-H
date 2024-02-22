import SwiftUI

struct CalendaryFourView: View {
    @StateObject var calendaryFourViewModel = CalendaryFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    ZStack(alignment: .topLeading) {
                        ScrollView(.vertical, showsIndicators: false) {
                            ZStack(alignment: .topTrailing) {
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeHeight(20.0), alignment: .top)
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(ColorConstants.DeepPurple100))
                                        .padding(.leading, getRelativeWidth(15.0))
                                    Text(StringConstants.kLblBookings)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(106.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(10.0))
                                        .padding(.trailing, getRelativeWidth(238.0))
                                }
                                .frame(width: getRelativeWidth(374.0),
                                       height: UIScreen.main.bounds.height, alignment: .topLeading)
                                .background(ColorConstants.Gray51)
                                VStack {
                                    Text(StringConstants.kLblCalendly)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(58.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(43.0))
                                        .padding(.bottom, getRelativeHeight(40.0))
                                        .padding(.horizontal, getRelativeWidth(14.0))
                                }
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(142.0), alignment: .topTrailing)
                                .background(ColorConstants.Bluegray701)
                                .shadow(color: ColorConstants.Black90033, radius: 4, x: 0, y: 2)
                                .padding(.bottom, getRelativeHeight(641.25))
                                .padding(.leading, getRelativeWidth(262.0))
                                VStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblOrderScheduled)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray907)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(142.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(18.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                        HStack {
                                            Image("img_vector_green_700")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeWidth(20.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(1.0))
                                            Text(StringConstants.kMsgYourOrderHas)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(16.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray907)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(173.0),
                                                       height: getRelativeHeight(44.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(12.0))
                                        }
                                        .onTapGesture {
                                            calendaryFourViewModel.isUpcomingEmptyViewShow = true
                                        }
                                        .frame(width: getRelativeWidth(205.0),
                                               height: getRelativeHeight(44.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(26.0))
                                        .padding(.horizontal, getRelativeWidth(26.0))
                                        Text(StringConstants.kLblOk)
                                            .font(FontScheme
                                                .kSFProTextBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray907)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(21.0))
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                    }
                                    .frame(width: getRelativeWidth(320.0),
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                               bottomLeft: 15.0, bottomRight: 15.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.vertical, getRelativeHeight(290.0))
                                    .padding(.horizontal, getRelativeWidth(26.0))
                                }
                                .frame(width: getRelativeWidth(374.0),
                                       height: getRelativeHeight(752.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Black9007f))
                                .padding(.top, getRelativeHeight(71.75))
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
                                        calendaryFourViewModel.nextScreen = "AllCategoriesView"
                                    }
                                Spacer()
                                Image("img_icon24pxnotif")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        calendaryFourViewModel.nextScreen = "NotificationEmptyView"
                                    }
                            }
                            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(72.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $calendaryFourViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $calendaryFourViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.Gray51)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if calendaryFourViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $calendaryFourViewModel.isUpcomingEmptyViewShow, content: {
                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $calendaryFourViewModel
                            .isUpcomingEmptyViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct CalendaryFourView_Previews: PreviewProvider {
    static var previews: some View {
        CalendaryFourView()
    }
}
