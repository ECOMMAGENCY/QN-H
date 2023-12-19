import SwiftUI

struct Columninteriorpaintithree2Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_interiorpainti_14")
                .resizable()
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(73.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                           bottomRight: 36.0))
            Text(StringConstants.kLblGrillAssembly)
                .font(FontScheme.kInterBold(size: getRelativeHeight(13.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Bluegray800)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(35.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(4.0))
        }
        .frame(width: getRelativeWidth(70.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Columninteriorpaintithree2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columninteriorpaintithree2Cell()
 }
 } */
