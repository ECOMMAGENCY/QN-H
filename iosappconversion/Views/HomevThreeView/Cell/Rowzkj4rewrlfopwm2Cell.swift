import SwiftUI

struct Rowzkj4rewrlfopwm2Cell: View {
    var uiiconmorehoClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                ZStack {
                    Image("img_zkj4rewrlfopwm_1")
                        .resizable()
                        .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(116.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 8.56, topRight: 8.56, bottomLeft: 8.56,
                                                   bottomRight: 8.56))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(116.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.56, topRight: 8.56, bottomLeft: 8.56,
                                           bottomRight: 8.56)
                        .fill(ColorConstants.Gray401))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_star3")
                                .resizable()
                                .frame(width: getRelativeWidth(10.0),
                                       height: getRelativeWidth(12.0), alignment: .leading)
                                .scaledToFit()
                            Text(StringConstants.kLbl4887)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(15.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        Spacer()
                        Image("img_uiiconmoreho")
                            .resizable()
                            .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(3.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.vertical, getRelativeHeight(8.0))
                            .onTapGesture {
                                uiiconmorehoClick?()
                            }
                    }
                    .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    Text(StringConstants.kLblPainting)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray903)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Text(StringConstants.kLblPerHour)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLbl75)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(6.0))
                                .padding(.vertical, getRelativeHeight(4.0))
                                .foregroundColor(ColorConstants.Gray903)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.Teal100))
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                        }
                    })
                    .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.Teal100))
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(100.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(309.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct Rowzkj4rewrlfopwm2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowzkj4rewrlfopwm2Cell()
 }
 } */
