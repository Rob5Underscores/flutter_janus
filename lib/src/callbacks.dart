import 'package:flutter_webrtc/webrtc.dart';
import 'package:flutterjanus/flutterjanus.dart';

class GatewayCallbacks {
  var server;
  List iceServers = [
    {"urls": "stun:stun.l.google.com:19302"}
  ];
  var iceTransportPolicy;
  var bundlePolicy;
  String token;
  String apiSecret;
  bool ipv6Support = false;
  bool withCredentials = false;
  int maxPollEvents = 10;
  bool destroyOnUnload = true;
  int keepAlivePeriod = 25000;
  int longPollTimeout = 60000;

  Function success = () => {};
  Function error = () => {};
  Function destroyed = () => {};
}

class Callbacks {
  String plugin;
  String opaqueId;
  String token;
  String transaction;

  Map<String, String> request;
  Map<String, dynamic> message;
  dynamic jsep;
  dynamic text;
  Map<String, dynamic> media = {"audio": true, "video": true};

  dynamic data;
  dynamic label;
  dynamic dtmf;
  bool noRequest;
  dynamic rtcConstraints;

  bool simulcast;
  bool simulcast2;
  bool trickle = true;
  bool iceRestart = false;
  MediaStream stream;

  Function success = (response) => {Janus.debug(response.toString())};
  Function error = (error) => {Janus.debug(error)};
  Function consentDialog = () => {};
  Function iceState = () => {};
  Function mediaState = () => {};
  Function webrtcState = () => {};
  Function slowLink = () => {};
  Function onMessage = () => {};
  Function onLocalStream = () => {};
  Function onRemoteStream = () => {};
  Function onData = () => {};
  Function onDataOpen = () => {};
  Function onCleanup = () => {};
  Function onDetached = () => {};
}
