import SwiftUI

struct SigninView: View {
    @StateObject var signinViewModel = SigninViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            Image("img_whatsappimage_300x297")
                                .resizable()
                                .frame(width: getRelativeWidth(297.0),
                                       height: getRelativeHeight(300.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(17.0))
                            Text(StringConstants.kLblSignIn)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.horizontal, getRelativeWidth(22.0))
                            Group {
                                HStack {
                                    Spacer()
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(20.0))
                                        .padding(.horizontal, getRelativeWidth(14.0))
                                    TextField(StringConstants.kLblEmail,
                                              text: $signinViewModel.formformsText)
                                        .font(FontScheme
                                            .kPlusJakartaSansMedium(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.LightBlue30099)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: signinViewModel.formformsText) { newValue in

                                    signinViewModel.isValidFormformsText = newValue
                                        .isValidEmail(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                                if !signinViewModel.isValidFormformsText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kPlusJakartaSansMedium(size: getRelativeHeight(12.0)))
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                }
                            }
                            Group {
                                HStack {
                                    Spacer()
                                    Image("img_vector_gray_902")
                                        .resizable()
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    SecureField(StringConstants.kLblPassword,
                                                text: $signinViewModel.formformsoneText)
                                        .font(FontScheme
                                            .kPlusJakartaSansMedium(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.LightBlue30099)
                                        .padding()
                                        .keyboardType(.default)
                                }
                                .onChange(of: signinViewModel.formformsoneText) { newValue in

                                    signinViewModel.isValidFormformsoneText = newValue
                                        .isValidPassword(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                                if !signinViewModel.isValidFormformsoneText {
                                    Text("Please enter valid password.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kPlusJakartaSansMedium(size: getRelativeHeight(12.0)))
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                }
                            }
                            Button(action: {
                                signinViewModel.nextScreen = "HomevOneView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblNext)
                                        .font(FontScheme
                                            .kPlusJakartaSansRomanBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(20.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.LightBlue300))
                                        .padding(.top, getRelativeHeight(24.0))
                                        .padding(.horizontal, getRelativeWidth(17.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(17.0))
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_buttonbutton")
                                })
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeWidth(54.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                           bottomLeft: 27.0, bottomRight: 27.0)
                                        .fill(ColorConstants.Gray50))
                                Spacer()
                                Button(action: {}, label: {
                                    Image("img_buttonbutton_blue_a400")
                                })
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeWidth(54.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                           bottomLeft: 27.0, bottomRight: 27.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.leading, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(54.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(111.0))
                            .padding(.horizontal, getRelativeWidth(17.0))
                        }
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                        HStack {
                            Button(action: {}, label: {
                                Image("img_buttonbutton")
                            })
                            .frame(width: getRelativeWidth(54.0), height: getRelativeWidth(54.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                       bottomLeft: 27.0, bottomRight: 27.0)
                                    .fill(ColorConstants.Gray50))
                            Spacer()
                            Button(action: {}, label: {
                                Image("img_buttonbutton_black_900")
                            })
                            .frame(width: getRelativeWidth(54.0), height: getRelativeWidth(54.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                       bottomLeft: 27.0, bottomRight: 27.0)
                                    .fill(ColorConstants.Gray50))
                            .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(54.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(123.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomevOneView(),
                                   tag: "HomevOneView",
                                   selection: $signinViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
