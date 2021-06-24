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
    GetPage<SignInView>(
      name: _Paths.signIn,
      transitionDuration: transitionDuration,
      page: () => SignInView(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<LogInView>(
      name: _Paths.logIn,
      transitionDuration: transitionDuration,
      page: () => LogInView(),
      binding: LogInBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ForgotPasswordView>(
      name: _Paths.forgotPassword,
      transitionDuration: transitionDuration,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
