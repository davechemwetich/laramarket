import 'package:fluttertoast/fluttertoast.dart';

//positional optional parameters
toastInfo([String msg = ""]) {
  return Fluttertoast.showToast(msg: msg);
}
