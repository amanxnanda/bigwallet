import 'package:big_wallet/app/app.dart';

/// model class for [CountryPhoneField]
class PhoneNumber {
  PhoneNumber({
    required this.countryISOCode,
    required this.countryCode,
    required this.number,
  });

  String? countryISOCode;
  String? countryCode;
  String? number;

  String get completeNumber => countryCode! + number!;
}
