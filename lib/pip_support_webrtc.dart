
import 'pip_support_webrtc_platform_interface.dart';

class PipSupportWebrtc {
  Future<String?> getPlatformVersion() {
    return PipSupportWebrtcPlatform.instance.getPlatformVersion();
  }
}
