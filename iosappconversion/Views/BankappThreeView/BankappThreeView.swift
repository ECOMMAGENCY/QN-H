import SwiftUI

struct BankappThreeView: View {
    @StateObject var bankappThreeViewModel = BankappThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
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
                            .padding(.top, getRelativeHeight(43.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                        Image("img_group_4")
                            .resizable()
                            .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(216.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(73.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                        HStack {
                            RadioGroup(items: [StringConstants.kLblPaypal],
                                       selectedId: $bankappThreeViewModel.paypalRadio,
                                       selectedColor: ColorConstants.Blue800)
                                .frame(width: getRelativeWidth(82.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Blue800, lineWidth: 2))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(19.0))
                            Spacer()
                            ZStack {
                                Image("img_group2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(89.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(19.0))
                                    .padding(.trailing, getRelativeWidth(5.0))
                            }
                            .hideNavigationBar()
                            .onTapGesture {
                                bankappThreeViewModel.isPaysuccessfullyViewShow = true
                            }
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(39.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(10.0))
                            .padding(.trailing, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                        .padding(.top, getRelativeHeight(59.0))
                        .padding(.horizontal, getRelativeWidth(12.0))
                        HStack {
                            RadioGroup(items: [StringConstants.kLblGooglepay],
                                       selectedId: $bankappThreeViewModel.googlepayRadio,
                                       selectedColor: ColorConstants.Blue800)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Blue800, lineWidth: 2))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(19.0))
                            Spacer()
                            ZStack {
                                Image("img_vector_red_500")
                                    .resizable()
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(22.0))
                            }
                            .hideNavigationBar()
                            .onTapGesture {
                                bankappThreeViewModel.isPaysuccessfullyViewShow = true
                            }
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(39.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(10.0))
                            .padding(.trailing, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                        .padding(.top, getRelativeHeight(28.0))
                        .padding(.horizontal, getRelativeWidth(12.0))
                        ZStack(alignment: .trailing) {
                            Image("img_paypal")
                                .resizable()
                                .frame(width: getRelativeWidth(344.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            HStack {
                                Text(StringConstants.kLblApplepay)
                                    .font(FontScheme
                                        .kSFProTextSemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                ZStack {
                                    Image("img_vector_black_900_28x70")
                                        .resizable()
                                        .frame(width: getRelativeWidth(70.0),
                                               height: getRelativeHeight(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(27.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                }
                                .hideNavigationBar()
                                .onTapGesture {
                                    bankappThreeViewModel.isPaysuccessfullyViewShow = true
                                }
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(39.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Indigo100, radius: 15, x: 0, y: 3)
                                .padding(.leading, getRelativeWidth(94.0))
                            }
                            .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(39.0),
                                   alignment: .trailing)
                            .padding(.leading, getRelativeWidth(53.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(12.0))
                        Text(StringConstants.kLblReturn)
                            .font(FontScheme.kRobotoMedium(size: getRelativeHeight(28.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(33.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(57.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: BankappTwoView(),
                                       tag: "BankappTwoView",
                                       selection: $bankappThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: BankappOneView(),
                                       tag: "BankappOneView",
                                       selection: $bankappThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if bankappThreeViewModel.isPaysuccessfullyViewShow {
                BottomSheetView(isOpen: $bankappThreeViewModel.isPaysuccessfullyViewShow, content: {
                    PaysuccessfullyView(paysuccessfullyViewModel: PaysuccessfullyViewModel(_isOpen: $bankappThreeViewModel
                            .isPaysuccessfullyViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct BankappThreeView_Previews: PreviewProvider {
    static var previews: some View {
        BankappThreeView()
    }
}
