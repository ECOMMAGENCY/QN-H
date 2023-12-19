import SwiftUI

struct ColumnofferCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 0) {
                ZStack(alignment: .topLeading) {
                    Image("img_image214")
                        .resizable()
                        .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(154.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0))
                    Text(StringConstants.kLbl10Off)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(8.0))
                        .foregroundColor(ColorConstants.Gray54)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .background(ColorConstants.RedA200)
                        .shadow(color: ColorConstants.PurpleA10033, radius: 15, x: 0, y: 2)
                        .padding(.bottom, getRelativeHeight(123.5))
                        .padding(.trailing, getRelativeWidth(66.5))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(154.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0)
                        .fill(ColorConstants.Amber200))
                Text(StringConstants.kMsgWindowTreatmen)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Bluegray903)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(2.0))
            }
            .frame(width: getRelativeWidth(137.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct ColumnofferCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnofferCell()
 }
 } */
