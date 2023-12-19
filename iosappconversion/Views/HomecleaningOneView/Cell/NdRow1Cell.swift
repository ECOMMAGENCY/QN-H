import SwiftUI

struct NdRow1Cell: View {
    var interiorpaintioneClick: (() -> Void)?
    var body: some View {
        HStack {
            VStack {
                Image("img_interiorpainti_5")
                    .resizable()
                    .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                               bottomRight: 36.0))
                Text(StringConstants.kMsgKitchenCleani)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(35.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.horizontal, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
            VStack(alignment: .leading, spacing: 0) {
                Image("img_interiorpainti_6")
                    .resizable()
                    .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                               bottomRight: 36.0))
                    .padding(.horizontal, getRelativeWidth(3.0))
                    .onTapGesture {
                        interiorpaintioneClick?()
                    }
                Text(StringConstants.kMsgLivingRoomCl)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(35.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
            }
            .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(125.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(58.0))
            VStack(alignment: .trailing, spacing: 0) {
                Image("img_interiorpainti_7")
                    .resizable()
                    .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                               bottomRight: 36.0))
                    .padding(.leading)
                    .padding(.leading)
                Text(StringConstants.kMsgLocalCleaning)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(35.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
            }
            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(125.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(39.0))
        }
        .frame(width: getRelativeWidth(339.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct NdRow1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			NdRow1Cell()
 }
 } */
