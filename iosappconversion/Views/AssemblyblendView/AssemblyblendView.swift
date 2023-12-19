import SwiftUI

struct AssemblyblendView: View {
    @StateObject var assemblyblendViewModel = AssemblyblendViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .leading) {
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
                                    assemblyblendViewModel.nextScreen = "AllCategoriesView"
                                }
                            Spacer()
                            Image("img_icon24pxnotif")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    assemblyblendViewModel.nextScreen = "NotificationEmptyView"
                                }
                        }
                        .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        ZStack(alignment: .center) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: UIScreen.main.bounds.height,
                                       alignment: .topLeading)
                                .background(ColorConstants.Gray51)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(373.0),
                                       height: UIScreen.main.bounds.height, alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.horizontal, getRelativeWidth(1.0))
                            VStack(alignment: .leading, spacing: 0) {
                                VStack {
                                    HStack {
                                        Divider()
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .bottom)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0)
                                                    .fill(ColorConstants.DeepPurple100))
                                            .padding(.top, getRelativeHeight(5.0))
                                        Text(StringConstants.kLblAllServices)
                                            .font(FontScheme
                                                .kInterSemiBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray903)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(99.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(113.0),
                                           height: getRelativeHeight(25.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0))
                                }
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(26.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0))
                                .padding(.trailing)
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_interiorpainti_12")
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
                                        Text(StringConstants.kLblDeskAssembly)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(62.0),
                                                   height: getRelativeHeight(34.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(17.0))
                                            .padding(.horizontal, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(19.0))
                                    HStack {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_interiorpainti_13")
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
                                            Text(StringConstants.kMsgDresserAssembl)
                                                .font(FontScheme
                                                    .kInterBold(size: getRelativeHeight(13.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Bluegray800)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(62.0),
                                                       height: getRelativeHeight(34.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(17.0))
                                                .padding(.horizontal, getRelativeWidth(4.0))
                                        }
                                        .frame(width: getRelativeWidth(72.0),
                                               height: getRelativeHeight(125.0), alignment: .center)
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_interiorpainti_73x54")
                                                .resizable()
                                                .frame(width: getRelativeWidth(54.0),
                                                       height: getRelativeHeight(73.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 27.25,
                                                                           topRight: 27.25,
                                                                           bottomLeft: 27.25,
                                                                           bottomRight: 27.25))
                                                .onTapGesture {
                                                    assemblyblendViewModel
                                                        .nextScreen = "ShoppingCartElevenView"
                                                }
                                            Text(StringConstants.kMsgEquipmentAssem)
                                                .font(FontScheme
                                                    .kInterBold(size: getRelativeHeight(13.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Bluegray800)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(51.0),
                                                       height: getRelativeHeight(35.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(16.0))
                                        }
                                        .frame(width: getRelativeWidth(54.0),
                                               height: getRelativeHeight(125.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(42.0))
                                    }
                                    .frame(width: getRelativeWidth(169.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(66.0))
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(125.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.leading, getRelativeWidth(6.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack {
                                        LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(),
                                                            SwiftUI.GridItem()],
                                                  spacing: 65.0) {
                                            ForEach(0 ... 5, id: \.self) { index in
                                                ColumninteriorpaintithreeCell()
                                            }
                                        }
                                    }
                                }
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                .fixedSize(horizontal: false, vertical: false)
                                HStack {
                                    VStack(alignment: .trailing, spacing: 0) {
                                        Image("img_interiorpainti_20")
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
                                            .padding(.leading)
                                            .padding(.leading)
                                            .padding(.trailing, getRelativeWidth(4.0))
                                        Text(StringConstants.kMsgWindowBlindI)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                    }
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    Spacer()
                                    VStack {
                                        Image("img_interiorpainti_21")
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
                                            .padding(.horizontal, getRelativeWidth(14.0))
                                        Text(StringConstants.kMsgWindowCurtain)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(100.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                    }
                                    .frame(width: getRelativeWidth(100.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_interiorpainti_73x71")
                                            .resizable()
                                            .frame(width: getRelativeWidth(71.0),
                                                   height: getRelativeHeight(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 35.75,
                                                                       topRight: 35.75,
                                                                       bottomLeft: 35.75,
                                                                       bottomRight: 35.75))
                                        Text(StringConstants.kMsgWindowTreatme)
                                            .font(FontScheme
                                                .kInterSemiBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(70.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                            .padding(.horizontal, getRelativeWidth(1.0))
                                    }
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(125.0), alignment: .center)
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.horizontal, getRelativeWidth(19.0))
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_interiorpainti_22")
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
                                        Text(StringConstants.kMsgWindowInstall)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(69.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                            .padding(.horizontal, getRelativeWidth(1.0))
                                    }
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(27.0))
                                    Spacer()
                                    VStack {
                                        Image("img_interiorpainti_73x73")
                                            .resizable()
                                            .frame(width: getRelativeWidth(73.0),
                                                   height: getRelativeWidth(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .clipShape(Circle())
                                            .padding(.horizontal, getRelativeWidth(18.0))
                                        Text(StringConstants.kMsgWindowShadeI)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(110.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                    }
                                    .frame(width: getRelativeWidth(110.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    Spacer()
                                    VStack {
                                        Image("img_interiorpainti_23")
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
                                        Text(StringConstants.kMsgKitchenCleani)
                                            .font(FontScheme
                                                .kInterBold(size: getRelativeHeight(13.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Bluegray800)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(55.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(16.0))
                                            .padding(.horizontal, getRelativeWidth(8.0))
                                    }
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(125.0), alignment: .center)
                                    .padding(.trailing, getRelativeWidth(19.0))
                                }
                                .frame(width: getRelativeWidth(362.0),
                                       height: getRelativeHeight(125.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(24.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(791.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(117.55))
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
                    NavigationLink(destination: ShoppingCartElevenView(),
                                   tag: "ShoppingCartElevenView",
                                   selection: $assemblyblendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AllCategoriesView(),
                                   tag: "AllCategoriesView",
                                   selection: $assemblyblendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $assemblyblendViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray51)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct AssemblyblendView_Previews: PreviewProvider {
    static var previews: some View {
        AssemblyblendView()
    }
}
