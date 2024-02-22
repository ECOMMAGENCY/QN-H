import SwiftUI

struct ItemCell: View {
    var binoneClick: (() -> Void)?
    var body: some View {
        HStack {
            Image("img_product_80x96")
                .resizable()
                .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(80.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0))
                .padding(.leading, getRelativeWidth(4.0))
            VStack {
                Text(StringConstants.kMsgDresserAssembl)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(171.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                Text(StringConstants.kLbl6200)
                    .font(FontScheme.kNumansRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.horizontal, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(171.0), height: getRelativeHeight(59.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(17.0))
            Image("img_bin")
                .resizable()
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(24.0))
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

/* struct ItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			ItemCell()
 }
 } */
