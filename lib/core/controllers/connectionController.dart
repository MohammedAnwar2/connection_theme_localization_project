import 'dart:async';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
class NetworkController extends GetxController{
  static NetworkController instance = Get.find();
  final connectionStatus = 0.obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  @override
  void onInit() {
    super.onInit();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }
  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      Get.snackbar("error", 'Couldn\'t check connectivity status $e');
    }
    return _updateConnectionStatus(result);
  }
  _updateConnectionStatus(ConnectivityResult result)  {
    switch(result)
    {
      case ConnectivityResult.wifi:
        connectionStatus.value=1;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value=2;
        break;
      case ConnectivityResult.none:
        connectionStatus.value=0;
        break;
      default:
        Get.snackbar("Network error", 'Failed to get network connection');
    }
  }
}
//NetworkController.instance.connectionStatus.value==1 || NetworkController.instance.connectionStatus.value==2?
