import SwiftUI

struct PaysuccessfullyView: View {
    @StateObject var paysuccessfullyViewModel = PaysuccessfullyViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblOrder)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray907)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(49.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                            HStack {
                                Image("img_vector_green_700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(1.0))
                                Text(StringConstants.kMsgYourOrderHas2)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray907)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(183.0),
                                           height: getRelativeHeight(44.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(12.0))
                            }
                            .onTapGesture {
                                paysuccessfullyViewModel.isUpcomingEmptyViewShow = true
                            }
                            .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            Text(StringConstants.kLblOk)
                                .font(FontScheme.kSFProTextBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray907)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(21.0))
                                .padding(.horizontal, getRelativeWidth(30.0))
                        }
                        .frame(width: getRelativeWidth(320.0), height: getRelativeHeight(170.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                                   bottomRight: 15.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.vertical, getRelativeHeight(279.0))
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                            .fill(ColorConstants.Black9007f))
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            if paysuccessfullyViewModel.isUpcomingEmptyViewShow {
                BottomSheetView(isOpen: $paysuccessfullyViewModel.isUpcomingEmptyViewShow,
                                content: {
                                    UpcomingEmptyView(upcomingEmptyViewModel: UpcomingEmptyViewModel(_isOpen: $paysuccessfullyViewModel
                                            .isUpcomingEmptyViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct PaysuccessfullyView_Previews: PreviewProvider {
    static var previews: some View {
        PaysuccessfullyView()
    }
}
