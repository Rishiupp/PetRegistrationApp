import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'qrscanlogpage_model.dart';
export 'qrscanlogpage_model.dart';

/// A chronological log of QR scans and registrations.
///
/// Use a clean white or light-gray background. Display a vertical list of
/// entries: each entry is a card with a small pet thumbnail/icon, pet name,
/// and action (e.g. “Scanned by John – 2 days ago” or “New Pet Registered –
/// [Date]”). On each card’s right side, show a timestamp and a status icon
/// (checkmark for successful scan). A subtle filter bar at top lets users
/// choose “All / Scans / Registrations”. The design is utilitarian yet neat:
/// cards have slight shadows, alternating row colors (white and cream) for
/// readability. This makes scanning logs easy to browse. Colors: #53A39C,
/// #F8EBDD, #FF8C94; Font: Poppins, Lato.
class QrscanlogpageWidget extends StatefulWidget {
  const QrscanlogpageWidget({super.key});

  static String routeName = 'qrscanlogpage';
  static String routePath = '/qrscanlogpage';

  @override
  State<QrscanlogpageWidget> createState() => _QrscanlogpageWidgetState();
}

class _QrscanlogpageWidgetState extends State<QrscanlogpageWidget> {
  late QrscanlogpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrscanlogpageModel());

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
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF8F8F8),
          automaticallyImplyLeading: false,
          title: Text(
            'Activity Log',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Color(0xFF2D2D2D),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Color(0xFF53A39C),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: Color(0xFFF8EBDD),
                icon: Icon(
                  Icons.filter_list,
                  color: Color(0xFF53A39C),
                  size: 20.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'All',
                            options: FFButtonOptions(
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF53A39C),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Scans',
                            options: FFButtonOptions(
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF8EBDD),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
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
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Color(0xFF53A39C),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Registrations',
                            options: FFButtonOptions(
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF8EBDD),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
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
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Color(0xFF53A39C),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    100.0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1512546321483-c0468b7b8a95?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MTl8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Buddy',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Scanned by Sarah Johnson',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF666666),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '2 hours ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8EBDD),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1536500152107-01ab1422f932?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MjB8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Whiskers',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'New Pet Registered',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF53A39C),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '1 day ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1549291981-56d443d5e2a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MTl8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Max',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Scanned by Mike Chen',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF666666),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '2 days ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8EBDD),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1627110914806-708eb65b082f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MTl8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Luna',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Scanned by Emma Davis',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF666666),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '3 days ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MTl8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Oliver',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'New Pet Registered',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF53A39C),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '5 days ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8EBDD),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1504430225224-21a649ac91bc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTIyNjY5MTl8&ixlib=rb-4.1.0&q=80&w=1080',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bella',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF2D2D2D),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Scanned by Alex Rodriguez',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF666666),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF53A39C),
                                    size: 20.0,
                                  ),
                                  Text(
                                    '1 week ago',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF999999),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
