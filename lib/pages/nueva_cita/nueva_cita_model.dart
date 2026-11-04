import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nueva_cita_widget.dart' show NuevaCitaWidget;
import 'package:flutter/material.dart';

class NuevaCitaModel extends FlutterFlowModel<NuevaCitaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for dropdownFranja widget.
  String? dropdownFranjaValue;
  FormFieldController<String>? dropdownFranjaValueController;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
