import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'acerca_de_model.dart';
export 'acerca_de_model.dart';

class AcercaDeWidget extends StatefulWidget {
  const AcercaDeWidget({Key? key}) : super(key: key);

  @override
  _AcercaDeWidgetState createState() => _AcercaDeWidgetState();
}

class _AcercaDeWidgetState extends State<AcercaDeWidget> {
  late AcercaDeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcercaDeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lineColor,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 407.0,
                height: 116.0,
                decoration: BoxDecoration(
                  color: Color(0xFF3F0291),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: Icon(
                              Icons.arrow_back,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/ic_principal.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'ACERCA DE',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryBlack,
                      fontSize: 28.0,
                    ),
              ),
              Icon(
                Icons.remove_red_eye,
                color: FlutterFlowTheme.of(context).primaryBlack,
                size: 150.0,
              ),
              Text(
                'OBJETIVO DE LA APLICACIÒN',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              Container(
                width: 353.0,
                height: 265.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: AutoSizeText(
                  'El objetivo principal es hacer un seguimiento en aquellos casos que se detecte un problema o un daño ocular en los pacientes por medio de detección y segmentación de imágenes, dotando de comunicación entre pacientes y especialistas, para permitir un mejor diagnóstico, esto por medio del uso de una aplicación.\nSi se sospecha la perforación del ojo, la irrigación debe ser diferida hasta que se pueda realizar un examen ocular formal. Si la córnea puede tener una lesión profunda o un cuerpo extraño, la irrigación con una lente escleral puede causar una lesión adicional y no debe hacerse. Irrigación manual del ojo con delicadeza y mucho cuidado.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryBlack,
                        fontSize: 15.0,
                      ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Text(
                'Desarolladores',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              Container(
                width: 353.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Text(
                  'Programadores \nAlan David Rivera Cadena\nVíctor Manuel Morales Martínez\nQuetzal Francisco Labastida Rios\n',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
