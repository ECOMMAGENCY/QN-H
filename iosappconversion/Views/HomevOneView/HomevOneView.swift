import SwiftUI

struct HomevOneView: View {
    @StateObject var homevOneViewModel = HomevOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    ZStack(alignment: .leading) {
                        HStack {
                            ZStack(alignment: .leading) {
                                HStack {
                                    Image("img_union_deep_purple_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Image("img_iconoutline")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(74.0))
                                        .onTapGesture {
                                            homevOneViewModel.nextScreen = "AllCategoriesView"
                                        }
                                    Image("img_icon24pxnotif")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(74.0))
                                        .onTapGesture {
                                            homevOneViewModel.nextScreen = "NotificationEmptyView"
                                        }
                                    Image("img_icon24pxmenu")
                                        .resizable()
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeHeight(10.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(73.0))
                                }
                                .frame(width: getRelativeWidth(297.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .padding(.top, getRelativeHeight(26.13))
                                .padding(.bottom, getRelativeHeight(23.87))
                                .padding(.horizontal, getRelativeWidth(38.0))
                                HStack {
                                    Image("img_union_deep_purple_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(38.0))
                                    Image("img_iconoutline")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(120.0))
                                        .onTapGesture {
                                            homevOneViewModel.nextScreen = "AllCategoriesView"
                                        }
                                    Image("img_icon24pxnotif")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(109.0))
                                        .padding(.trailing, getRelativeWidth(48.0))
                                        .onTapGesture {
                                            homevOneViewModel.nextScreen = "NotificationEmptyView"
                                        }
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(72.0), alignment: .leading)
                                .background(ColorConstants.WhiteA700)
                            }
                            .hideNavigationBar()
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(72.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        ScrollView(.vertical, showsIndicators: false) {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: UIScreen.main.bounds.height,
                                           alignment: .topLeading)
                                    .background(ColorConstants.Gray51)
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
                                           height: getRelativeHeight(144.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.trailing)
                                    ZStack(alignment: .topLeading) {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 0) {
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
                                                .padding(.horizontal, getRelativeWidth(1.0))
                                                Text(StringConstants.kLblAssembly)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray800)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(60.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(14.0))
                                            }
                                            .frame(width: getRelativeWidth(60.0),
                                                   height: getRelativeHeight(88.0),
                                                   alignment: .center)
                                            VStack {
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
                                                Text(StringConstants.kLblPlumbing)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray800)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(58.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(14.0))
                                            }
                                            .frame(width: getRelativeWidth(59.0),
                                                   height: getRelativeHeight(88.0),
                                                   alignment: .center)
                                            .padding(.leading, getRelativeWidth(25.0))
                                            VStack(alignment: .leading, spacing: 0) {
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
                                                Text(StringConstants.kLblPainting)
                                                    .font(FontScheme
                                                        .kInterMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Bluegray800)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(50.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(14.0))
                                                    .padding(.horizontal, getRelativeWidth(4.0))
                                            }
                                            .frame(width: getRelativeWidth(58.0),
                                                   height: getRelativeHeight(88.0),
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
                                                    homevOneViewModel
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
                                                    .onTapGesture {
                                                        homevOneViewModel
                                                            .nextScreen = "AllCategoriesView"
                                                    }
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
                                        .frame(width: getRelativeWidth(311.0),
                                               height: getRelativeHeight(89.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .padding(.horizontal, getRelativeWidth(16.5))
                                        Image("img_interiorpainti")
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
                                                homevOneViewModel.nextScreen = "Assembly2View"
                                            }
                                        Image("img_interiorpainti_73x72")
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
                                            .padding(.trailing, getRelativeWidth(177.0))
                                            .onTapGesture {
                                                homevOneViewModel.nextScreen = "PlumbingView"
                                            }
                                        Image("img_interiorpainti_1")
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
                                            .padding(.leading, getRelativeWidth(182.0))
                                            .onTapGesture {
                                                homevOneViewModel.nextScreen = "PaintingView"
                                            }
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(344.0),
                                           height: getRelativeHeight(117.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(9.0))
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 0) {
                                                HStack {
                                                    Text(StringConstants.kMsgOfferAcServic)
                                                        .font(FontScheme
                                                            .kInterSemiBold(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Bluegray902)
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
                                                        .padding(.leading, getRelativeWidth(5.0))
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
                                                    .padding(.horizontal, getRelativeWidth(20.0))
                                                HStack {
                                                    Text(StringConstants.kLblGrabOffer)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray502)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(70.0),
                                                               height: getRelativeHeight(17.0),
                                                               alignment: .topLeading)
                                                        .padding(.vertical, getRelativeHeight(6.0))
                                                        .padding(.leading, getRelativeWidth(11.0))
                                                    Image("img_arrowright_bluegray_502")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(3.0),
                                                               height: getRelativeHeight(7.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.vertical, getRelativeHeight(11.0))
                                                        .padding(.leading, getRelativeWidth(9.0))
                                                }
                                                .onTapGesture {
                                                    homevOneViewModel.isReferaFriendViewShow = true
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
                                                        .foregroundColor(ColorConstants.Bluegray902)
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
                                                        .padding(.leading, getRelativeWidth(5.0))
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
                                                    .padding(.horizontal, getRelativeWidth(12.0))
                                                HStack {
                                                    Text(StringConstants.kLblGrabOffer)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Bluegray502)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(70.0),
                                                               height: getRelativeHeight(17.0),
                                                               alignment: .topLeading)
                                                        .padding(.vertical, getRelativeHeight(6.0))
                                                        .padding(.leading, getRelativeWidth(11.0))
                                                    Image("img_arrowright_bluegray_502")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(3.0),
                                                               height: getRelativeHeight(7.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.vertical, getRelativeHeight(11.0))
                                                        .padding(.leading, getRelativeWidth(9.0))
                                                }
                                                .onTapGesture {
                                                    homevOneViewModel.isReferaFriendViewShow = true
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
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(6.0))
                                    HStack {
                                        Spacer()
                                        VStack {
                                            ZStack(alignment: .center) {
                                                ZStack {}
                                                    .hideNavigationBar()
                                                    .onTapGesture {
                                                        homevOneViewModel.isMovingViewShow = true
                                                    }
                                                    .frame(width: getRelativeWidth(139.0),
                                                           height: getRelativeHeight(154.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 14.0,
                                                                               topRight: 14.0,
                                                                               bottomLeft: 14.0,
                                                                               bottomRight: 14.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                    .padding(.bottom, getRelativeHeight(20.0))
                                                Image("img_i7bamn9bmxmfncu_116x105")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(139.0),
                                                           height: getRelativeHeight(154.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 14.0,
                                                                               topRight: 14.0,
                                                                               bottomLeft: 14.0,
                                                                               bottomRight: 14.0))
                                                    .padding(.top, getRelativeHeight(20.0))
                                                    .padding(.leading, getRelativeWidth(3.76))
                                                Text(StringConstants.kLbl10Off)
                                                    .font(FontScheme
                                                        .kInterSemiBold(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, getRelativeWidth(8.0))
                                                    .foregroundColor(ColorConstants.Gray54)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(65.0),
                                                           height: getRelativeHeight(21.0),
                                                           alignment: .center)
                                                    .background(ColorConstants.RedA200)
                                                    .shadow(color: ColorConstants.PurpleA10033,
                                                            radius: 15, x: 0, y: 2)
                                                    .padding(.bottom, getRelativeHeight(143.5))
                                                    .padding(.trailing, getRelativeWidth(69.24))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(142.0),
                                                   height: getRelativeHeight(174.0),
                                                   alignment: .center)
                                            Text(StringConstants.kLblMoving)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray903)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(53.0),
                                                       height: getRelativeHeight(19.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(15.0))
                                                .padding(.horizontal, getRelativeWidth(44.0))
                                        }
                                        .frame(width: getRelativeWidth(142.0),
                                               height: getRelativeHeight(208.0), alignment: .center)
                                        HStack(spacing: 0) {
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                LazyHStack {
                                                    ForEach(0 ... 1, id: \.self) { index in
                                                        ColumnofferCell()
                                                            .onTapGesture {
                                                                homevOneViewModel
                                                                    .nextScreen = "ElectricalView"
                                                            }
                                                    }
                                                }
                                            }
                                        }
                                        .frame(width: getRelativeWidth(302.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(13.0))
                                        .padding(.leading, getRelativeWidth(22.0))
                                        VStack {
                                            ZStack {
                                                Image("img_image213")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(139.0),
                                                           height: getRelativeHeight(154.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 14.0,
                                                                               topRight: 14.0,
                                                                               bottomLeft: 14.0,
                                                                               bottomRight: 14.0))
                                                    .onTapGesture {
                                                        homevOneViewModel
                                                            .nextScreen = "Assembly2View"
                                                    }
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(139.0),
                                                   height: getRelativeHeight(154.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 14.0,
                                                                       topRight: 14.0,
                                                                       bottomLeft: 14.0,
                                                                       bottomRight: 14.0)
                                                    .fill(ColorConstants.Teal51))
                                            Text(StringConstants.kLblAssembly)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray903)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(71.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(12.0))
                                                .padding(.horizontal, getRelativeWidth(34.0))
                                        }
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeHeight(190.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.leading, getRelativeWidth(24.0))
                                        .padding(.trailing, getRelativeWidth(4.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(210.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(91.0))
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
                                               height: getRelativeHeight(23.0), alignment: .bottom)
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.bottom, getRelativeHeight(11.0))
                                        .padding(.leading, getRelativeWidth(16.0))
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
                                            homevOneViewModel.nextScreen = "PaintingView"
                                        }
                                        .frame(width: getRelativeWidth(83.0),
                                               height: getRelativeHeight(35.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                                bottomLeft: 17.5, bottomRight: 17.5)
                                                .stroke(ColorConstants.Gray200,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                                   bottomLeft: 17.5,
                                                                   bottomRight: 17.5)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.vertical, getRelativeHeight(7.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(344.0),
                                           height: getRelativeHeight(49.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.trailing, getRelativeWidth(9.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 2, id: \.self) { index in
                                                    Columnrectangle4282oneCell()
                                                        .onTapGesture {
                                                            homevOneViewModel
                                                                .nextScreen = "GeneralHandymanView"
                                                        }
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(353.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(29.0))
                                    HStack {
                                        VStack {
                                            ZStack {
                                                Image("img_image213_154x139")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(139.0),
                                                           height: getRelativeHeight(154.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 14.0,
                                                                               topRight: 14.0,
                                                                               bottomLeft: 14.0,
                                                                               bottomRight: 14.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(139.0),
                                                   height: getRelativeHeight(154.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 14.0,
                                                                       topRight: 14.0,
                                                                       bottomLeft: 14.0,
                                                                       bottomRight: 14.0)
                                                    .fill(ColorConstants.Teal51))
                                            Text(StringConstants.kMsgComercialOf)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(15.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray903)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(105.0),
                                                       height: getRelativeHeight(48.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(13.0))
                                                .padding(.leading, getRelativeWidth(18.0))
                                                .padding(.trailing, getRelativeWidth(15.0))
                                        }
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeHeight(215.0), alignment: .center)
                                        HStack(spacing: 0) {
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                LazyHStack {
                                                    ForEach(0 ... 2, id: \.self) { index in
                                                        Columnoffer1Cell()
                                                    }
                                                }
                                            }
                                        }
                                        .frame(width: getRelativeWidth(191.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.bottom, getRelativeHeight(13.0))
                                        .padding(.leading, getRelativeWidth(24.0))
                                        .padding(.trailing, getRelativeWidth(278.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(214.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(29.0))
                                }
                                .frame(width: getRelativeWidth(353.0),
                                       height: UIScreen.main.bounds.height, alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(22.0))
                                HStack {
                                    HStack {
                                        Divider()
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(20.0), alignment: .top)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
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
                                           height: getRelativeHeight(23.0), alignment: .bottom)
                                    .padding(.leading, getRelativeWidth(16.0))
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
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(35.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                            bottomLeft: 17.5, bottomRight: 17.5)
                                            .stroke(ColorConstants.Gray200,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                               bottomLeft: 17.5, bottomRight: 17.5)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.leading, getRelativeWidth(63.0))
                                    .padding(.trailing, getRelativeWidth(31.0))
                                }
                                .frame(width: getRelativeWidth(359.0),
                                       height: getRelativeHeight(46.0), alignment: .topTrailing)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.bottom, getRelativeHeight(759.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: UIScreen.main.bounds.height,
                                   alignment: .topLeading)
                        }
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.Gray51)
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: ElectricalView(),
                                       tag: "ElectricalView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: Homecleaning2View(),
                                       tag: "Homecleaning2View",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: GeneralHandymanView(),
                                       tag: "GeneralHandymanView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: Assembly2View(),
                                       tag: "Assembly2View",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: WindowTreatmentsView(),
                                       tag: "WindowTreatmentsView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: PaintingView(),
                                       tag: "PaintingView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: PlumbingView(),
                                       tag: "PlumbingView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: AllCategoriesView(),
                                       tag: "AllCategoriesView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: HomevThreeView(),
                                       tag: "HomevThreeView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationEmptyView(),
                                       tag: "NotificationEmptyView",
                                       selection: $homevOneViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.Gray51)
                .ignoresSafeArea()
                .customDialog(isShowing: $homevOneViewModel.isReferaFriendViewShow) {
                    ReferaFriendView(referaFriendViewModel: ReferaFriendViewModel(_isOpen: $homevOneViewModel
                            .isReferaFriendViewShow))
                } onTapOutside: { value in
                    if value {
                        homevOneViewModel.isReferaFriendViewShow = false
                    }
                }
            }
            .hideNavigationBar()
            if homevOneViewModel.isMovingViewShow {
                BottomSheetView(isOpen: $homevOneViewModel.isMovingViewShow, content: {
                    MovingView(movingViewModel: MovingViewModel(_isOpen: $homevOneViewModel
                            .isMovingViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct HomevOneView_Previews: PreviewProvider {
    static var previews: some View {
        HomevOneView()
    }
}
