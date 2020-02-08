# flutter-image-list

A sample Flutter application that showcases progressive images loading with [Cloudinary](https://cloudinary.com/documentation/image_transformation_reference) and [CachedNetworkImage](https://github.com/renefloor/flutter_cached_network_image) package.

Tested to run under the following devices:
* Android (emulator)
* Web
* Ubuntu Linux

**Known quirks:** The `CachedNetworkImage` version used in this sample doesn't seem to properly work under Web & Linux platforms, leaving the interface with the stretched preview thumbnails (also showing some stack traces in logs). Please see the package's open issues and pull requests to track the support status for those platforms: https://github.com/renefloor/flutter_cached_network_image/issues.
