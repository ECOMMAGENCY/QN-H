import SwiftUI

struct StRow1Cell: View {
    var interiorpaintiClick: (() -> Void)?
    var interiorpaintioneClick: (() -> Void)?
    var interiorpaintitwoClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack {
                    Image("img_interiorpainti_61")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        .onTapGesture {
                            interiorpaintiClick?()
                        }
                    Text(StringConstants.kMsgAirConditioner)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
                VStack {
                    Image("img_interiorpainti_62")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        .onTapGesture {
                            interiorpaintioneClick?()
                        }
                    Text(StringConstants.kMsgAirConditioner2)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(37.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_63")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.horizontal, getRelativeWidth(1.0))
                        .onTapGesture {
                            interiorpaintitwoClick?()
                        }
                    Text(StringConstants.kMsgCarpentryRep)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                }
                .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(30.0))
                .padding(.trailing, getRelativeWidth(4.0))
            }
            .frame(width: getRelativeWidth(343.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct StRow1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			StRow1Cell()
 }
 } */
