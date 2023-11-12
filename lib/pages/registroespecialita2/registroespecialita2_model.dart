import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/acerca_de/acerca_de_widget.dart';
import '/pages/iniciarsesion/iniciarsesion_widget.dart';
import '/pages/registro1/registro1_widget.dart';
import 'registroespecialita2_widget.dart' show Registroespecialita2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Registroespecialita2Model
    extends FlutterFlowModel<Registroespecialita2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for cedula widget.
  FocusNode? cedulaFocusNode;
  TextEditingController? cedulaController;
  String? Function(BuildContext, String?)? cedulaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    cedulaFocusNode?.dispose();
    cedulaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
