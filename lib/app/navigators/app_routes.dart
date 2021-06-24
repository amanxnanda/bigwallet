// coverage:ignore-file
part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class Routes {
  static const signIn = _Paths.signIn;
  static const logIn = _Paths.logIn;

}

abstract class _Paths {
 
  static const signIn = '/sign-in-screen';
  static const logIn = '/log-in-screen';

}
