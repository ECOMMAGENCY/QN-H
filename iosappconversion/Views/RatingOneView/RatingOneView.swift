import SwiftUI

struct RatingOneView: View {
    @StateObject var ratingOneViewModel = RatingOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            VStack {
                                Image("img_whatsappimage_244x343")
                                    .resizable()
                                    .frame(width: getRelativeWidth(200.0),
                                           height: getRelativeHeight(202.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(57.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                                ZStack(alignment: .center) {
                                    VStack {
                                        VStack {
                                            ZStack(alignment: .topTrailing) {
                                                VStack {
                                                    Text(StringConstants.kMsgReferAFriend2)
                                                        .font(FontScheme
                                                            .kInterBold(size: getRelativeHeight(32.0)))
                                                        .fontWeight(.bold)
                                                        .foregroundColor(ColorConstants.Gray903)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.center)
                                                        .frame(width: getRelativeWidth(233.0),
                                                               height: getRelativeHeight(82.0),
                                                               alignment: .center)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(26.0))
                                                    Text(StringConstants.kMsgSendThisLink)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(295.0),
                                                               height: getRelativeHeight(48.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                }
                                                .frame(width: getRelativeWidth(295.0),
                                                       height: getRelativeHeight(149.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(29.6))
                                                .padding(.bottom, getRelativeHeight(27.4))
                                                .padding(.leading, getRelativeWidth(27.41))
                                                .padding(.trailing, getRelativeWidth(22.59))
                                                VStack {
                                                    Button(action: {
                                                        ratingOneViewModel
                                                            .nextScreen = "HomevThreeView"
                                                    }, label: {
                                                        Image("img_comment")
                                                    })
                                                    .frame(width: getRelativeWidth(32.0),
                                                           height: getRelativeWidth(32.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 16.0,
                                                                               topRight: 16.0,
                                                                               bottomLeft: 16.0,
                                                                               bottomRight: 16.0)
                                                            .fill(ColorConstants.Gray200))
                                                }
                                                .frame(width: getRelativeWidth(32.0),
                                                       height: getRelativeWidth(32.0),
                                                       alignment: .topTrailing)
                                                .clipShape(Circle())
                                                .padding(.bottom, getRelativeHeight(158.0))
                                                .padding(.leading, getRelativeWidth(295.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(345.0),
                                                   height: getRelativeHeight(206.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(ColorConstants.WhiteA700))
                                        }
                                        .frame(width: getRelativeWidth(345.0),
                                               height: getRelativeHeight(206.0),
                                               alignment: .leading)
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0))
                                    }
                                    .frame(width: getRelativeWidth(345.0),
                                           height: getRelativeHeight(206.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0))
                                    .padding(.bottom, getRelativeHeight(18.0))
                                    VStack {
                                        HStack {
                                            Text(StringConstants.kMsgHttpsPlayGo)
                                                .font(FontScheme
                                                    .kInterBold(size: getRelativeHeight(15.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Gray903)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(257.0),
                                                       height: getRelativeHeight(19.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(9.0))
                                                .padding(.bottom, getRelativeHeight(7.0))
                                                .padding(.leading, getRelativeWidth(13.0))
                                                .onTapGesture {}
                                            Spacer()
                                            Image("img_image2361")
                                                .resizable()
                                                .frame(width: getRelativeWidth(24.0),
                                                       height: getRelativeHeight(30.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .frame(width: getRelativeWidth(332.0),
                                               height: getRelativeHeight(36.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                bottomLeft: 12.0, bottomRight: 12.0)
                                                .stroke(ColorConstants.Gray200,
                                                        lineWidth: 2))
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.Gray52))
                                    }
                                    .frame(width: getRelativeWidth(332.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(188.0))
                                    .padding(.trailing, getRelativeWidth(12.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(345.0),
                                       height: getRelativeHeight(224.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(69.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(374.0),
                                   height: UIScreen.main.bounds.height, alignment: .topLeading)
                            .background(ColorConstants.Gray51)
                        }
                        .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .background(ColorConstants.Gray51)
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    }
                    .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(72.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(72.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(374.0), alignment: .topLeading)
                .background(ColorConstants.Gray51)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $ratingOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomevThreeView(),
                                   tag: "HomevThreeView",
                                   selection: $ratingOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $ratingOneViewModel.nextScreen,
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

struct RatingOneView_Previews: PreviewProvider {
    static var previews: some View {
        RatingOneView()
    }
}
