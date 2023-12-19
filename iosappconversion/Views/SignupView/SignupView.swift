import SwiftUI

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .topLeading) {
                    Image("img_whatsappimage_244x343")
                        .resizable()
                        .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(202.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(93.0))
                        .padding(.trailing, getRelativeWidth(82.0))
                    Image("img_union")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.trailing, getRelativeWidth(326.09))
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kLblFirstName)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(27.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField("", text: $signupViewModel.frame34597Text)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kLblLastName)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField("", text: $signupViewModel.frame34597oneText)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(10.0))
                            Text(StringConstants.kLblPhoneNumber)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField("", text: $signupViewModel.frame34597twoText)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(10.0))
                            Text(StringConstants.kLblEmail)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(38.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(21.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                        }
                        Group {
                            HStack {
                                TextField("", text: $signupViewModel.frame34597threeText)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(11.0))
                            Button(action: {
                                signupViewModel.isProfileViewShow = true
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSignUp)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(333.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.LightBlue300))
                                        .padding(.top, getRelativeHeight(60.0))
                                        .padding(.horizontal, getRelativeWidth(5.0))
                                }
                            })
                            .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.top, getRelativeHeight(60.0))
                            .padding(.horizontal, getRelativeWidth(5.0))
                            Text(StringConstants.kMsgAlreadyHaveAn)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(13.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(203.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(70.0))
                                .onTapGesture {
                                    signupViewModel.nextScreen = "SigninView"
                                }
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(592.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(187.36))
                    .padding(.leading, getRelativeWidth(20.0))
                    .padding(.trailing, getRelativeWidth(12.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SigninView(),
                                   tag: "SigninView",
                                   selection: $signupViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .customDialog(isShowing: $signupViewModel.isProfileViewShow) {
                ProfileView(profileViewModel: ProfileViewModel(_isOpen: $signupViewModel
                        .isProfileViewShow))
            } onTapOutside: { value in
                if value {
                    signupViewModel.isProfileViewShow = false
                }
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
