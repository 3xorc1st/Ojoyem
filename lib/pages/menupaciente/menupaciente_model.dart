import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/acerca_de/acerca_de_widget.dart';
import '/pages/allchats/allchats_widget.dart';
import '/pages/pacientemenuprin/pacientemenuprin_widget.dart';
import '/pages/pacienteperfil/pacienteperfil_widget.dart';
import '/pages/pantalladeiniciopaciente/pantalladeiniciopaciente_widget.dart';
import '/pages/report/report_widget.dart';
import '/pages/scanner/scanner_widget.dart';
import '/pages/search/search_widget.dart';
import 'menupaciente_widget.dart' show MenupacienteWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenupacienteModel extends FlutterFlowModel<MenupacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
