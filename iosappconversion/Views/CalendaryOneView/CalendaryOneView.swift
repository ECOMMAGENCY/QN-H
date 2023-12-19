import SwiftUI

struct CalendaryOneView: View {
    @StateObject var calendaryOneViewModel = CalendaryOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                                    calendaryOneViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    calendaryOneViewModel.nextScreen = "NotificationEmptyView"
                                }
                        }
                        .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(38.0))
                        .padding(.trailing, getRelativeWidth(48.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    ZStack(alignment: .bottomTrailing) {
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(4.0),
                                       height: getRelativeHeight(20.0), alignment: .top)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.DeepPurple100))
                                .padding(.leading, getRelativeWidth(15.0))
                            Text(StringConstants.kLblBookings)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(10.0))
                                .padding(.trailing, getRelativeWidth(238.0))
                        }
                        .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .background(ColorConstants.Gray51)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgSelectADate)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(18.75)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray906)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(188.0),
                                       height: getRelativeHeight(23.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(18.0))
                            VStack {
                                HStack {
                                    Image("img_arrowleft")
                                        .resizable()
                                        .frame(width: getRelativeWidth(7.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(12.0))
                                    HStack {
                                        Text(StringConstants.kLblDecember2023)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(15.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(115.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        Button(action: {}, label: {
                                            Image("img_arrowright_blue_a700")
                                        })
                                        .frame(width: getRelativeWidth(38.0),
                                               height: getRelativeWidth(38.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                                   bottomLeft: 19.0,
                                                                   bottomRight: 19.0)
                                                .fill(ColorConstants.BlueA70011))
                                        .padding(.leading, getRelativeWidth(14.0))
                                    }
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(38.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(65.0))
                                }
                                .frame(width: getRelativeWidth(240.0),
                                       height: getRelativeHeight(38.0), alignment: .trailing)
                                .padding(.leading, getRelativeWidth(10.0))
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblSun)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.25)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblMon)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.4375)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblTue)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.0625)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblWed)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.4375)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        Text(StringConstants.kLblThu)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.25)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblFri)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(11.25)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray906)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                    }
                                }
                                .frame(width: getRelativeWidth(277.0),
                                       height: getRelativeHeight(14.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(21.0))
                                Text(StringConstants.kLbl1)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray9009b)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(5.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.horizontal, getRelativeWidth(39.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                RowtableselectCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(250.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(31.0))
                                .padding(.leading, getRelativeWidth(6.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                ZStack(alignment: .center) {
                                    Text(StringConstants.kLblUtcTime)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(13.015625)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray906)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(61.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(13.0))
                                        .padding(.trailing, getRelativeWidth(9.0))
                                    Text(StringConstants.kLblTimeZone)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(14.75)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray906)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(75.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(15.13))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(29.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(393.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(42.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                            ZStack(alignment: .trailing) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(270.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.bottom, getRelativeHeight(5.0))
                                    .padding(.trailing, getRelativeWidth(8.0))
                                Text(StringConstants.kLbl1005pm)
                                    .font(FontScheme
                                        .kInterRegular(size: getRelativeHeight(12.578125)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray906)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(219.32))
                                Image("img_vector_gray_906")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeWidth(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(199.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(278.0), height: getRelativeHeight(16.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(483.0),
                               alignment: .bottomTrailing)
                        .padding(.top, getRelativeHeight(252.14))
                        .padding(.leading, getRelativeWidth(36.0))
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
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(142.0),
                               alignment: .topTrailing)
                        .background(ColorConstants.Bluegray701)
                        .shadow(color: ColorConstants.Black90033, radius: 4, x: 0, y: 2)
                        .padding(.bottom, getRelativeHeight(630.25))
                        .padding(.leading, getRelativeWidth(262.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray51)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CalendaryTwoView(),
                                   tag: "CalendaryTwoView",
                                   selection: $calendaryOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $calendaryOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $calendaryOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray51)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct CalendaryOneView_Previews: PreviewProvider {
    static var previews: some View {
        CalendaryOneView()
    }
}
