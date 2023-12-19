import SwiftUI

struct OnboardingTwoView: View {
    @StateObject var onboardingTwoViewModel = OnboardingTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .topLeading) {
                        VStack {
                            ZStack(alignment: .topTrailing) {
                                Button(action: {
                                    onboardingTwoViewModel.nextScreen = "HomevOneView"
                                }, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblSkip)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(14.0)))
                                            .fontWeight(.medium)
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .foregroundColor(ColorConstants.Bluegray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(33.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 16.5,
                                                                       topRight: 16.5,
                                                                       bottomLeft: 16.5,
                                                                       bottomRight: 16.5)
                                                    .fill(ColorConstants.GreenA100))
                                            .padding(.bottom, getRelativeHeight(400.0))
                                            .padding(.leading, getRelativeWidth(298.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(33.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 16.5, topRight: 16.5,
                                                           bottomLeft: 16.5, bottomRight: 16.5)
                                        .fill(ColorConstants.GreenA100))
                                .padding(.bottom, getRelativeHeight(400.0))
                                .padding(.leading, getRelativeWidth(298.0))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .topTrailing)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Blue100))
                                    .padding(.bottom, getRelativeHeight(286.94))
                                    .padding(.leading, getRelativeWidth(287.88))
                                ZStack(alignment: .center) {
                                    ZStack(alignment: .topLeading) {
                                        ZStack(alignment: .bottomTrailing) {
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_teal_100")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(90.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblService)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(55.0),
                                                           height: getRelativeHeight(36.0),
                                                           alignment: .center)
                                                    .padding(.top, getRelativeHeight(9.14))
                                                    .padding(.horizontal, getRelativeWidth(17.91))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .trailing)
                                            .padding(.leading, getRelativeWidth(85.07))
                                            .padding(.trailing, getRelativeWidth(21.93))
                                            ZStack(alignment: .topTrailing) {
                                                Image("img_subtract_teal_100_48x27")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(27.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblInstall)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(4.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .center)
                                                    .padding(.bottom, getRelativeHeight(15.83))
                                                    .padding(.leading, getRelativeWidth(23.47))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .bottomTrailing)
                                            .padding(.top, getRelativeHeight(29.76))
                                            .padding(.leading, getRelativeWidth(170.14))
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_teal_100_48x90")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(90.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblMakeup)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(57.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .center)
                                                    .padding(.bottom, getRelativeHeight(20.61))
                                                    .padding(.horizontal, getRelativeWidth(17.11))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(30.0))
                                            .padding(.trailing, getRelativeWidth(107.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(197.0),
                                               height: getRelativeHeight(78.0),
                                               alignment: .bottomTrailing)
                                        .padding(.top, getRelativeHeight(44.65))
                                        .padding(.leading, getRelativeWidth(177.1))
                                        ZStack(alignment: .bottomTrailing) {
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_teal_100")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(90.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblPlumbing)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(69.0),
                                                           height: getRelativeHeight(33.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(8.1))
                                                    .padding(.bottom, getRelativeHeight(6.9))
                                                    .padding(.horizontal, getRelativeWidth(10.93))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .leading)
                                            .padding(.leading, getRelativeWidth(6.96))
                                            .padding(.trailing, getRelativeWidth(85.04))
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_2")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(90.0),
                                                           height: getRelativeHeight(48.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblMakeup)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(57.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .center)
                                                    .padding(.bottom, getRelativeHeight(20.61))
                                                    .padding(.horizontal, getRelativeWidth(17.11))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .bottomTrailing)
                                            .padding(.top, getRelativeHeight(29.77))
                                            .padding(.leading, getRelativeWidth(92.03))
                                            Image("img_subtract_teal_100_48x12")
                                                .resizable()
                                                .frame(width: getRelativeWidth(12.0),
                                                       height: getRelativeHeight(48.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.bottom, getRelativeHeight(30.0))
                                                .padding(.trailing, getRelativeWidth(170.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(182.0),
                                               height: getRelativeHeight(78.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(44.0))
                                        .padding(.trailing, getRelativeWidth(193.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(122.0),
                                           alignment: .bottomLeading)
                                    .padding(.top, getRelativeHeight(253.54))
                                    ZStack(alignment: .leading) {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(193.0),
                                                   height: getRelativeHeight(343.0),
                                                   alignment: .bottomLeading)
                                            .background(RoundedCorners(topLeft: 96.77,
                                                                       topRight: 96.77,
                                                                       bottomLeft: 96.77,
                                                                       bottomRight: 96.77)
                                                    .fill(ColorConstants.DeepPurple100))
                                            .shadow(color: ColorConstants.Bluegray80014,
                                                    radius: 120, x: 0, y: 10)
                                            .padding(.top, getRelativeHeight(47.46))
                                        Image("img_221")
                                            .resizable()
                                            .frame(width: getRelativeWidth(193.0),
                                                   height: getRelativeHeight(390.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 96.77,
                                                                       topRight: 96.77,
                                                                       bottomLeft: 96.77,
                                                                       bottomRight: 96.77))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(193.0),
                                           height: getRelativeHeight(390.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(12.1))
                                    .padding(.leading, getRelativeWidth(87.91))
                                    .padding(.trailing, getRelativeWidth(94.09))
                                    ZStack(alignment: .bottomLeading) {
                                        ZStack(alignment: .topTrailing) {
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_deep_purple_100")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(91.0),
                                                           height: getRelativeHeight(49.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblInstall2)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(43.0),
                                                           height: getRelativeHeight(19.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(14.24))
                                                    .padding(.bottom, getRelativeHeight(15.76))
                                                    .padding(.horizontal, getRelativeWidth(23.69))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(91.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .trailing)
                                            .padding(.leading, getRelativeWidth(84.91))
                                            .padding(.trailing, getRelativeWidth(7.09))
                                            Image("img_subtract_deep_purple_100_49x13")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(49.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.bottom, getRelativeHeight(31.0))
                                                .padding(.leading, getRelativeWidth(169.81))
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_deep_purple_100_49x91")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(91.0),
                                                           height: getRelativeHeight(49.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblService)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(55.0),
                                                           height: getRelativeHeight(36.0),
                                                           alignment: .center)
                                                    .padding(.top, getRelativeHeight(9.29))
                                                    .padding(.horizontal, getRelativeWidth(17.62))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(91.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .bottomLeading)
                                            .padding(.top, getRelativeHeight(31.58))
                                            .padding(.trailing, getRelativeWidth(92.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(183.0),
                                               height: getRelativeHeight(80.0),
                                               alignment: .topTrailing)
                                        .padding(.bottom, getRelativeHeight(48.0))
                                        .padding(.leading, getRelativeWidth(191.21))
                                        ZStack(alignment: .topTrailing) {
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_deep_purple_100")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(91.0),
                                                           height: getRelativeHeight(49.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblPlumbing)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(69.0),
                                                           height: getRelativeHeight(33.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(8.2))
                                                    .padding(.bottom, getRelativeHeight(7.8))
                                                    .padding(.horizontal, getRelativeWidth(10.81))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(91.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .leading)
                                            .padding(.leading, getRelativeWidth(21.4))
                                            .padding(.trailing, getRelativeWidth(84.6))
                                            ZStack(alignment: .center) {
                                                Image("img_subtract_3")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(91.0),
                                                           height: getRelativeHeight(49.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblRepair)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(47.0),
                                                           height: getRelativeHeight(36.0),
                                                           alignment: .center)
                                                    .padding(.top, getRelativeHeight(9.99))
                                                    .padding(.horizontal, getRelativeWidth(22.13))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(91.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .topTrailing)
                                            .padding(.bottom, getRelativeHeight(31.0))
                                            .padding(.leading, getRelativeWidth(106.31))
                                            ZStack(alignment: .topLeading) {
                                                Image("img_subtract_deep_purple_100")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(27.0),
                                                           height: getRelativeHeight(49.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblMakeup)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(14.96)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(10.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .center)
                                                    .padding(.bottom, getRelativeHeight(21.55))
                                                    .padding(.trailing, getRelativeWidth(17.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .bottomLeading)
                                            .padding(.top, getRelativeHeight(31.59))
                                            .padding(.trailing, getRelativeWidth(170.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(197.0),
                                               height: getRelativeHeight(80.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(47.37))
                                        .padding(.trailing, getRelativeWidth(178.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(128.0),
                                           alignment: .bottomLeading)
                                    .padding(.top, getRelativeHeight(258.56))
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(402.0),
                                       alignment: .bottomLeading)
                                .padding(.top, getRelativeHeight(30.9))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(433.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                            PageIndicator(numPages: 3, currentPage: .constant(1),
                                          selectedColor: ColorConstants.DeepPurpleA200,
                                          unSelectedColor: ColorConstants.DeepPurpleA2006c,
                                          spacing: 12.0)
                            Text(StringConstants.kMsgPlumberExper)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(260.0),
                                       height: getRelativeHeight(86.0), alignment: .center)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.horizontal, getRelativeWidth(57.0))
                            Button(action: {}, label: {
                                Image("img_arrowright")
                            })
                            .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 24.0, topRight: 24.0,
                                                       bottomLeft: 24.0, bottomRight: 24.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.vertical, getRelativeHeight(82.0))
                            .padding(.horizontal, getRelativeWidth(57.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        Image("img_ellipse228_48x45")
                            .resizable()
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(764.0))
                            .padding(.trailing, getRelativeWidth(330.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomevOneView(),
                                   tag: "HomevOneView",
                                   selection: $onboardingTwoViewModel.nextScreen,
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

struct OnboardingTwoView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTwoView()
    }
}
