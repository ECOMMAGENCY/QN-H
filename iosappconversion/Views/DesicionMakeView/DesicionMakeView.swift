import SwiftUI

struct DesicionMakeView: View {
    @StateObject var desicionMakeViewModel = DesicionMakeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                                        desicionMakeViewModel.nextScreen = "AllCategoriesView"
                                    }
                                Spacer()
                                Image("img_icon24pxnotif")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        desicionMakeViewModel.nextScreen = "NotificationEmptyView"
                                    }
                            }
                            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(37.0))
                            .padding(.trailing, getRelativeWidth(48.0))
                        }
                        .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(72.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(72.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .topTrailing) {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeHeight(20.0), alignment: .top)
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(ColorConstants.DeepPurple100))
                                        .padding(.bottom, getRelativeHeight(6.0))
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
                                }
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeHeight(30.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(92.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                                HStack {
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblUpcoming)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                                .padding(.vertical, getRelativeHeight(10.0))
                                                .foregroundColor(ColorConstants.DeepPurpleA200)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(105.0),
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0)
                                                        .fill(ColorConstants.DeepPurpleA20019))
                                                .padding(.vertical, getRelativeHeight(16.0))
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.DeepPurpleA20019))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(84.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.vertical, getRelativeHeight(16.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(106.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.vertical, getRelativeHeight(16.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(72.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                                VStack {
                                    VStack {
                                        Image("img_group34599_85x85")
                                            .resizable()
                                            .frame(width: getRelativeWidth(85.0),
                                                   height: getRelativeWidth(85.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(142.0))
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                        Text(StringConstants.kMsgNoUpcomingOrd)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(20.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray903)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(193.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(35.0))
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                        Text(StringConstants.kMsgCurrentlyYouD)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(14.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Bluegray700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(298.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(12.0))
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                        Button(action: {
                                            desicionMakeViewModel.nextScreen = "HomevThreeView"
                                        }, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kMsgViewAllServic)
                                                    .font(FontScheme
                                                        .kInterBold(size: getRelativeHeight(15.0)))
                                                    .fontWeight(.bold)
                                                    .padding(.horizontal, getRelativeWidth(22.0))
                                                    .padding(.vertical, getRelativeHeight(14.0))
                                                    .foregroundColor(ColorConstants.Gray52)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(166.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 8.0,
                                                                               topRight: 8.0,
                                                                               bottomLeft: 8.0,
                                                                               bottomRight: 8.0)
                                                            .fill(ColorConstants.LightBlue300))
                                                    .padding(.vertical, getRelativeHeight(28.0))
                                                    .padding(.horizontal, getRelativeWidth(22.0))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(166.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.LightBlue300))
                                        .padding(.vertical, getRelativeHeight(28.0))
                                        .padding(.horizontal, getRelativeWidth(22.0))
                                    }
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(566.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(566.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.vertical, getRelativeHeight(2.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
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
                                    .padding(.horizontal, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(142.0),
                                   alignment: .topTrailing)
                            .background(ColorConstants.Bluegray701)
                            .shadow(color: ColorConstants.Black90033, radius: 4, x: 0, y: 2)
                            .padding(.bottom, getRelativeHeight(628.25))
                            .padding(.leading, getRelativeWidth(261.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .background(ColorConstants.Gray51)
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray51)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomevThreeView(),
                                   tag: "HomevThreeView",
                                   selection: $desicionMakeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $desicionMakeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $desicionMakeViewModel.nextScreen,
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

struct DesicionMakeView_Previews: PreviewProvider {
    static var previews: some View {
        DesicionMakeView()
    }
}
