import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'petregistrationcomptlition_model.dart';
export 'petregistrationcomptlition_model.dart';

/// After saving a pet, display a full-screen confirmation.
///
/// The top has a large green checkmark icon (signifying success) with
/// headline “Pet Registered!” in Poppins. Below, present the pet’s unique QR
/// code (centered, on white card background) large enough for scanning. Under
/// the code, show the pet’s name and a short note: “Keep this QR code on your
/// pet’s collar so anyone can find them.” Use teal accents for text
/// highlights. Include two buttons: “Download QR” (teal background) and “Add
/// Another Pet” (outlined coral). The page feels celebratory and reassuring,
/// using positive color (green check) and clear instructions. Colors:
/// #53A39C, #F8EBDD, #FF8C94; Font: Poppins, Lato.
class PetregistrationcomptlitionWidget extends StatefulWidget {
  const PetregistrationcomptlitionWidget({super.key});

  static String routeName = 'Petregistrationcomptlition';
  static String routePath = '/petregistrationcomptlition';

  @override
  State<PetregistrationcomptlitionWidget> createState() =>
      _PetregistrationcomptlitionWidgetState();
}

class _PetregistrationcomptlitionWidgetState
    extends State<PetregistrationcomptlitionWidget> {
  late PetregistrationcomptlitionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetregistrationcomptlitionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF8EBDD),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Pet Registered!',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontStyle,
                                ),
                                color: Color(0xFF2E7D32),
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .fontStyle,
                              ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    width: 280.0,
                    height: 320.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8.0,
                          color: Color(0x1A000000),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xFFE0E0E0),
                                width: 1.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1706759755782-62bc9a0b32e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjYzNTd8&ixlib=rb-4.1.0&q=80&w=1080',
                                  width: 180.0,
                                  height: 180.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Buddy',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF53A39C),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Keep this QR code on your pet\'s collar so anyone can find them.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.lato(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              color: Color(0xFF424242),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Text(
                        'Save the QR code and print it for your pet\'s safety.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF53A39C),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(HomescreenWidget.routeName);
                        },
                        text: 'Download QR',
                        icon: Icon(
                          Icons.download_rounded,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: 280.0,
                          height: 50.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: Colors.white,
                          color: Color(0xFF53A39C),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(HomescreenWidget.routeName);
                        },
                        text: 'Add Another Pet',
                        icon: Icon(
                          Icons.add_rounded,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: 280.0,
                          height: 50.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: Color(0xFFFF8C94),
                          color: Color(0x00FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFFF8C94),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0xFFFF8C94),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
