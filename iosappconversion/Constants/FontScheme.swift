import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kPlusJakartaSansMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlusJakartaSansMedium, size: size)
    }

    static func kPlusJakartaSansRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlusJakartaSansRomanBold, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kSFProTextBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextBold, size: size)
    }

    static func kSFProTextSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextSemibold, size: size)
    }

    static func kMontserratRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanMedium, size: size)
    }

    static func kNTR(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kNTR, size: size)
    }

    static func kNumansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kNumansRegular, size: size)
    }

    static func kRobotoMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoMedium, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kPlusJakartaSansMedium":
            result = self.kPlusJakartaSansMedium(size: size)
        case "kPlusJakartaSansRomanBold":
            result = self.kPlusJakartaSansRomanBold(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kSFProTextBold":
            result = self.kSFProTextBold(size: size)
        case "kSFProTextSemibold":
            result = self.kSFProTextSemibold(size: size)
        case "kMontserratRomanMedium":
            result = self.kMontserratRomanMedium(size: size)
        case "kNTR":
            result = self.kNTR(size: size)
        case "kNumansRegular":
            result = self.kNumansRegular(size: size)
        case "kRobotoMedium":
            result = self.kRobotoMedium(size: size)
        default:
            result = self.kInterSemiBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kPlusJakartaSansMedium: String = "PlusJakartaSans-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPlusJakartaSansRomanBold: String = "PlusJakartaSansRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextBold: String = "SFProText-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextSemibold: String = "SFProText-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanMedium: String = "MontserratRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kNTR: String = "NTR"
        /**
         * Please Add this fonts Manually
         */
        static let kNumansRegular: String = "Numans-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoMedium: String = "Roboto-Medium"
    }
}
