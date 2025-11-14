import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/drawer/drawer_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'claim_devices_manage_home_widget.dart'
    show ClaimDevicesManageHomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClaimDevicesManageHomeModel
    extends FlutterFlowModel<ClaimDevicesManageHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
  }
}
