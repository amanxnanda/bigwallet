import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

/// A controller for the [PersonalDetailsView], to update the UI.
class PersonalDetailsController extends GetxController {
  /// focus node for address field
  final addressFocusNode = FocusNode();

  /// page controller for page view
  final PageController pageController = PageController();

  /// text editing controller for first name
  final firstNameController = TextEditingController();

  /// text editing controller for last name
  final lastNameController = TextEditingController();

  /// text editing controller for address
  final addressController = TextEditingController();

  /// text editing controller for email id
  final emailController = TextEditingController();

  /// text editing controller for date of birth
  final dobController = TextEditingController();

  /// text editing controller for phone number
  final phoneNumberController = TextEditingController();

  /// getting common service for image picking from device
  final CommonService _commonService = Get.find();

  /// user's image for [CircleAvatar]
  ImageProvider<Object>? get userImage => null;

  /// onTap change photo adjacent to user image
  void onChangePhoto() {}

  /// Error text for first name form field.
  String? firstNameErrorText;

  /// Error text for last name form field.
  String? lastNameErrorText;

  /// Error text for email form field.
  String? emailErrorText;

  /// Error text for phone form field.
  String? phoneErrortext;

  /// Error text for address form field
  String? addressErrorText;

  /// Error text for DOB form field
  String? dobErrorText;

  /// initial country code to be shown besided phone field
  String get initialCountryCode => 'CA';

  /// Country code selected by user
  String? _countryCode;

  /// phone number entered by user;
  String? _phoneNumber;

  /// country code entered by user
  String? get coutnryCode => _countryCode;

  /// phone number entered by user
  String? get phoneNumber => _phoneNumber;

  /// is next button enabled
  RxBool nextButtonEnabled = false.obs;

  /// Email id of the user
  String emailId = '';

  /// email passed validation or not
  RxBool isEmailVerified = false.obs;

  /// Is true when the email is valid.
  RxBool isEmailValid = true.obs;

  /// is true when phone number's length is 10
  RxBool isPhoneNumberValid = true.obs;

  /// called when the user changes first name
  void onFirstNameChange(String firstName) {
    if (firstName.isEmpty) {
      firstNameErrorText = 'Please enter first name';
      update();
    }
  }

  /// called when the user changes last name
  void onLastNameChange(String lastName) {
    if (lastName.isEmpty) {
      lastNameErrorText = 'Please enter last name';
      update();
    }
  }

  /// Called when the user initiates a change to the TextField's value: when they have inserted or deleted text.
  void onPhoneChange(PhoneNumber phoneNumber) {
    if (phoneNumber.number!.isEmpty) {
      phoneErrortext = 'Please enter phone number';
      update();
    } else {
      _phoneNumber = phoneNumber.number;
      _countryCode = phoneNumber.countryCode;
      isPhoneNumberValid.value = _phoneNumber?.length == 10;
    }
  }

  /// called when the user changes country code
  void onCountryChanged(PhoneNumber phoneNumber) {
    _countryCode = phoneNumber.countryCode;
  }

  /// Check if the email is valid or not.
  void checkIfEmailIsValid(String email) {
    isEmailValid.value = Utility.emailValidator(email);
    emailId = email;
    emailErrorText =
        isEmailValid.value ? null : StringConstants.pleaseEnterValidEmail;
    update();
  }

  /// Called when the user initiates a change to the address form field value: when they have inserted or deleted text.
  void onAdrressChange(String address) {
    if (address.isEmpty) {
      addressErrorText = StringConstants.pleaseEnterAddress;
    } else {
      addressErrorText = null;
    }
    update();
  }

  /// Called when the user initiates a change to the dob form field value: when they have inserted or deleted text.
  void onDOBchange(String dob) {
    if (dob.isEmpty) {
      dobErrorText = StringConstants.pleaseEnterDOB;
    } else {
      dobErrorText = null;
    }
    update();
  }

  /// scroll controller for list view
  final scrollController = ScrollController();

  /// variable to keep track of changing value
  final _yesOrNo = YesOrNo.yes.obs;

  /// group value for both radio buttons
  YesOrNo? get groupValue => _yesOrNo.value;

  /// called when user clicks on yes no radio tile
  void onYesOrNoChanged(YesOrNo? yesOrNo) {
    addressFocusNode.unfocus();
    _yesOrNo(yesOrNo);
    update();
    if (yesOrNo == YesOrNo.yes) {
      scrollController.animateTo(
        200.0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  /// path of image selected from devices
  late String selectedImagePath;

  /// is image picked from device or not
  bool imagePicked = false;

  /// Get image from gallery.
  void getImagePathFromDevice() async {
    selectedImagePath = await _commonService.getImageFromDevice();
    if (selectedImagePath.isNotEmpty) {
      imagePicked = true;
    }
    update();
  }

  /// scroll duration for navigating from one page to another
  final _defaultPageDuration = const Duration(seconds: 2);

  /// current page of page view which starts from zero
  int currentPage = 0;

  /// onPressed for NextButton
  void onNext() {
    pageController.animateToPage(
      ++currentPage,
      duration: _defaultPageDuration,
      curve: Curves.easeInOut,
    );
  }

  /// is next button enabled
  bool get isNextButtonEnabled =>
      firstNameController.text.isNotEmpty &&
      lastNameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      isEmailValid.value &&
      dobController.text.isNotEmpty &&
      addressController.text.isNotEmpty &&
      phoneNumberController.text.isNotEmpty &&
      isPhoneNumberValid.value;

  /// ` **************** Educational Page Widget *************************** `////

  /// to dispose controllers
  @override
  void dispose() {
    pageController.dispose();
    scrollController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    dobController.dispose();
    addressController.dispose();
    super.dispose();
  }
}
