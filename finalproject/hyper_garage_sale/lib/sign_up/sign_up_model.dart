import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailController;
  String? Function(BuildContext, String?)? inputEmailControllerValidator;
  // State field(s) for inputPassword widget.
  FocusNode? inputPasswordFocusNode;
  TextEditingController? inputPasswordController;
  late bool inputPasswordVisibility;
  String? Function(BuildContext, String?)? inputPasswordControllerValidator;
  // State field(s) for inputPassword2 widget.
  FocusNode? inputPassword2FocusNode;
  TextEditingController? inputPassword2Controller;
  late bool inputPassword2Visibility;
  String? Function(BuildContext, String?)? inputPassword2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputPasswordVisibility = false;
    inputPassword2Visibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    inputEmailFocusNode?.dispose();
    inputEmailController?.dispose();

    inputPasswordFocusNode?.dispose();
    inputPasswordController?.dispose();

    inputPassword2FocusNode?.dispose();
    inputPassword2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
