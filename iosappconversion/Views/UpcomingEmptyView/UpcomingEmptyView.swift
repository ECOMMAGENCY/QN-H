import SwiftUI

struct UpcomingEmptyView: View {
    @StateObject var upcomingEmptyViewModel = UpcomingEmptyViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group34599")
                        .resizable()
                        .frame(width: getRelativeWidth(85.0), height: getRelativeWidth(85.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(74.0))
                        .padding(.horizontal, getRelativeWidth(37.0))
                    Text(StringConstants.kMsgNoUpcomingOrd)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray903)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(35.0))
                        .padding(.horizontal, getRelativeWidth(37.0))
                    Text(StringConstants.kMsgCurrentlyYouD)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(37.0))
                    Button(action: {
                        upcomingEmptyViewModel.nextScreen = "CalendaryOneView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblBooking)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(22.0))
                                .padding(.vertical, getRelativeHeight(14.0))
                                .foregroundColor(ColorConstants.Gray52)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.LightBlue300))
                                .padding(.vertical, getRelativeHeight(28.0))
                                .padding(.horizontal, getRelativeWidth(37.0))
                        }
                    })
                    .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.LightBlue300))
                    .padding(.vertical, getRelativeHeight(28.0))
                    .padding(.horizontal, getRelativeWidth(37.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(502.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.WhiteA700))
                Group {
                    NavigationLink(destination: CalendaryOneView(),
                                   tag: "CalendaryOneView",
                                   selection: $upcomingEmptyViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct UpcomingEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEmptyView()
    }
}
