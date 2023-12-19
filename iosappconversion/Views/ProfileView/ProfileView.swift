import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_whatsappimage_244x343")
                        .resizable()
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(244.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(20.0),
                                   alignment: .bottom)
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(ColorConstants.DeepPurple100))
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(4.0))
                        Text(StringConstants.kLblProfile)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .onTapGesture {
                        profileViewModel.nextScreen = "NotificationEmptyView"
                    }
                    .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(30.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblUser)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            TextField("", text: $profileViewModel.frame34597Text)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblPassword)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            TextField("", text: $profileViewModel.frame34597oneText)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblEMail2)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            TextField("", text: $profileViewModel.frame34597twoText)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblName)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            TextField("", text: $profileViewModel.frame34597threeText)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(394.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(21.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(709.0),
                       alignment: .center)
                .padding(.bottom, getRelativeHeight(106.0))
                .padding(.leading, getRelativeWidth(16.0))
                ZStack {
                    Image("img_union")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(30.63))
                        .padding(.trailing, getRelativeWidth(325.37))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(72.0),
                       alignment: .center)
                .background(ColorConstants.WhiteA700)
                .padding(.bottom, getRelativeHeight(742.87))
                Button(action: {
                    profileViewModel.nextScreen = "HomevThreeView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblNext)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(14.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.top, getRelativeHeight(723.0))
                            .padding(.leading, getRelativeWidth(32.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.LightBlue300))
                .padding(.top, getRelativeHeight(723.0))
                .padding(.leading, getRelativeWidth(32.0))
                Group {
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomevThreeView(),
                                   tag: "HomevThreeView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
