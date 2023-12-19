import SwiftUI

struct Rowinteriorpaintione1Cell: View {
    var binoneClick: (() -> Void)?
    var body: some View {
        HStack {
            Image("img_interiorpainti_73x110")
                .resizable()
                .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(73.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0))
                .padding(.leading, getRelativeWidth(6.0))
            ZStack(alignment: .bottomLeading) {
                Text(StringConstants.kMsgLivingRoommC)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(6.0))
                    .padding(.leading, getRelativeWidth(46.0))
                Text(StringConstants.kLbl3800)
                    .font(FontScheme.kNumansRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(45.21))
                    .padding(.trailing, getRelativeWidth(125.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(63.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(9.0))
            Image("img_bin")
                .resizable()
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(11.0))
                .padding(.trailing, getRelativeWidth(15.0))
                .onTapGesture {
                    binoneClick?()
                }
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0)
                .fill(ColorConstants.Gray100))
        .shadow(color: ColorConstants.Black90026, radius: 5, x: 1, y: 2)
        .hideNavigationBar()
    }
}

/* struct Rowinteriorpaintione1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowinteriorpaintione1Cell()
 }
 } */
