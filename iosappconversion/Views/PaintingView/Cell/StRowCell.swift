import SwiftUI

struct StRowCell: View {
    var interiorpaintiClick: (() -> Void)?
    var interiorpaintioneClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_32")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintiClick?()
                        }
                    Text(StringConstants.kMsgBaseboardPaint)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.horizontal, getRelativeWidth(3.0))
                }
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(19.0))
                VStack {
                    Image("img_interiorpainti_32")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .onTapGesture {
                            interiorpaintioneClick?()
                        }
                    Text(StringConstants.kMsgCrownMoldingP)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(49.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Image("img_interiorpainti_33")
                        .resizable()
                        .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 27.25, topRight: 27.25,
                                                   bottomLeft: 27.25, bottomRight: 27.25))
                    Text(StringConstants.kLblDoorPainting)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(31.0))
            }
            .frame(width: getRelativeWidth(319.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct StRowCell_Previews: PreviewProvider {

 static var previews: some View {
 			StRowCell()
 }
 } */
