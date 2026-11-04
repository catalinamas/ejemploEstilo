import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'servicios_widget.dart' show ServiciosWidget;
import 'package:flutter/material.dart';

class ServiciosModel extends FlutterFlowModel<ServiciosWidget> {
  ///  Local state fields for this page.

  List<DatosServiciosStruct> listaServicios = [];
  void addToListaServicios(DatosServiciosStruct item) =>
      listaServicios.add(item);
  void removeFromListaServicios(DatosServiciosStruct item) =>
      listaServicios.remove(item);
  void removeAtIndexFromListaServicios(int index) =>
      listaServicios.removeAt(index);
  void insertAtIndexInListaServicios(int index, DatosServiciosStruct item) =>
      listaServicios.insert(index, item);
  void updateListaServiciosAtIndex(
          int index, Function(DatosServiciosStruct) updateFn) =>
      listaServicios[index] = updateFn(listaServicios[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
