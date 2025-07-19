import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'splashpage_model.dart';
export 'splashpage_model.dart';

/// Create a page A clean, welcoming splash screen with a soft pastel teal
/// background (#53A39C) overlaid by a subtle pattern of paw prints or pet
/// silhouettes.
///
/// The center displays the PetTrack logo (stylized paw or pet icon) and app
/// name in a large, friendly sans-serif font. Beneath the logo is a short
/// tagline (e.g. “Welcome Pet Parents!”) in smaller text, both in cream
/// (#F8EBDD) and coral accent (#FF8C94) for highlights. Use generous white
/// space and minimalist design: no clutter, only a gentle loading indicator
/// or subtle glow animation around the logo. The theme is premium yet
/// playful, with clear contrast between the pastel background and white or
/// cream text/buttons. Colors: #53A39C, #F8EBDD, #FF8C94; Font: Poppins (bold
/// for title), Lato (light for tagline).
class SplashpageWidget extends StatefulWidget {
  const SplashpageWidget({super.key});

  static String routeName = 'Splashpage';
  static String routePath = '/splashpage';

  @override
  State<SplashpageWidget> createState() => _SplashpageWidgetState();
}

class _SplashpageWidgetState extends State<SplashpageWidget>
    with TickerProviderStateMixin {
  late SplashpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashpageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(OnboardingFlowS1Widget.routeName);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 750.0.ms,
            begin: 0.0,
            end: 0.84,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
        backgroundColor: Color(0xFF53A39C),
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(OnboardingFlowS1Widget.routeName);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF53A39C),
            ),
            child: Padding(
              padding: EdgeInsets.all(48.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Color(0x33F8EBDD),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0x33FFFFFF),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        Icons.pets,
                        color: Color(0xFFF8EBDD),
                        size: 64.0,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'PetTrack',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).displayMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFF8EBDD),
                                  fontSize: 42.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontStyle,
                                  lineHeight: 1.2,
                                ),
                      ),
                      Text(
                        'Welcome Pet Parents!',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.lato(
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFEE8B60),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0x33F8EBDD),
                      shape: BoxShape.circle,
                    ),
                    child: CircularPercentIndicator(
                      percent: 0.7,
                      radius: 20.0,
                      lineWidth: 40.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFFF8EBDD),
                      backgroundColor: Color(0x33FFFFFF),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(OnboardingFlowS1Widget.routeName);
                    },
                    text: 'Start Now!',
                    options: FFButtonOptions(
                      height: 34.9,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconAlignment: IconAlignment.start,
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x95E0E3E7),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
