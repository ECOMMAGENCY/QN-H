import SwiftUI

struct NdRow4Cell: View {
    var interiorpaintiClick: (() -> Void)?
    var interiorpaintioneClick: (() -> Void)?
    var interiorpaintitwoClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack {
                    Image("img_interiorpainti_40")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.horizontal, getRelativeWidth(12.0))
                        .onTapGesture {
                            interiorpaintiClick?()
                        }
                    Text(StringConstants.kMsgHangingPicture)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_interiorpainti_41")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintioneClick?()
                        }
                    Text(StringConstants.kMsgKnobsInstalla)
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
                .padding(.leading, getRelativeWidth(44.0))
                VStack {
                    Image("img_interiorpainti_42")
                        .resizable()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .onTapGesture {
                            interiorpaintitwoClick?()
                        }
                    Text(StringConstants.kLblLightFixtures)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(35.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                }
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(125.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(50.0))
            }
            .frame(width: getRelativeWidth(339.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct NdRow4Cell_Previews: PreviewProvider {

 static var previews: some View {
 			NdRow4Cell()
 }
 } */
