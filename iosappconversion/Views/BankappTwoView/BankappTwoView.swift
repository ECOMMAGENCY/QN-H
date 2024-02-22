import SwiftUI

struct BankappTwoView: View {
    @StateObject var bankappTwoViewModel = BankappTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kMsgPaymentAccount)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray903)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(45.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    Image("img_group_3")
                        .resizable()
                        .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(216.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(72.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    ZStack(alignment: .center) {
                        VStack {
                            ZStack(alignment: .bottomLeading) {
                                Image("img_paypal")
                                    .resizable()
                                    .frame(width: getRelativeWidth(344.0),
                                           height: getRelativeHeight(67.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblGooglepay)
                                    .font(FontScheme
                                        .kSFProTextSemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(82.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(25.47))
                                    .padding(.trailing, getRelativeWidth(209.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(67.0),
                                   alignment: .leading)
                            Text(StringConstants.kLblReturn)
                                .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(33.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(159.0))
                                .padding(.leading, getRelativeWidth(128.0))
                                .padding(.trailing, getRelativeWidth(125.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(260.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(85.76))
                        .padding(.leading, getRelativeWidth(5.0))
                        VStack {
                            ZStack(alignment: .topLeading) {
                                Image("img_vector_indigo_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(22.6))
                                    .padding(.leading, getRelativeWidth(241.9))
                                Text(StringConstants.kLblPaypal)
                                    .font(FontScheme
                                        .kSFProTextSemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(24.89))
                                    .padding(.trailing, getRelativeWidth(240.84))
                                VStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .onTapGesture {
                                            bankappTwoViewModel.nextScreen = "BankappOneView"
                                        }
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeWidth(24.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 12.305, topRight: 12.305,
                                                                bottomLeft: 12.305,
                                                                bottomRight: 12.305)
                                                .stroke(ColorConstants.Blue800,
                                                        lineWidth: 2))
                                        .background(RoundedCorners(topLeft: 12.305,
                                                                   topRight: 12.305,
                                                                   bottomLeft: 12.305,
                                                                   bottomRight: 12.305)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .padding(.horizontal, getRelativeWidth(19.0))
                                }
                                .frame(width: getRelativeWidth(349.0),
                                       height: getRelativeHeight(61.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                                ZStack {
                                    Image("img_group2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(89.0),
                                               height: getRelativeHeight(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(6.15))
                                        .padding(.bottom, getRelativeHeight(4.85))
                                        .padding(.leading, getRelativeWidth(14.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(39.0), alignment: .trailing)
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                                .padding(.leading, getRelativeWidth(214.0))
                                .padding(.trailing, getRelativeWidth(22.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(61.0),
                                   alignment: .leading)
                            ZStack {
                                Image("img_vector_red_500")
                                    .resizable()
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(6.15))
                                    .padding(.bottom, getRelativeHeight(4.85))
                                    .padding(.horizontal, getRelativeWidth(22.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(39.0),
                                   alignment: .trailing)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.horizontal, getRelativeWidth(22.0))
                        }
                        .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(141.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(204.0))
                        HStack {
                            RadioGroup(items: [StringConstants.kLblApplepay],
                                       selectedId: $bankappTwoViewModel.applepayRadio,
                                       selectedColor: ColorConstants.Blue800)
                                .frame(width: getRelativeWidth(102.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Blue800, lineWidth: 2))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(19.0))
                            ZStack {
                                Image("img_vector_black_900_28x70")
                                    .resizable()
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(27.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(14.0))
                                    .padding(.trailing, getRelativeWidth(29.0))
                            }
                            .hideNavigationBar()
                            .onTapGesture {
                                bankappTwoViewModel.nextScreen = "BankappThreeView"
                            }
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(38.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                            .padding(.leading, getRelativeWidth(89.0))
                            .padding(.trailing, getRelativeWidth(23.0))
                        }
                        .frame(width: getRelativeWidth(346.0), height: getRelativeHeight(59.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                        .padding(.top, getRelativeHeight(175.01))
                        .padding(.leading, getRelativeWidth(4.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(350.0), height: getRelativeHeight(345.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(58.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: BankappOneView(),
                                   tag: "BankappOneView",
                                   selection: $bankappTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BankappThreeView(),
                                   tag: "BankappThreeView",
                                   selection: $bankappTwoViewModel.nextScreen,
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

struct BankappTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BankappTwoView()
    }
}
