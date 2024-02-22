import SwiftUI

struct NdRow3Cell: View {
    var interiorpaintiClick: (() -> Void)?
    var interiorpaintioneClick: (() -> Void)?
    var interiorpaintitwoClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack(alignment: .trailing, spacing: 0) {
                    Image("img_interiorpainti_24")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.leading)
                        .padding(.leading)
                        .padding(.trailing, getRelativeWidth(4.0))
                        .onTapGesture {
                            interiorpaintiClick?()
                        }
                    Text(StringConstants.kMsgWindowBlindI)
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
                .padding(.leading, getRelativeWidth(4.0))
                VStack {
                    Image("img_interiorpainti_25")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.leading, getRelativeWidth(15.0))
                        .padding(.trailing, getRelativeWidth(12.0))
                        .onTapGesture {
                            interiorpaintioneClick?()
                        }
                    Text(StringConstants.kMsgWindowCurtain2)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(41.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_10")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintitwoClick?()
                        }
                    Text(StringConstants.kMsgWindowTreatme)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(1.0))
                }
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(38.0))
            }
            .frame(width: getRelativeWidth(339.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct NdRow3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			NdRow3Cell()
 }
 } */
