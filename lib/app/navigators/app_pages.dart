// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
/// and will be used in the material app.
/// Will be ignored for test since all are static values and would not change.
class AppPages {
  static var transitionDuration = const Duration(
    milliseconds: 550,
  );
  static const initial = Routes.signIn;

  static final pages = [
    GetPage<SplashView>(
      name: _Paths.splashScreen,
      transitionDuration: transitionDuration,
      page: () => SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<SignInView>(
      name: _Paths.signIn,
      transitionDuration: transitionDuration,
      page: () => SignInView(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<PhoneSignUpView>(
      name: _Paths.phoneSignUp,
      transitionDuration: transitionDuration,
      page: () => PhoneSignUpView(),
      binding: PhoneSignUpBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<CodeVerificationView>(
      name: _Paths.codeVerification,
      transitionDuration: transitionDuration,
      page: () => CodeVerificationView(),
      binding: CodeVerificationBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ForgotPasswordView>(
      name: _Paths.forgotPassword,
      transitionDuration: transitionDuration,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<PersonalDetailsView>(
      name: _Paths.personalDetails,
      transitionDuration: transitionDuration,
      page: () => PersonalDetailsView(),
      binding: PersonalDetailsBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
