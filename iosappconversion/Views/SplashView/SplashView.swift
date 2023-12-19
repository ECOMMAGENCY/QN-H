import SwiftUI

struct SplashView: View {
    @StateObject var splashViewModel = SplashViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("img_whatsappimage")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(382.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .hideNavigationBar()
                .onTapGesture {
                    splashViewModel.nextScreen = "OnboardingOneView"
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingOneView(),
                                   tag: "OnboardingOneView",
                                   selection: $splashViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashViewModel.nextScreen = "OnboardingOneView"
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
