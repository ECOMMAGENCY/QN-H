import SwiftUI

struct Item19Cell: View {
    var body: some View {
        HStack {
            Image("img_product_8")
                .resizable()
                .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(80.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0))
                .padding(.leading, getRelativeWidth(4.0))
            ZStack(alignment: .bottomLeading) {
                Text(StringConstants.kMsgWindowCurtain)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray800)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(14.0))
                    .padding(.leading, getRelativeWidth(20.46))
                Text(StringConstants.kLbl6200)
                    .font(FontScheme.kNumansRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(53.21))
                    .padding(.trailing, getRelativeWidth(121.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(71.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(25.0))
            Image("img_bin")
                .resizable()
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.horizontal, getRelativeWidth(15.0))
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0)
                .fill(ColorConstants.Gray100))
        .shadow(color: ColorConstants.Black90026, radius: 5, x: 1, y: 2)
        .hideNavigationBar()
    }
}

/* struct Item19Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Item19Cell()
 }
 } */
