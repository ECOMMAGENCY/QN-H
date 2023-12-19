import SwiftUI

struct BankappZeroView: View {
    @StateObject var bankappZeroViewModel = BankappZeroViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Text(StringConstants.kMsgShowPayAccoun)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray903)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(194.0), height: getRelativeHeight(25.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(196.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                        Image("img_whatsappimage_244x343")
                            .resizable()
                            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(202.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(18.82))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .hideNavigationBar()
                    .onTapGesture {
                        bankappZeroViewModel.nextScreen = "DesicionMakeView"
                    }
                    .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(221.0),
                           alignment: .trailing)
                    .padding(.top, getRelativeHeight(47.0))
                    .padding(.horizontal, getRelativeWidth(72.0))
                    ZStack(alignment: .topLeading) {
                        Text(StringConstants.kLblReturn)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(33.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(430.68))
                            .padding(.leading, getRelativeWidth(127.0))
                            .padding(.trailing, getRelativeWidth(141.0))
                        VStack {
                            Image("img_group2")
                                .resizable()
                                .frame(width: getRelativeWidth(89.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                            Image("img_icons8creditc")
                                .resizable()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeWidth(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                        }
                        .onTapGesture {
                            bankappZeroViewModel.nextScreen = "BankappOneView"
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(220.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.bottom, getRelativeHeight(297.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                        VStack {
                            Image("img_vector_black_900_28x70")
                                .resizable()
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                            Image("img_icons8creditc")
                                .resizable()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeWidth(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(220.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.bottom, getRelativeHeight(165.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                        ZStack(alignment: .center) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(344.0),
                                       height: getRelativeHeight(220.0), alignment: .topLeading)
                                .background(ColorConstants.WhiteA700)
                                .padding(.bottom, getRelativeHeight(35.0))
                                .padding(.trailing, getRelativeWidth(15.0))
                            VStack {
                                Image("img_vector_red_500")
                                    .resizable()
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(32.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.horizontal, getRelativeWidth(12.0))
                                Image("img_icons8creditc")
                                    .resizable()
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeWidth(96.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(7.0))
                            }
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(135.0),
                                   alignment: .center)
                            .padding(.bottom, getRelativeHeight(87.55))
                            .padding(.horizontal, getRelativeWidth(132.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(255.0),
                               alignment: .bottomLeading)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0))
                        .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(262.0))
                        VStack {
                            Image("img_group2")
                                .resizable()
                                .frame(width: getRelativeWidth(89.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                            Image("img_icons8creditc")
                                .resizable()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeWidth(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(220.0),
                               alignment: .topTrailing)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.bottom, getRelativeHeight(284.0))
                        .padding(.leading, getRelativeWidth(15.0))
                        VStack {
                            Image("img_vector_black_900_28x70")
                                .resizable()
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                            Image("img_icons8creditc")
                                .resizable()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeWidth(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                        }
                        .onTapGesture {
                            bankappZeroViewModel.nextScreen = "BankappThreeView"
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(220.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.leading, getRelativeWidth(15.0))
                        VStack {
                            Image("img_vector_red_500")
                                .resizable()
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(28.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                            Image("img_icons8creditc")
                                .resizable()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeWidth(96.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(124.0))
                        }
                        .onTapGesture {
                            bankappZeroViewModel.nextScreen = "BankappTwoView"
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(220.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(277.0))
                        .padding(.leading, getRelativeWidth(14.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(517.0),
                           alignment: .trailing)
                    .padding(.vertical, getRelativeHeight(7.0))
                    .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: BankappOneView(),
                                   tag: "BankappOneView",
                                   selection: $bankappZeroViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BankappThreeView(),
                                   tag: "BankappThreeView",
                                   selection: $bankappZeroViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BankappTwoView(),
                                   tag: "BankappTwoView",
                                   selection: $bankappZeroViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DesicionMakeView(),
                                   tag: "DesicionMakeView",
                                   selection: $bankappZeroViewModel.nextScreen,
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

struct BankappZeroView_Previews: PreviewProvider {
    static var previews: some View {
        BankappZeroView()
    }
}
