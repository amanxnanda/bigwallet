import 'package:flutter/material.dart';
import 'package:get/get.dart';

// coverage:ignore-file
class TranslationsFile extends Translations {
  /// List of locales used in the application
  static const listOfLocales = <Locale>[
    Locale('en'),
  ];
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'appName': 'InstaCare',
          'somethingWentWrong': 'Something Went Wrong',
          'noInternet': 'No Internet',
          'okay': 'Okay',
          'enterDetails': 'Enter Details',
          'forgotPassword': 'Forgot Password ?',
          'login': 'Login',
          'orContinueWith': 'Or Continue With',
          'phone': 'Phone',
          'emailAddress': 'Email Address',
          'pleaseEnterValidEmail': 'Please enter valid Email',
          'password': 'Password',
          'continue': 'continue',
          'email': 'Email',
          'verify': 'Verify',
          'enterVerificationCode': 'Enter Verification\nCode',
          'verificationSendTo': 'Verification code has been send to',
          'resetPassword': 'Reset Password',
          'pleaseEnterEmail':
              'Please enter registered email to get password Reset link.',
          'emailNotLinked':
              'This email id is not linked with any sensire account, please try again with a correct email id.',
          'personalDetails': 'Personal Details',
          'changePhoto': 'Change Photo',
          'firstName': 'First Name',
          'lastName': 'Last Name',
          'phoneNumber': 'Phone Number',
          'verified': 'Verified',
          'dateOfBirth': 'Date of birth',
          'address': 'Address',
          'doYouDriveVehicle': 'Do you drive vehicle?*',
          'yes': 'Yes',
          'no': 'No',
          'uploadDrivingLicense': 'Upload driving license*',
          'gallery': 'Gallery',
          'camera': 'Camera',
          'selectOption': 'Select Option',
          'next': 'next',
          'pleaseEnterAddress': 'Please enter address',
          'pleaseEnterDOB': 'Please enter date of birth',
          'educationAndExperience': 'Education And\nExperience',
          'selectEducationLevel': 'Select Education Level*',
          'uploadCertificates': 'Upload Certificates',
          'mscNursing': 'Msc Nursing',
          'bscNursing': 'Bsc Nursing',
          'selectSkills': 'Select Skills',
          'validUpto': 'Valid Upto',
          'educationLevel': '+ Education Level',
          'competenceDetails': '+  Competence Details',
        },
      };
}
