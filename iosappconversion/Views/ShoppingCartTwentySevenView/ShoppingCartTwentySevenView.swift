import SwiftUI

struct ShoppingCartTwentySevenView: View {
    @StateObject var shoppingCartTwentySevenViewModel = ShoppingCartTwentySevenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .trailing, spacing: 0) {
                        VStack(alignment: .trailing, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLblShoppingCart)
                                    .font(FontScheme
                                        .kMontserratRomanMedium(size: getRelativeHeight(21.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(102.0),
                                           height: getRelativeHeight(47.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                ZStack(alignment: .leading) {
                                    Text(StringConstants.kLbl1)
                                        .font(FontScheme.kNTR(size: getRelativeHeight(32.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.RedA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeHeight(68.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(23.8))
                                    Image("img_vector_black_900")
                                        .resizable()
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeHeight(26.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.trailing, getRelativeWidth(15.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(39.0),
                                       height: getRelativeHeight(68.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(78.0))
                            }
                            .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(68.0),
                                   alignment: .trailing)
                            .padding(.leading)
                            .padding(.leading)
                            HStack {
                                Image("img_interiorpainti_7")
                                    .resizable()
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(73.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0))
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(6.0))
                                Spacer()
                                ZStack(alignment: .bottomLeading) {
                                    Text(StringConstants.kMsgLocalCleaning2)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Bluegray800)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeHeight(57.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(6.0))
                                        .padding(.leading, getRelativeWidth(43.0))
                                    Text(StringConstants.kLbl3800)
                                        .font(FontScheme
                                            .kNumansRegular(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(54.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(45.2))
                                        .padding(.trailing, getRelativeWidth(128.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(182.0),
                                       height: getRelativeHeight(63.0), alignment: .top)
                                .padding(.vertical, getRelativeHeight(6.0))
                                Spacer()
                                Image("img_bin")
                                    .resizable()
                                    .frame(width: getRelativeWidth(10.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(40.0))
                                    .padding(.trailing, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(90.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.Gray100))
                            .shadow(color: ColorConstants.Black90026, radius: 5, x: 1, y: 2)
                            .padding(.top, getRelativeHeight(65.0))
                        }
                        .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(223.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(13.0))
                        VStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAdd)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(148.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                   bottomLeft: 5.0,
                                                                   bottomRight: 5.0)
                                                .fill(ColorConstants.LightBlue300))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                }
                            })
                            .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.LightBlue300))
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        }
                        .frame(width: getRelativeWidth(360.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Gray90033, radius: 25, x: 0, y: 0)
                        .padding(.top, getRelativeHeight(323.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                        HStack {
                            Text(StringConstants.kLbl38002)
                                .font(FontScheme.kNumansRegular(size: getRelativeHeight(17.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.bottom, getRelativeHeight(19.0))
                                .padding(.leading, getRelativeWidth(23.0))
                            Spacer()
                            HStack {
                                Text(StringConstants.kLblCheckout)
                                    .font(FontScheme
                                        .kMontserratRomanMedium(size: getRelativeHeight(19.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Image("img_goback")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(24.0),
                                   alignment: .top)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.bottom, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(36.0))
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.LightBlue300))
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        VStack {
                            Image("img_rectangle9_13")
                                .resizable()
                                .frame(width: getRelativeWidth(374.0),
                                       height: getRelativeHeight(43.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Divider()
                                .frame(width: getRelativeWidth(143.0),
                                       height: getRelativeHeight(4.0), alignment: .trailing)
                                .background(ColorConstants.WhiteA700A0)
                                .padding(.vertical, getRelativeHeight(57.0))
                                .padding(.horizontal, getRelativeWidth(106.0))
                        }
                        .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(115.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0)
                            .fill(ColorConstants.LightBlue300))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(45.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ShoppingCartTwentySevenView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartTwentySevenView()
    }
}
