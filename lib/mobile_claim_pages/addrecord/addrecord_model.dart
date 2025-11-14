import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'addrecord_widget.dart' show AddrecordWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddrecordModel extends FlutterFlowModel<AddrecordWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for TextField-customer-name widget.
  FocusNode? textFieldCustomerNameFocusNode;
  TextEditingController? textFieldCustomerNameTextController;
  String? Function(BuildContext, String?)?
      textFieldCustomerNameTextControllerValidator;
  // State field(s) for TextField-contac-number widget.
  FocusNode? textFieldContacNumberFocusNode;
  TextEditingController? textFieldContacNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldContacNumberTextControllerValidator;
  // State field(s) for TextField-mobile-model widget.
  FocusNode? textFieldMobileModelFocusNode;
  TextEditingController? textFieldMobileModelTextController;
  String? Function(BuildContext, String?)?
      textFieldMobileModelTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Custom Action - scanIMEIFromImage] action in IconButton widget.
  String? emioutput;
  // State field(s) for DropDown widget.
  Status? dropDownValue;
  FormFieldController<Status>? dropDownValueController;
  // State field(s) for TextField-description widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button-sav-recorde widget.
  MobileClaimRecordsRecord? savedata;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCustomerNameFocusNode?.dispose();
    textFieldCustomerNameTextController?.dispose();

    textFieldContacNumberFocusNode?.dispose();
    textFieldContacNumberTextController?.dispose();

    textFieldMobileModelFocusNode?.dispose();
    textFieldMobileModelTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionTextController?.dispose();
  }
}
