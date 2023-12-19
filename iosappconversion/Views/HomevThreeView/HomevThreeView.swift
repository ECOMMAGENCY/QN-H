import SwiftUI

struct HomevThreeView: View {
    @StateObject var homevThreeViewModel = HomevThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            HStack {
                                HStack {
                                    Image("img_union_deep_purple_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                    Image("img_iconoutline")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            homevThreeViewModel.nextScreen = "AllCategoriesView"
                                        }
                                    Spacer()
                                    Image("img_icon24pxnotif")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            homevThreeViewModel.nextScreen = "NotificationEmptyView"
                                        }
                                }
                                .frame(width: getRelativeWidth(289.0),
                                       height: getRelativeHeight(22.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(36.0))
                                .padding(.trailing, getRelativeWidth(48.0))
                            }
                            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(72.0),
                               alignment: .leading)
                        VStack(alignment: .leading, spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                ZStack(alignment: .bottomLeading) {
                                    VStack(alignment: .leading, spacing: 0) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblHello)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Bluegray501)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(75.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(19.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                            Text(StringConstants.kMsgWhatYouAreLo)
                                                .font(FontScheme
                                                    .kInterBold(size: getRelativeHeight(32.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Bluegray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(312.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(9.0))
                                                .padding(.bottom, getRelativeHeight(10.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                        }
                                        .frame(width: getRelativeWidth(344.0),
                                               height: getRelativeHeight(144.0),
                                               alignment: .leading)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.trailing)
                                        ZStack(alignment: .topLeading) {
                                            HStack {
                                                VStack {
                                                    Button(action: {}, label: {
                                                        Image("img_group34259")
                                                    })
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeWidth(58.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 29.0,
                                                                               topRight: 29.0,
                                                                               bottomLeft: 29.0,
                                                                               bottomRight: 29.0)
                                                            .fill(ColorConstants.DeepOrange200))
                                                    .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblHomeClean)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray800)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(73.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(13.0))
                                                }
                                                .frame(width: getRelativeWidth(73.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .center)
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Button(action: {}, label: {
                                                        Image("img_group34260")
                                                    })
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeWidth(58.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 29.0,
                                                                               topRight: 29.0,
                                                                               bottomLeft: 29.0,
                                                                               bottomRight: 29.0)
                                                            .fill(ColorConstants.DeepPurple100))
                                                    Text(StringConstants.kLblElectrical)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray800)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(56.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(13.0))
                                                }
                                                .frame(width: getRelativeWidth(58.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .center)
                                                .padding(.leading, getRelativeWidth(25.0))
                                                VStack {
                                                    Button(action: {}, label: {
                                                        Image("img_group34261")
                                                    })
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeWidth(58.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 29.0,
                                                                               topRight: 29.0,
                                                                               bottomLeft: 29.0,
                                                                               bottomRight: 29.0)
                                                            .fill(ColorConstants.LightBlue100))
                                                    .padding(.horizontal, getRelativeWidth(7.0))
                                                    Text(StringConstants.kLblWindowsTr)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray800)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(73.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(13.0))
                                                }
                                                .frame(width: getRelativeWidth(73.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .center)
                                                .padding(.leading, getRelativeWidth(25.0))
                                                VStack {
                                                    VStack {
                                                        Button(action: {}, label: {
                                                            Image("img_avatar")
                                                        })
                                                        .frame(width: getRelativeWidth(59.0),
                                                               height: getRelativeWidth(59.0),
                                                               alignment: .center)
                                                        .overlay(RoundedCorners(topLeft: 29.5,
                                                                                topRight: 29.5,
                                                                                bottomLeft: 29.5,
                                                                                bottomRight: 29.5)
                                                                .stroke(ColorConstants.Gray201,
                                                                        lineWidth: 1))
                                                        .background(RoundedCorners(topLeft: 29.5,
                                                                                   topRight: 29.5,
                                                                                   bottomLeft: 29.5,
                                                                                   bottomRight: 29.5)
                                                                .fill(ColorConstants.Gray51))
                                                    }
                                                    .onTapGesture {
                                                        homevThreeViewModel
                                                            .nextScreen = "AllCategoriesView"
                                                    }
                                                    .frame(width: getRelativeWidth(59.0),
                                                           height: getRelativeWidth(59.0),
                                                           alignment: .leading)
                                                    .clipShape(Circle())
                                                    Text(StringConstants.kLblSeeAll)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray800)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(42.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(13.0))
                                                        .padding(.horizontal, getRelativeWidth(8.0))
                                                }
                                                .frame(width: getRelativeWidth(59.0),
                                                       height: getRelativeHeight(88.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 29.5,
                                                                           topRight: 29.5,
                                                                           bottomLeft: 29.5,
                                                                           bottomRight: 29.5))
                                                .padding(.leading, getRelativeWidth(25.0))
                                            }
                                            .frame(width: getRelativeWidth(338.0),
                                                   height: getRelativeHeight(89.0),
                                                   alignment: .center)
                                            .padding(.vertical, getRelativeHeight(14.0))
                                            .padding(.horizontal, getRelativeWidth(3.0))
                                            Image("img_interiorpainti_2")
                                                .resizable()
                                                .frame(width: getRelativeWidth(72.0),
                                                       height: getRelativeHeight(73.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 36.0,
                                                                           topRight: 36.0,
                                                                           bottomLeft: 36.0,
                                                                           bottomRight: 36.0))
                                                .padding(.bottom, getRelativeHeight(33.0))
                                                .padding(.trailing, getRelativeWidth(260.0))
                                                .onTapGesture {
                                                    homevThreeViewModel
                                                        .nextScreen = "Homecleaning2View"
                                                }
                                            Image("img_interiorpainti_3")
                                                .resizable()
                                                .frame(width: getRelativeWidth(72.0),
                                                       height: getRelativeHeight(73.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 36.0,
                                                                           topRight: 36.0,
                                                                           bottomLeft: 36.0,
                                                                           bottomRight: 36.0))
                                                .padding(.bottom, getRelativeHeight(37.0))
                                                .padding(.leading, getRelativeWidth(181.0))
                                            Image("img_interiorpainti_4")
                                                .resizable()
                                                .frame(width: getRelativeWidth(72.0),
                                                       height: getRelativeHeight(73.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 36.0,
                                                                           topRight: 36.0,
                                                                           bottomLeft: 36.0,
                                                                           bottomRight: 36.0))
                                                .padding(.bottom, getRelativeHeight(37.0))
                                                .padding(.trailing, getRelativeWidth(176.0))
                                                .onTapGesture {
                                                    homevThreeViewModel
                                                        .nextScreen = "ElectricalView"
                                                }
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(344.0),
                                               height: getRelativeHeight(117.0),
                                               alignment: .leading)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(16.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            HStack {
                                                Divider()
                                                    .frame(width: getRelativeWidth(4.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .top)
                                                    .background(RoundedCorners(topLeft: 2.0,
                                                                               topRight: 2.0,
                                                                               bottomLeft: 2.0,
                                                                               bottomRight: 2.0)
                                                            .fill(ColorConstants.DeepPurple100))
                                                Text(StringConstants.kMsgApplianceRepai)
                                                    .font(FontScheme
                                                        .kInterSemiBold(size: getRelativeHeight(18.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Gray903)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(142.0),
                                                           height: getRelativeHeight(22.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(10.0))
                                            }
                                            .frame(width: getRelativeWidth(156.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(17.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                            VStack {
                                                ZStack(alignment: .leading) {
                                                    ZStack {
                                                        Image("img_image210")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(152.0),
                                                                   height: getRelativeHeight(165.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .background(RoundedCorners(topLeft: 8.0,
                                                                                       topRight: 8.0,
                                                                                       bottomLeft: 8.0,
                                                                                       bottomRight: 8.0))
                                                    }
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(152.0),
                                                           height: getRelativeHeight(165.0),
                                                           alignment: .bottomTrailing)
                                                    .background(RoundedCorners(topLeft: 8.0,
                                                                               topRight: 8.0,
                                                                               bottomLeft: 8.0,
                                                                               bottomRight: 8.0))
                                                    .padding(.top, getRelativeHeight(41.0))
                                                    .padding(.leading, getRelativeWidth(157.0))
                                                    VStack(alignment: .leading, spacing: 0) {
                                                        HStack {
                                                            Text(StringConstants.kMsgOfferDryClean)
                                                                .font(FontScheme
                                                                    .kInterSemiBold(size: getRelativeHeight(13.0)))
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(ColorConstants
                                                                    .Bluegray902)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(115.0),
                                                                       height: getRelativeHeight(16.0),
                                                                       alignment: .topLeading)
                                                            Image("img_subtract_bluegray_902")
                                                                .resizable()
                                                                .frame(width: getRelativeWidth(13.0),
                                                                       height: getRelativeWidth(13.0),
                                                                       alignment: .center)
                                                                .scaledToFit()
                                                                .clipped()
                                                                .padding(.leading,
                                                                         getRelativeWidth(5.0))
                                                        }
                                                        .frame(width: getRelativeWidth(133.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .leading)
                                                        .padding(.trailing)
                                                        Text(StringConstants.kLblGet10)
                                                            .font(FontScheme
                                                                .kInterSemiBold(size: getRelativeHeight(32.0)))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(ColorConstants.Gray903)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(120.0),
                                                                   height: getRelativeHeight(39.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(15.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                        HStack {
                                                            Text(StringConstants.kLblGrabOffer)
                                                                .font(FontScheme
                                                                    .kInterMedium(size: getRelativeHeight(14.0)))
                                                                .fontWeight(.medium)
                                                                .foregroundColor(ColorConstants
                                                                    .DeepPurple200)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(70.0),
                                                                       height: getRelativeHeight(17.0),
                                                                       alignment: .topLeading)
                                                                .padding(.vertical,
                                                                         getRelativeHeight(6.0))
                                                                .padding(.leading,
                                                                         getRelativeWidth(11.0))
                                                            Image("img_arrowright_deep_purple_100")
                                                                .resizable()
                                                                .frame(width: getRelativeWidth(3.0),
                                                                       height: getRelativeHeight(7.0),
                                                                       alignment: .center)
                                                                .scaledToFit()
                                                                .clipped()
                                                                .padding(.vertical,
                                                                         getRelativeHeight(11.0))
                                                                .padding(.leading,
                                                                         getRelativeWidth(9.0))
                                                        }
                                                        .onTapGesture {
                                                            homevThreeViewModel
                                                                .isReferaFriendViewShow = true
                                                        }
                                                        .frame(width: getRelativeWidth(106.0),
                                                               height: getRelativeHeight(30.0),
                                                               alignment: .leading)
                                                        .background(RoundedCorners(topLeft: 15.0,
                                                                                   topRight: 15.0,
                                                                                   bottomLeft: 15.0,
                                                                                   bottomRight: 15.0)
                                                                .fill(ColorConstants.WhiteA700))
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.trailing, getRelativeWidth(10.0))
                                                    }
                                                    .frame(width: getRelativeWidth(241.0),
                                                           height: getRelativeHeight(118.0),
                                                           alignment: .leading)
                                                    .padding(.leading, getRelativeWidth(16.0))
                                                    .padding(.trailing, getRelativeWidth(52.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(309.0),
                                                       height: getRelativeHeight(206.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                            }
                                            .frame(width: getRelativeWidth(309.0),
                                                   height: getRelativeHeight(206.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.DeepPurple50))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                        }
                                        .frame(width: getRelativeWidth(341.0),
                                               height: getRelativeHeight(270.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(20.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                        HStack {
                                            HStack {
                                                Divider()
                                                    .frame(width: getRelativeWidth(4.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .top)
                                                    .background(RoundedCorners(topLeft: 2.0,
                                                                               topRight: 2.0,
                                                                               bottomLeft: 2.0,
                                                                               bottomRight: 2.0)
                                                            .fill(ColorConstants.DeepPurple100))
                                                Text(StringConstants.kMsgCleaningServic)
                                                    .font(FontScheme
                                                        .kInterSemiBold(size: getRelativeHeight(18.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Bluegray901)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(152.0),
                                                           height: getRelativeHeight(22.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(10.0))
                                            }
                                            .frame(width: getRelativeWidth(166.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .bottom)
                                            .padding(.top, getRelativeHeight(7.0))
                                            .padding(.bottom, getRelativeHeight(4.0))
                                            Spacer()
                                            HStack {
                                                Text(StringConstants.kLblSeeAll)
                                                    .font(FontScheme
                                                        .kInterSemiBold(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Gray600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(38.0),
                                                           height: getRelativeHeight(15.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(16.0))
                                                Image("img_arrowright_gray_600")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(3.0),
                                                           height: getRelativeHeight(6.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.leading, getRelativeWidth(8.0))
                                                    .padding(.trailing, getRelativeWidth(16.0))
                                            }
                                            .onTapGesture {
                                                homevThreeViewModel.nextScreen = "AllCategoriesView"
                                            }
                                            .frame(width: getRelativeWidth(83.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                                    bottomLeft: 17.5,
                                                                    bottomRight: 17.5)
                                                    .stroke(ColorConstants.Gray200,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 17.5,
                                                                       topRight: 17.5,
                                                                       bottomLeft: 17.5,
                                                                       bottomRight: 17.5)
                                                    .fill(Color.clear.opacity(0.7)))
                                            .padding(.leading, getRelativeWidth(63.0))
                                        }
                                        .frame(width: getRelativeWidth(312.0),
                                               height: getRelativeHeight(35.0), alignment: .leading)
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        HStack(spacing: 0) {
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                LazyHStack {
                                                    ForEach(0 ... 2, id: \.self) { index in
                                                        Columnoffer2Cell()
                                                    }
                                                    .onTapGesture {
                                                        homevThreeViewModel
                                                            .nextScreen = "GeneralHandymanView"
                                                    }
                                                }
                                            }
                                        }
                                        .frame(width: getRelativeWidth(344.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(43.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack {
                                                VStack(alignment: .leading, spacing: 0) {
                                                    HStack {
                                                        Text(StringConstants.kMsgOfferAcServic)
                                                            .font(FontScheme
                                                                .kInterSemiBold(size: getRelativeHeight(13.0)))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(ColorConstants
                                                                .Bluegray902)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(104.0),
                                                                   height: getRelativeHeight(16.0),
                                                                   alignment: .topLeading)
                                                        Image("img_subtract_bluegray_902")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(13.0),
                                                                   height: getRelativeWidth(13.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.leading,
                                                                     getRelativeWidth(5.0))
                                                    }
                                                    .frame(width: getRelativeWidth(122.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .leading)
                                                    .padding(.top, getRelativeHeight(27.0))
                                                    .padding(.horizontal, getRelativeWidth(20.0))
                                                    Text(StringConstants.kLblGet10)
                                                        .font(FontScheme
                                                            .kInterSemiBold(size: getRelativeHeight(48.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Gray903)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(180.0),
                                                               height: getRelativeHeight(59.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(5.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(20.0))
                                                    HStack {
                                                        Text(StringConstants.kLblGrabOffer)
                                                            .font(FontScheme
                                                                .kInterMedium(size: getRelativeHeight(14.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .Bluegray502)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(70.0),
                                                                   height: getRelativeHeight(17.0),
                                                                   alignment: .topLeading)
                                                            .padding(.vertical,
                                                                     getRelativeHeight(6.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(11.0))
                                                        Image("img_arrowright_bluegray_502")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(3.0),
                                                                   height: getRelativeHeight(7.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.vertical,
                                                                     getRelativeHeight(11.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(9.0))
                                                    }
                                                    .onTapGesture {
                                                        homevThreeViewModel
                                                            .isReferaFriendViewShow = true
                                                    }
                                                    .frame(width: getRelativeWidth(106.0),
                                                           height: getRelativeHeight(30.0),
                                                           alignment: .leading)
                                                    .background(RoundedCorners(topLeft: 15.0,
                                                                               topRight: 15.0,
                                                                               bottomLeft: 15.0,
                                                                               bottomRight: 15.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                    .padding(.vertical, getRelativeHeight(6.0))
                                                    .padding(.horizontal, getRelativeWidth(20.0))
                                                }
                                                .frame(width: getRelativeWidth(261.0),
                                                       height: getRelativeHeight(163.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 13.31,
                                                                           topRight: 13.31,
                                                                           bottomLeft: 13.31,
                                                                           bottomRight: 13.31)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .LightBlue300,
                                                                ColorConstants
                                                                    .Teal300]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    HStack {
                                                        Text(StringConstants.kMsgOfferAcServic)
                                                            .font(FontScheme
                                                                .kInterSemiBold(size: getRelativeHeight(13.0)))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(ColorConstants
                                                                .Bluegray902)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(104.0),
                                                                   height: getRelativeHeight(16.0),
                                                                   alignment: .topLeading)
                                                        Image("img_subtract_bluegray_902")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(13.0),
                                                                   height: getRelativeWidth(13.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.leading,
                                                                     getRelativeWidth(5.0))
                                                    }
                                                    .frame(width: getRelativeWidth(122.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .leading)
                                                    .padding(.top, getRelativeHeight(27.0))
                                                    .padding(.horizontal, getRelativeWidth(12.0))
                                                    Text(StringConstants.kLblGet10)
                                                        .font(FontScheme
                                                            .kInterSemiBold(size: getRelativeHeight(48.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Gray903)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(200.0),
                                                               height: getRelativeHeight(59.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(5.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(12.0))
                                                    HStack {
                                                        Text(StringConstants.kLblGrabOffer)
                                                            .font(FontScheme
                                                                .kInterMedium(size: getRelativeHeight(14.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .Bluegray502)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(70.0),
                                                                   height: getRelativeHeight(17.0),
                                                                   alignment: .topLeading)
                                                            .padding(.vertical,
                                                                     getRelativeHeight(6.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(11.0))
                                                        Image("img_arrowright_bluegray_502")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(3.0),
                                                                   height: getRelativeHeight(7.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.vertical,
                                                                     getRelativeHeight(11.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(9.0))
                                                    }
                                                    .onTapGesture {
                                                        homevThreeViewModel
                                                            .isReferaFriendViewShow = true
                                                    }
                                                    .frame(width: getRelativeWidth(106.0),
                                                           height: getRelativeHeight(30.0),
                                                           alignment: .leading)
                                                    .background(RoundedCorners(topLeft: 15.0,
                                                                               topRight: 15.0,
                                                                               bottomLeft: 15.0,
                                                                               bottomRight: 15.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                    .padding(.vertical, getRelativeHeight(6.0))
                                                    .padding(.horizontal, getRelativeWidth(12.0))
                                                }
                                                .frame(width: getRelativeWidth(253.0),
                                                       height: getRelativeHeight(161.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 13.31,
                                                                           topRight: 13.31,
                                                                           bottomLeft: 13.31,
                                                                           bottomRight: 13.31)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .DeepOrangeA100,
                                                                ColorConstants
                                                                    .Red300]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.leading, getRelativeWidth(19.0))
                                            }
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(163.0),
                                                   alignment: .trailing)
                                        }
                                        .padding(.top, getRelativeHeight(43.0))
                                        .padding(.leading, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(360.0),
                                           height: UIScreen.main.bounds.height,
                                           alignment: .topLeading)
                                    .background(ColorConstants.Gray51)
                                    .padding(.leading, getRelativeWidth(15.0))
                                    VStack {
                                        HStack {
                                            HStack {
                                                Divider()
                                                    .frame(width: getRelativeWidth(3.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .top)
                                                    .background(RoundedCorners(topLeft: 1.745,
                                                                               topRight: 1.745,
                                                                               bottomLeft: 1.745,
                                                                               bottomRight: 1.745)
                                                            .fill(ColorConstants.DeepPurple100))
                                                Text(StringConstants.kLblCategories)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(16.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Gray903)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(81.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(9.0))
                                            }
                                            .frame(width: getRelativeWidth(93.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .bottom)
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.bottom, getRelativeHeight(6.0))
                                            Button(action: {}, label: {
                                                Image("img_frame223")
                                            })
                                            .frame(width: getRelativeWidth(36.0),
                                                   height: getRelativeWidth(36.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.Gray52))
                                            .shadow(color: ColorConstants.Black90019, radius: 8,
                                                    x: 0, y: 4)
                                            .padding(.leading, getRelativeWidth(182.0))
                                        }
                                        .frame(width: getRelativeWidth(312.0),
                                               height: getRelativeHeight(36.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(16.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        ZStack(alignment: .leading) {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(312.0),
                                                       height: getRelativeHeight(395.0),
                                                       alignment: .topLeading)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.bottom, getRelativeHeight(266.0))
                                            VStack {
                                                VStack(spacing: 0) {
                                                    ScrollView(.vertical, showsIndicators: false) {
                                                        LazyVStack {
                                                            ForEach(0 ... 4, id: \.self) { index in
                                                                Rowzkj4rewrlfopwm2Cell(uiiconmorehoClick: {
                                                                    homevThreeViewModel
                                                                        .nextScreen = "PaintingView"
                                                                })
                                                            }
                                                        }
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(312.0),
                                                       alignment: .leading)
                                            }
                                            .frame(width: getRelativeWidth(312.0),
                                                   height: getRelativeHeight(661.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(312.0),
                                               height: getRelativeHeight(661.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.vertical, getRelativeHeight(24.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(780.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(1090.0))
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: UIScreen.main.bounds.height,
                                       alignment: .topLeading)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        VStack {
                            Text("tabbar")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(374.0),
                                       height: getRelativeHeight(72.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(72.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: WindowTreatmentsView(),
                                       tag: "WindowTreatmentsView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: Homecleaning2View(),
                                       tag: "Homecleaning2View",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: PaintingView(),
                                       tag: "PaintingView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: PlumbingView(),
                                       tag: "PlumbingView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: ElectricalView(),
                                       tag: "ElectricalView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: GeneralHandymanView(),
                                       tag: "GeneralHandymanView",
                                       selection: $homevThreeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.Gray51)
                .ignoresSafeArea()
                .customDialog(isShowing: $homevThreeViewModel.isReferaFriendViewShow) {
                    ReferaFriendView(referaFriendViewModel: ReferaFriendViewModel(_isOpen: $homevThreeViewModel
                            .isReferaFriendViewShow))
                } onTapOutside: { value in
                    if value {
                        homevThreeViewModel.isReferaFriendViewShow = false
                    }
                }
            }
            .hideNavigationBar()
            if homevThreeViewModel.isMovingViewShow {
                BottomSheetView(isOpen: $homevThreeViewModel.isMovingViewShow, content: {
                    MovingView(movingViewModel: MovingViewModel(_isOpen: $homevThreeViewModel
                            .isMovingViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct HomevThreeView_Previews: PreviewProvider {
    static var previews: some View {
        HomevThreeView()
    }
}
