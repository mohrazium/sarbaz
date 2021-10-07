import 'package:asset_cache/asset_cache.dart';
import 'package:get/get.dart';

class UtilityController extends GetxController {
  Rx<ImageAssetCache> imageCache =
      ImageAssetCache(basePath: "assets/images/").obs;
}
