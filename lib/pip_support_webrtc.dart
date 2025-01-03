
import 'pip_support_webrtc_platform_interface.dart';
export 'source/stream_picture_in_picture_ui_kit_view.dart';

class PipSupportWebrtc {
  Future<String?> getPlatformVersion() {
    return PipSupportWebrtcPlatform.instance.getPlatformVersion();
  }

  Future<bool> isPictureInPictureSupported() {
    return PipSupportWebrtcPlatform.instance.isPictureInPictureSupported();
  }


}
