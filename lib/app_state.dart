import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listaDatosServicios = prefs
              .getStringList('ff_listaDatosServicios')
              ?.map((x) {
                try {
                  return DatosServiciosStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listaDatosServicios;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _nombreCliente = '';
  String get nombreCliente => _nombreCliente;
  set nombreCliente(String value) {
    _nombreCliente = value;
  }

  List<DatosServiciosStruct> _listaDatosServicios = [
    DatosServiciosStruct.fromSerializableMap(jsonDecode(
        '{\"imagen_servicio\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/proyecto-estilo-jdkfzx/assets/bq99g60qt7ab/Corte_y_peinado.png\",\"tipo_servicio\":\"Corte y peinado\",\"duracion\":\"30\",\"precio\":\"20\"}')),
    DatosServiciosStruct.fromSerializableMap(jsonDecode(
        '{\"imagen_servicio\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/proyecto-estilo-jdkfzx/assets/t5lakqfcq99r/color.png\",\"tipo_servicio\":\"Color\",\"duracion\":\"60\",\"precio\":\"25\"}')),
    DatosServiciosStruct.fromSerializableMap(jsonDecode(
        '{\"imagen_servicio\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/proyecto-estilo-jdkfzx/assets/s5s1u4lr6gzy/tratamiento.png\",\"tipo_servicio\":\"Tratamiento\",\"duracion\":\"120\",\"precio\":\"70\"}'))
  ];
  List<DatosServiciosStruct> get listaDatosServicios => _listaDatosServicios;
  set listaDatosServicios(List<DatosServiciosStruct> value) {
    _listaDatosServicios = value;
    prefs.setStringList(
        'ff_listaDatosServicios', value.map((x) => x.serialize()).toList());
  }

  void addToListaDatosServicios(DatosServiciosStruct value) {
    listaDatosServicios.add(value);
    prefs.setStringList('ff_listaDatosServicios',
        _listaDatosServicios.map((x) => x.serialize()).toList());
  }

  void removeFromListaDatosServicios(DatosServiciosStruct value) {
    listaDatosServicios.remove(value);
    prefs.setStringList('ff_listaDatosServicios',
        _listaDatosServicios.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListaDatosServicios(int index) {
    listaDatosServicios.removeAt(index);
    prefs.setStringList('ff_listaDatosServicios',
        _listaDatosServicios.map((x) => x.serialize()).toList());
  }

  void updateListaDatosServiciosAtIndex(
    int index,
    DatosServiciosStruct Function(DatosServiciosStruct) updateFn,
  ) {
    listaDatosServicios[index] = updateFn(_listaDatosServicios[index]);
    prefs.setStringList('ff_listaDatosServicios',
        _listaDatosServicios.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListaDatosServicios(
      int index, DatosServiciosStruct value) {
    listaDatosServicios.insert(index, value);
    prefs.setStringList('ff_listaDatosServicios',
        _listaDatosServicios.map((x) => x.serialize()).toList());
  }

  List<DatosServiciosStruct> _Reservas = [];
  List<DatosServiciosStruct> get Reservas => _Reservas;
  set Reservas(List<DatosServiciosStruct> value) {
    _Reservas = value;
  }

  void addToReservas(DatosServiciosStruct value) {
    Reservas.add(value);
  }

  void removeFromReservas(DatosServiciosStruct value) {
    Reservas.remove(value);
  }

  void removeAtIndexFromReservas(int index) {
    Reservas.removeAt(index);
  }

  void updateReservasAtIndex(
    int index,
    DatosServiciosStruct Function(DatosServiciosStruct) updateFn,
  ) {
    Reservas[index] = updateFn(_Reservas[index]);
  }

  void insertAtIndexInReservas(int index, DatosServiciosStruct value) {
    Reservas.insert(index, value);
  }

  int _numeroReserva = 0;
  int get numeroReserva => _numeroReserva;
  set numeroReserva(int value) {
    _numeroReserva = value;
  }

  double _pagoRealizado = 0.0;
  double get pagoRealizado => _pagoRealizado;
  set pagoRealizado(double value) {
    _pagoRealizado = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
