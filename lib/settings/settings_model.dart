import '/components/nav_bar1_widget.dart';
import '/components/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    topNavModel.dispose();
    navBar1Model.dispose();
  }
}
