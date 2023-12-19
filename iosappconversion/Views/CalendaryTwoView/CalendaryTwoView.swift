import SwiftUI

struct CalendaryTwoView: View {
    @StateObject var calendaryTwoViewModel = CalendaryTwoViewModel()
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
                                    calendaryTwoViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    calendaryTwoViewModel.nextScreen = "NotificationEmptyView"
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
                    ZStack(alignment: .topTrailing) {
                        VStack {
                            HStack {
                                Divider()
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(20.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                               bottomLeft: 2.0, bottomRight: 2.0)
                                            .fill(ColorConstants.DeepPurple100))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                Text(StringConstants.kLblBookings)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(112.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                            ZStack(alignment: .topLeading) {
                                Image("img_image2359")
                                    .resizable()
                                    .frame(width: getRelativeWidth(359.0),
                                           height: getRelativeHeight(446.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(43.0))
                                Image("img_image2360")
                                    .resizable()
                                    .frame(width: getRelativeWidth(267.0),
                                           height: getRelativeHeight(84.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(405.0))
                                    .padding(.trailing, getRelativeWidth(59.0))
                                    .onTapGesture {
                                        calendaryTwoViewModel.nextScreen = "CalendaryThreeView"
                                    }
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(489.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(116.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
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
                    NavigationLink(destination: CalendaryThreeView(),
                                   tag: "CalendaryThreeView",
                                   selection: $calendaryTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $calendaryTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $calendaryTwoViewModel.nextScreen,
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

struct CalendaryTwoView_Previews: PreviewProvider {
    static var previews: some View {
        CalendaryTwoView()
    }
}
