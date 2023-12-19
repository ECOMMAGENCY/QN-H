import SwiftUI

struct Homecleaning2View: View {
    @StateObject var homecleaning2ViewModel = Homecleaning2ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
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
                                    homecleaning2ViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    homecleaning2ViewModel.nextScreen = "NotificationEmptyView"
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
                    ZStack(alignment: .leading) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(352.0), height: getRelativeHeight(512.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
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
                            .padding(.trailing)
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            NdRow2Cell(interiorpaintiClick: {
                                                homecleaning2ViewModel
                                                    .nextScreen = "ShoppingCartTwelveView"
                                            }, interiorpaintioneClick: {
                                                homecleaning2ViewModel
                                                    .nextScreen = "ShoppingCartFourView"
                                            })
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(341.0), alignment: .center)
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                            Image("img_interiorpainti_11")
                                .resizable()
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(73.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 36.0, topRight: 36.0,
                                                           bottomLeft: 36.0, bottomRight: 36.0))
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kMsgHangingPictur)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Bluegray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(53.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                        }
                        .frame(width: getRelativeWidth(352.0), height: getRelativeHeight(497.0),
                               alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(352.0), height: getRelativeHeight(517.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.bottom, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(ColorConstants.Gray51)
                Group {
                    NavigationLink(destination: ShoppingCartTwelveView(),
                                   tag: "ShoppingCartTwelveView",
                                   selection: $homecleaning2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShoppingCartFourView(),
                                   tag: "ShoppingCartFourView",
                                   selection: $homecleaning2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $homecleaning2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $homecleaning2ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct Homecleaning2View_Previews: PreviewProvider {
    static var previews: some View {
        Homecleaning2View()
    }
}
