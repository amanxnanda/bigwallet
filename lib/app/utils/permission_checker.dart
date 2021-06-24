// coverage:ignore-file
import 'package:big_wallet/app/app.dart';
import 'package:big_wallet/domain/domain.dart';
import 'package:permission_handler/permission_handler.dart';

/// Check for different permissions which are required through out the
/// application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class PermissionChecker {
  /// Check for storage permission if given or denied
  static Future<bool> checkStoragePermission() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      if (await Permission.storage.request().isGranted) {
        return true;
      }
      return false;
    }
    if (status.isRestricted) {
      Utility.showMessage(
        'storagePermissionError',
        MessageType.information,
        null,
        StringConstants.okay,
      );
      return false;
    }
    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }
    return true;
  }

  /// Check for camera permission if given or denied
  static Future<bool> checkCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      if (await Permission.camera.request().isGranted) {
        return true;
      }
      return false;
    }
    if (status.isRestricted) {
      Utility.showMessage(
        'cameraPermissionError',
        MessageType.information,
        null,
        StringConstants.okay,
      );
      return false;
    }
    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }
    return true;
  }

  /// Check for location permission if given or denied
  static Future<bool> checkLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied) {
      if (await Permission.location.request().isGranted) {
        return true;
      }
      return false;
    }
    if (status.isRestricted) {
      Utility.showMessage(
        'locationPermissionError',
        MessageType.information,
        null,
        StringConstants.okay,
      );
      return false;
    }
    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }
    return true;
  }

  /// Check for location permission if given or denied
  static Future<bool> isLocationPermissionGiven() async {
    var status = await Permission.location.status;
    return status.isGranted;
  }
}
