import SwiftUI

struct NotificationEmptyView: View {
    @StateObject var notificationEmptyViewModel = NotificationEmptyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .topLeading) {
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(4.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                   bottomLeft: 2.0,
                                                                   bottomRight: 2.0)
                                                .fill(ColorConstants.DeepPurple100))
                                    Text(StringConstants.kLblNotification)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(132.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(146.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                Spacer()
                                Picker(StringConstants.kLblRecent,
                                       selection: $notificationEmptyViewModel.frame34604Picker1) {
                                    ForEach(notificationEmptyViewModel.frame34604Picker1Values,
                                            id: \.self) { value in
                                        Text(value)
                                    }
                                }
                                .foregroundColor(ColorConstants.DeepPurpleA200)
                                .font(.system(size: getRelativeHeight(12)))
                                .pickerStyle(MenuPickerStyle())
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(106.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            Image("img_group")
                                .resizable()
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(91.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(38.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kMsgNoNotification)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(164.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kMsgYouDontHaveA)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(274.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Button(action: {
                                notificationEmptyViewModel.nextScreen = "HomevThreeView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgViewAllServic)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(22.0))
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .foregroundColor(ColorConstants.Gray52)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(166.0),
                                               height: getRelativeHeight(48.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.LightBlue300))
                                        .padding(.vertical, getRelativeHeight(37.0))
                                        .padding(.horizontal, getRelativeWidth(14.0))
                                }
                            })
                            .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(48.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.vertical, getRelativeHeight(37.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                        }
                        .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(740.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(72.0))
                    }
                    .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    HStack {
                        HStack {
                            Image("img_union_deep_purple_a200")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(19.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    notificationEmptyViewModel.nextScreen = "HomevThreeView"
                                }
                            Spacer()
                            Image("img_iconoutline")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    notificationEmptyViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray51)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomevThreeView(),
                                   tag: "HomevThreeView",
                                   selection: $notificationEmptyViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $notificationEmptyViewModel.nextScreen,
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

struct NotificationEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationEmptyView()
    }
}
