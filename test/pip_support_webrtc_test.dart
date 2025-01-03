// import 'package:flutter_test/flutter_test.dart';
// import 'package:pip_support_webrtc/pip_support_webrtc.dart';
// import 'package:pip_support_webrtc/pip_support_webrtc_platform_interface.dart';
// import 'package:pip_support_webrtc/pip_support_webrtc_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockPipSupportWebrtcPlatform
//     with MockPlatformInterfaceMixin
//     implements PipSupportWebrtcPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final PipSupportWebrtcPlatform initialPlatform = PipSupportWebrtcPlatform.instance;
//
//   test('$MethodChannelPipSupportWebrtc is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelPipSupportWebrtc>());
//   });
//
//   test('getPlatformVersion', () async {
//     PipSupportWebrtc pipSupportWebrtcPlugin = PipSupportWebrtc();
//     MockPipSupportWebrtcPlatform fakePlatform = MockPipSupportWebrtcPlatform();
//     PipSupportWebrtcPlatform.instance = fakePlatform;
//
//     expect(await pipSupportWebrtcPlugin.getPlatformVersion(), '42');
//   });
// }
