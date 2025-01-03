import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pip_support_webrtc_method_channel.dart';

abstract class PipSupportWebrtcPlatform extends PlatformInterface {
  /// Constructs a PipSupportWebrtcPlatform.
  PipSupportWebrtcPlatform() : super(token: _token);

  static final Object _token = Object();

  static PipSupportWebrtcPlatform _instance = MethodChannelPipSupportWebrtc();

  /// The default instance of [PipSupportWebrtcPlatform] to use.
  ///
  /// Defaults to [MethodChannelPipSupportWebrtc].
  static PipSupportWebrtcPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PipSupportWebrtcPlatform] when
  /// they register themselves.
  static set instance(PipSupportWebrtcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> isPictureInPictureSupported() {
    throw UnimplementedError('isPictureInPictureSupported() has not been implemented.');
  }
}
