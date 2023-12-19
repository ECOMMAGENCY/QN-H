import SwiftUI

struct Item5Cell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack(alignment: .leading) {
                    Image("img_product_2")
                        .resizable()
                        .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(80.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                        .padding(.trailing, getRelativeWidth(3.73))
                    Image("img_interiorpainti_73x100")
                        .resizable()
                        .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .scaledToFit()
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(80.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblGrillAssembly2)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl6200)
                        .font(FontScheme.kNumansRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.leading, getRelativeWidth(4.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(62.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(80.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(4.0))
            Image("img_bin")
                .resizable()
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(56.0))
                .padding(.trailing, getRelativeWidth(15.0))
        }
        .frame(width: getRelativeWidth(340.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                   bottomRight: 15.0)
                .fill(ColorConstants.Gray100))
        .shadow(color: ColorConstants.Black90026, radius: 5, x: 1, y: 2)
        .hideNavigationBar()
    }
}

/* struct Item5Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Item5Cell()
 }
 } */
