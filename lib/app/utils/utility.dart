import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

// coverage:ignore-file
abstract class Utility {
  // coverage:ignore-start
  static void printDLog(String message) {
    Logger().d('${StringConstants.appName}: $message');
  }

  /// Print info log.
  ///
  /// [message] : The message which needed to be print.
  static void printILog(String message) {
    Logger().i('${StringConstants.appName}: $message');
  }

  /// Print error log.
  ///
  /// [message] : The message which needed to be print.
  static void printELog(String message) {
    Logger().e('${StringConstants.appName}: $message');
  }

  static bool emailValidator(String email) => EmailValidator.validate(email);

  /// Returns true if the internet connection is available.
  static Future<bool> isNetworkAvailable() async =>
      await InternetConnectionChecker().hasConnection;

  /// Print the details of the [response].
  static void printResponseDetails(Response? response) {
    if (response != null) {
      var isOkay = response.isOk;
      var statusCode = response.statusCode;
      var statusText = response.statusText;
      var method = response.request?.method ?? '';
      var path = response.request?.url.path ?? '';
      var query = response.request?.url.queryParameters ?? '';
      if (isOkay) {
        printILog(
            'Path: $path, Method: $method, Status Text: $statusText, Status Code: $statusCode, Query $query');
      } else {
        printELog(
            'Path: $path, Method: $method, Status Text: $statusText, Status Code: $statusCode, Query $query');
      }
    }
  }

  /// Show no internet dialog if there is no
  /// internet available.
  static void showNoInternetDialog() {
    closeDialog();
    Get.dialog<void>(
      NoInternetWidget(),
      barrierDismissible: false,
    );
  }

  /// Close any open dialog.
  static void closeDialog() {
    if (Get.isDialogOpen ?? false) Get.back<void>();
  }

  /// Close any open snackbar
  static void closeSnackbar() {
    if (Get.isSnackbarOpen ?? false) Get.back<void>();
  }

  /// Show a message to the user.
  ///
  /// [message] : Message you need to show to the user.
  /// [messageType] : Type of the message for different background color.
  /// [onTap] : An event for onTap.
  /// [actionName] : The name for the action.

  static void showMessage(String? message, MessageType messageType,
      Function()? onTap, String actionName) {
    if (message == null || message.isEmpty) return;
    closeDialog();
    closeSnackbar();
    var backgroundColor = Colors.black;
    switch (messageType) {
      case MessageType.error:
        backgroundColor = Colors.red;
        break;
      case MessageType.information:
        backgroundColor = Colors.black.withOpacity(0.3);
        break;
      case MessageType.success:
        backgroundColor = Colors.green;
        break;
      default:
        backgroundColor = Colors.black;
        break;
    }
    Future.delayed(
      const Duration(seconds: 0),
      () {
        Get.rawSnackbar(
          messageText: Text(
            message,
            style: Styles.white15,
          ),
          mainButton: TextButton(
            onPressed: onTap ?? Get.back,
            child: Text(
              actionName,
              style: Styles.white14,
            ),
          ),
          backgroundColor: backgroundColor,
          margin: Dimens.edgeInsets15_15_15_15,
          borderRadius: Dimens.ten + Dimens.five,
          snackStyle: SnackStyle.FLOATING,
        );
      },
    );
  }

  /// Handle exception and perform different operations
  static void handleErrors(dynamic exception) {
    closeDialog();
    switch (exception.runtimeType) {
      case NetworkException:
      case DataException:
        showMessage(
          exception.toString(),
          MessageType.error,
          null,
          StringConstants.okay,
        );
        break;
      default:
        printILog(exception.toString());
        showMessage(
          StringConstants.somethingWentWrong,
          MessageType.error,
          null,
          StringConstants.okay,
        );
    }
  }

  /// Shows a bottom sheet with gallery and camera option
  /// for the user to choose from where the image must be picked.
  static Future<ImageOption?> getImage() => Get.bottomSheet<ImageOption>(
        ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            AppBar(
              leading: IconButton(
                onPressed: Get.back,
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
              elevation: Dimens.zero,
              backgroundColor: ColorsValue.transparent,
              centerTitle: true,
              title: Text(StringConstants.selectOption, style: Styles.black16),
            ),
            ListTile(
              leading: const Icon(
                Icons.image,
                color: ColorsValue.primaryColor,
              ),
              title: Text(
                StringConstants.gallery,
                style: Styles.black18,
              ),
              onTap: () {
                Get.back(
                  result: ImageOption.gallery,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera,
                color: ColorsValue.primaryColor,
              ),
              title: Text(
                StringConstants.camera,
                style: Styles.black18,
              ),
              onTap: () {
                Get.back(
                  result: ImageOption.camera,
                );
              },
            ),
          ],
        ),
        backgroundColor: ColorsValue.imagePickerBgColor,
      );
}
