import 'package:dcf_app/models/view_state.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    update();
  }

  @override
  void update([List<String> ids, bool condition = true]) {
    super.update();
  }

  @override
  void onInit() async {
    this.init();
    super.onInit();
  }

  @override
  void onReady() {
    this.ready();
    super.onReady();
  }

  @override
  void onClose() async {
    this.close();
    super.onClose();
  }

  void init();
  void ready();
  void close();

}
