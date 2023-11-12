import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/acerca_de/acerca_de_widget.dart';
import '/pages/forgot_password01/forgot_password01_widget.dart';
import '/pages/menuespecialista/menuespecialista_widget.dart';
import '/pages/menupaciente/menupaciente_widget.dart';
import '/pages/pantalladeiniciopaciente/pantalladeiniciopaciente_widget.dart';
import '/pages/registro1/registro1_widget.dart';
import 'iniciarsesion_widget.dart' show IniciarsesionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IniciarsesionModel extends FlutterFlowModel<IniciarsesionWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for Contrasea widget.
  FocusNode? contraseaFocusNode;
  TextEditingController? contraseaController;
  late bool contraseaVisibility;
  String? Function(BuildContext, String?)? contraseaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraseaVisibility = false;
  }

  void dispose() {
    correoFocusNode?.dispose();
    correoController?.dispose();

    contraseaFocusNode?.dispose();
    contraseaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
