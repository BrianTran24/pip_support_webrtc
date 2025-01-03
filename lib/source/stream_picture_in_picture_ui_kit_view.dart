// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class StreamPictureInPictureUiKitView extends StatefulWidget {
//   const StreamPictureInPictureUiKitView({
//     super.key,
//     required this.call,
//     this.ignoreLocalParticipantVideo = true,
//   });
//
//   final Call call;
//   final bool ignoreLocalParticipantVideo;
//
//   @override
//   State<StreamPictureInPictureUiKitView> createState() =>
//       _StreamPictureInPictureUiKitViewState();
// }
//
// class _StreamPictureInPictureUiKitViewState
//     extends State<StreamPictureInPictureUiKitView> {
//   final platformMethodChannel = const MethodChannel('stream_video_flutter_pip');
//
//   late StreamSubscription<StreamCallEvent> _subscription;
//
//   @override
//   void initState() {
//     _subscription = widget.call.callEvents.listen((event) {
//       final participants = widget.ignoreLocalParticipantVideo
//           ? widget.call.state.value.otherParticipants
//           : widget.call.state.value.callParticipants;
//       mergeSort(participants, compare: CallParticipantSortingPresets.speaker);
//
//       final screenShareParticipant = participants.firstWhereOrNull(
//             (it) {
//           final screenShareTrack = it.screenShareTrack;
//           final isScreenShareEnabled = it.isScreenShareEnabled;
//
//           return screenShareTrack != null && isScreenShareEnabled;
//         },
//       );
//
//       if (participants.isNotEmpty) {
//         final videoTrack = widget.call.getTrack(
//           screenShareParticipant?.trackIdPrefix ??
//               participants.first.trackIdPrefix,
//           screenShareParticipant != null
//               ? SfuTrackType.screenShare
//               : SfuTrackType.video,
//         );
//
//         platformMethodChannel.invokeMethod(
//           'setTrack',
//           {
//             'trackId': videoTrack?.mediaTrack.id,
//           },
//         );
//       }
//
//       if (event is StreamCallEndedEvent) {
//         platformMethodChannel.invokeMethod(
//           'callEnded',
//         );
//       }
//     });
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const UiKitView(
//       viewType: 'stream-pip-view',
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StreamPictureInPictureUiKitView extends StatelessWidget {
  const StreamPictureInPictureUiKitView({super.key});

  @override
  Widget build(BuildContext context) {
    return  UiKitView(
      viewType: 'stream-pip-view',
      creationParams: <String, dynamic>{},
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}