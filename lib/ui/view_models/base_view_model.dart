import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}

// viewstate.dart
/// Represents the state of the view
enum ViewState { Idle, Busy }