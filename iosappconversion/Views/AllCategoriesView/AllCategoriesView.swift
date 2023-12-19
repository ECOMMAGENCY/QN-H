import SwiftUI

struct AllCategoriesView: View {
    @StateObject var allCategoriesViewModel = AllCategoriesViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        ZStack(alignment: .bottomLeading) {
                            VStack {
                                VStack {
                                    HStack {
                                        HStack {
                                            Image("img_union_gray_904")
                                                .resizable()
                                                .frame(width: getRelativeWidth(18.0),
                                                       height: getRelativeHeight(15.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblSearchCategory)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray501)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(111.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(21.0))
                                        }
                                        .frame(width: getRelativeWidth(151.0),
                                               height: getRelativeHeight(17.0), alignment: .bottom)
                                        .padding(.top, getRelativeHeight(16.0))
                                        .padding(.bottom, getRelativeHeight(13.0))
                                        .padding(.leading, getRelativeWidth(14.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Image("img_search")
                                        })
                                        .frame(width: getRelativeWidth(31.0),
                                               height: getRelativeHeight(32.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.DeepPurpleA200))
                                        .padding(.vertical, getRelativeHeight(8.0))
                                        .padding(.trailing, getRelativeWidth(8.0))
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Gray101,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Gray53))
                                    .padding(.vertical, getRelativeHeight(12.0))
                                    .padding(.horizontal, getRelativeWidth(13.0))
                                }
                                .frame(width: getRelativeWidth(371.0),
                                       height: getRelativeHeight(72.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                                .padding(.vertical, getRelativeHeight(70.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: UIScreen.main.bounds.height,
                                   alignment: .topLeading)
                            .background(ColorConstants.Gray51)
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
                                    .padding(.leading, getRelativeWidth(74.0))
                                Image("img_icon24pxnotif")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(74.0))
                                    .onTapGesture {
                                        allCategoriesViewModel.nextScreen = "NotificationEmptyView"
                                    }
                                Image("img_icon24pxmessa")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(71.0))
                                    .padding(.trailing, getRelativeWidth(38.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(72.0),
                                   alignment: .bottomLeading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.top, getRelativeHeight(1015.0))
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    HStack {
                                        Divider()
                                            .frame(width: getRelativeWidth(3.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 1.745,
                                                                       topRight: 1.745,
                                                                       bottomLeft: 1.745,
                                                                       bottomRight: 1.745)
                                                    .fill(ColorConstants.DeepPurple100))
                                        Text(StringConstants.kLblAllServices)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(16.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray903)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(9.0))
                                    }
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.bottom, getRelativeHeight(7.0))
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image("img_frame223")
                                    })
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeWidth(36.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Gray52))
                                    .shadow(color: ColorConstants.Black90019, radius: 8, x: 0, y: 4)
                                }
                                .frame(width: getRelativeWidth(312.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(3.0),
                                               height: getRelativeHeight(20.0), alignment: .top)
                                        .background(RoundedCorners(topLeft: 1.745, topRight: 1.745,
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
                                       height: getRelativeHeight(21.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                Rowzkj4rewrlfopwmCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(312.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(673.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.bottom, getRelativeHeight(601.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            .padding(.trailing, getRelativeWidth(21.0))
                            ZStack(alignment: .leading) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(312.0),
                                           height: getRelativeHeight(395.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.bottom, getRelativeHeight(266.0))
                                VStack {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 4, id: \.self) { index in
                                                    Rowzkj4rewrlfopwmoneCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(312.0), alignment: .leading)
                                }
                                .frame(width: getRelativeWidth(312.0),
                                       height: getRelativeHeight(661.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(661.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(680.0))
                            .padding(.leading, getRelativeWidth(26.0))
                            .padding(.trailing, getRelativeWidth(37.0))
                            HStack {
                                HStack {
                                    Image("img_union_deep_purple_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            allCategoriesViewModel.nextScreen = "HomevOneView"
                                        }
                                    Spacer()
                                    Image("img_iconoutline")
                                        .resizable()
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                    Image("img_icon24pxnotif")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            allCategoriesViewModel
                                                .nextScreen = "NotificationEmptyView"
                                        }
                                }
                                .frame(width: getRelativeWidth(289.0),
                                       height: getRelativeHeight(22.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.bottom, getRelativeHeight(1269.0))
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
                    NavigationLink(destination: WindowTreatmentsView(),
                                   tag: "WindowTreatmentsView",
                                   selection: $allCategoriesViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomevOneView(),
                                   tag: "HomevOneView",
                                   selection: $allCategoriesViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationEmptyView(),
                                   tag: "NotificationEmptyView",
                                   selection: $allCategoriesViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Assembly2View(),
                                   tag: "Assembly2View",
                                   selection: $allCategoriesViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: GeneralHandymanView(),
                                   tag: "GeneralHandymanView",
                                   selection: $allCategoriesViewModel.nextScreen,
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

struct AllCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        AllCategoriesView()
    }
}
