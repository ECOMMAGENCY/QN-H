import SwiftUI

struct ReferaFriendView: View {
    @StateObject var referaFriendViewModel = ReferaFriendViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                ZStack {
                    Image("img_union")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(30.91))
                        .padding(.trailing, getRelativeWidth(326.09))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(72.0),
                       alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.bottom, getRelativeHeight(740.0))
                VStack {
                    VStack {
                        Image("img_group_216x279")
                            .resizable()
                            .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(216.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(50.0))
                            .padding(.horizontal, getRelativeWidth(23.0))
                        Text(StringConstants.kMsgReferAFriend)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(32.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(233.0), height: getRelativeHeight(80.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(23.0))
                        Text(StringConstants.kMsgGet50OffUpt)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(296.0), height: getRelativeHeight(72.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(42.0))
                            .padding(.leading, getRelativeWidth(23.0))
                            .padding(.trailing, getRelativeWidth(17.0))
                        Button(action: {
                            referaFriendViewModel.nextScreen = "RatingOneView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblReferAFriend)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .foregroundColor(ColorConstants.Gray52)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(166.0),
                                           height: getRelativeHeight(47.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.LightBlue300))
                                    .padding(.top, getRelativeHeight(47.0))
                                    .padding(.bottom, getRelativeHeight(50.0))
                                    .padding(.horizontal, getRelativeWidth(23.0))
                            }
                        })
                        .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(47.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.LightBlue300))
                        .padding(.top, getRelativeHeight(47.0))
                        .padding(.bottom, getRelativeHeight(50.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: getRelativeWidth(337.0), height: getRelativeHeight(627.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(85.0))
                    .padding(.horizontal, getRelativeWidth(18.0))
                    HStack {
                        Image("img_union_deep_purple_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(19.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(28.0))
                            .padding(.leading, getRelativeWidth(33.0))
                        Spacer()
                        Image("img_iconoutline")
                            .resizable()
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.bottom, getRelativeHeight(25.0))
                            .onTapGesture {
                                referaFriendViewModel.nextScreen = "AllCategoriesView"
                            }
                        Spacer()
                        Image("img_icon24pxnotif")
                            .resizable()
                            .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(22.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.bottom, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(48.0))
                            .onTapGesture {
                                referaFriendViewModel.nextScreen = "NotificationEmptyView"
                            }
                    }
                    .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(72.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(27.0))
                    .padding(.trailing, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                Group {
                    NavigationLink(destination: RatingOneView(),
                                   tag: "RatingOneView",
                                   selection: $referaFriendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $referaFriendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $referaFriendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
            .frame(height: UIScreen.main.bounds.height)
        }
        .hideNavigationBar()
    }
}

struct ReferaFriendView_Previews: PreviewProvider {
    static var previews: some View {
        ReferaFriendView()
    }
}
