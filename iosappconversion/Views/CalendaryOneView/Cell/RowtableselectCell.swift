import SwiftUI

struct RowtableselectCell: View {
    var body: some View {
        HStack {
            Text(StringConstants.kLbl4)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray9009b)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
            Text(StringConstants.kLbl5)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray9009b)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(42.0))
            Text(StringConstants.kLbl6)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray9009b)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(41.0))
            Text(StringConstants.kLbl7)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray9009b)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(42.0))
            Text(StringConstants.kLbl8)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray9009b)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(42.0))
        }
        .frame(width: getRelativeWidth(213.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowtableselectCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowtableselectCell()
 }
 } */
