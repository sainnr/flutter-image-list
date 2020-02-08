# flutter-image-list

A sample Flutter application that showcases progressive images loading with [Cloudinary](https://cloudinary.com/documentation/image_transformation_reference) and [CachedNetworkImage](https://github.com/renefloor/flutter_cached_network_image) package.

Tested to run under the following devices:
* Android (emulator)
* Web
* Ubuntu Linux

To run the application:
1. Make sure you have [Flutter installed](https://flutter.dev/docs/get-started/install)
1. Type `flutter doctor` to ensure everything's set up properly and fix the issues if any
1. Start the emulator if necessary. Type `flutter devices` to check accessible platforms to run the app, you should normally something like below (depending on what's enabled on your nachine & on the Flutter version you have):
```
$ flutter devices
3 connected devices:

Linux      • Linux      • linux-x64      • Linux
Chrome     • chrome     • web-javascript • Google Chrome 79.0.3945.130
Web Server • web-server • web-javascript • Flutter Tools
```
4. Finally, `flutter run -d <device>` for a device/emulator of your choice

**Known quirks:** The `CachedNetworkImage` version used in this sample doesn't seem to properly work under Web & Linux platforms, leaving the interface with the stretched preview thumbnails (also showing some stack traces in logs). Please see the package's open issues and pull requests to track the support status for those platforms: https://github.com/renefloor/flutter_cached_network_image/issues.
