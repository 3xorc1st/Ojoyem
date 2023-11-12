import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/acerca_de/acerca_de_widget.dart';
import '/pages/iniciarsesion/iniciarsesion_widget.dart';
import '/pages/pantalladeiniciopaciente/pantalladeiniciopaciente_widget.dart';
import '/pages/registroespecialita2/registroespecialita2_widget.dart';
import 'registro1_widget.dart' show Registro1Widget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Registro1Model extends FlutterFlowModel<Registro1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  // State field(s) for PasswordField1 widget.
  FocusNode? passwordField1FocusNode;
  TextEditingController? passwordField1Controller;
  late bool passwordField1Visibility;
  String? Function(BuildContext, String?)? passwordField1ControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Apellidos widget.
  FocusNode? apellidosFocusNode;
  TextEditingController? apellidosController;
  String? Function(BuildContext, String?)? apellidosControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    passwordField1Visibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    textField1FocusNode?.dispose();
    textField1Controller?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();

    passwordField1FocusNode?.dispose();
    passwordField1Controller?.dispose();

    nombreFocusNode?.dispose();
    nombreController?.dispose();

    apellidosFocusNode?.dispose();
    apellidosController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
