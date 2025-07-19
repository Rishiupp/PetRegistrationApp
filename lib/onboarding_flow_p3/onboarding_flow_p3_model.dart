import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'onboarding_flow_p3_widget.dart' show OnboardingFlowP3Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingFlowP3Model extends FlutterFlowModel<OnboardingFlowP3Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for LOLOLO widget.
  FocusNode? lololoFocusNode;
  TextEditingController? lololoTextController;
  String? Function(BuildContext, String?)? lololoTextControllerValidator;
  // State field(s) for PPPPPP widget.
  FocusNode? ppppppFocusNode;
  TextEditingController? ppppppTextController;
  late bool ppppppVisibility;
  String? Function(BuildContext, String?)? ppppppTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? apiResulthza;

  @override
  void initState(BuildContext context) {
    ppppppVisibility = false;
  }

  @override
  void dispose() {
    lololoFocusNode?.dispose();
    lololoTextController?.dispose();

    ppppppFocusNode?.dispose();
    ppppppTextController?.dispose();
  }
}
