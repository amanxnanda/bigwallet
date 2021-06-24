// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

/// A service which will be used to handle the basic
/// operations in the application. This will be used to separate the UI related
/// work like controllers, permission and etc.
///
/// The codes which are commented as coverage:ignore-start for them
/// the test codes are not needed as of now. So as the application grows and
/// the code are used then we will remove the ignore statement.
class CommonService extends GetxService {
  /// Call the initial methods when the service is initialized
  Future<CommonService> init() async {
    onInit();
    return this;
  }

  /// Get image from the device by any one of the [ImageOption].
  /// This will also provide the option for image cropping.
  Future<String> getImageFromDevice() async {
    var imagePath = '';
    var imageOption = await Utility.getImage();
    if (imageOption != null) {
      final picker = ImagePicker();
      PickedFile? pickedFile;
      switch (imageOption) {
        case ImageOption.gallery:
          if (await PermissionChecker.checkStoragePermission()) {
            pickedFile = await picker.getImage(
              source: ImageSource.gallery,
            );
          }
          break;
        case ImageOption.camera:
          if (await PermissionChecker.checkCameraPermission()) {
            pickedFile = await picker.getImage(
              source: ImageSource.camera,
            );
          }
          break;
      }
      if (pickedFile != null) {
        var croppedFile = await ImageCropper.cropImage(
          sourcePath: pickedFile.path,
          cropStyle: CropStyle.circle,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
          ],
          androidUiSettings: AndroidUiSettings(
            toolbarTitle: StringConstants.appName,
            toolbarColor: Colors.black,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true,
          ),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ),
        );
        if (croppedFile != null) {
          imagePath = croppedFile.path;
          return imagePath;
        } else {
          throw DataException(
            message: StringConstants.somethingWentWrong,
          );
        }
      } else {
        throw DataException(
          message: StringConstants.somethingWentWrong,
        );
      }
    } else {
      throw DataException(
        message: StringConstants.somethingWentWrong,
      );
    }
  }
}
