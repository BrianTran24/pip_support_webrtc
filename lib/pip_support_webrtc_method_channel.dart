import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pip_support_webrtc_platform_interface.dart';

/// An implementation of [PipSupportWebrtcPlatform] that uses method channels.
class MethodChannelPipSupportWebrtc extends PipSupportWebrtcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pip_support_webrtc');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
