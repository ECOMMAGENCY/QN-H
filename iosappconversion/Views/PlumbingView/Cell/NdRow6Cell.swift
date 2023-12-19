import SwiftUI

struct NdRow6Cell: View {
    var interiorpaintiClick: (() -> Void)?
    var interiorpaintioneClick: (() -> Void)?
    var interiorpaintitwoClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack {
                    Image("img_interiorpainti_55")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintiClick?()
                        }
                    Text(StringConstants.kLblDrainRepair)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(12.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_56")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintioneClick?()
                        }
                    Text(StringConstants.kMsgFaucetInstall)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.horizontal, getRelativeWidth(1.0))
                }
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(61.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_57")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.leading, getRelativeWidth(5.0))
                        .onTapGesture {
                            interiorpaintitwoClick?()
                        }
                    Text(StringConstants.kMsgSinkReplaceme)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(45.0))
            }
            .frame(width: getRelativeWidth(339.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct NdRow6Cell_Previews: PreviewProvider {

 static var previews: some View {
 			NdRow6Cell()
 }
 } */
