import SwiftUI

struct CalendaryThreeView: View {
    @StateObject var calendaryThreeViewModel = CalendaryThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ZStack(alignment: .bottomLeading) {
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
                        ZStack(alignment: .topTrailing) {
                            Image("img_image2357")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(659.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_image2358")
                                .resizable()
                                .frame(width: getRelativeWidth(147.0),
                                       height: getRelativeHeight(85.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(590.0))
                                .padding(.leading, getRelativeWidth(168.0))
                                .onTapGesture {
                                    calendaryThreeViewModel.nextScreen = "CalendaryFourView"
                                }
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(675.0),
                               alignment: .bottomLeading)
                        .padding(.top, getRelativeHeight(153.0))
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
                        .padding(.bottom, getRelativeHeight(646.0))
                        .padding(.leading, getRelativeWidth(262.0))
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
                                        calendaryThreeViewModel.nextScreen = "AllCategoriesView"
                                    }
                                Spacer()
                                Image("img_icon24pxnotif")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        calendaryThreeViewModel.nextScreen = "NotificationEmptyView"
                                    }
                            }
                            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(72.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.bottom, getRelativeHeight(756.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray51)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CalendaryFourView(),
                                   tag: "CalendaryFourView",
                                   selection: $calendaryThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $calendaryThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $calendaryThreeViewModel.nextScreen,
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

struct CalendaryThreeView_Previews: PreviewProvider {
    static var previews: some View {
        CalendaryThreeView()
    }
}
