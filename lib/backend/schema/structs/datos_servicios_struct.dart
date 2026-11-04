// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Incluiremos todos los tipos de dato del servicio
class DatosServiciosStruct extends BaseStruct {
  DatosServiciosStruct({
    String? imagenServicio,
    String? tipoServicio,
    int? duracion,
    double? precio,
  })  : _imagenServicio = imagenServicio,
        _tipoServicio = tipoServicio,
        _duracion = duracion,
        _precio = precio;

  // "imagen_servicio" field.
  String? _imagenServicio;
  String get imagenServicio => _imagenServicio ?? '';
  set imagenServicio(String? val) => _imagenServicio = val;

  bool hasImagenServicio() => _imagenServicio != null;

  // "tipo_servicio" field.
  String? _tipoServicio;
  String get tipoServicio => _tipoServicio ?? '';
  set tipoServicio(String? val) => _tipoServicio = val;

  bool hasTipoServicio() => _tipoServicio != null;

  // "duracion" field.
  int? _duracion;
  int get duracion => _duracion ?? 0;
  set duracion(int? val) => _duracion = val;

  void incrementDuracion(int amount) => duracion = duracion + amount;

  bool hasDuracion() => _duracion != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;

  void incrementPrecio(double amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  static DatosServiciosStruct fromMap(Map<String, dynamic> data) =>
      DatosServiciosStruct(
        imagenServicio: data['imagen_servicio'] as String?,
        tipoServicio: data['tipo_servicio'] as String?,
        duracion: castToType<int>(data['duracion']),
        precio: castToType<double>(data['precio']),
      );

  static DatosServiciosStruct? maybeFromMap(dynamic data) => data is Map
      ? DatosServiciosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'imagen_servicio': _imagenServicio,
        'tipo_servicio': _tipoServicio,
        'duracion': _duracion,
        'precio': _precio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imagen_servicio': serializeParam(
          _imagenServicio,
          ParamType.String,
        ),
        'tipo_servicio': serializeParam(
          _tipoServicio,
          ParamType.String,
        ),
        'duracion': serializeParam(
          _duracion,
          ParamType.int,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
        ),
      }.withoutNulls;

  static DatosServiciosStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatosServiciosStruct(
        imagenServicio: deserializeParam(
          data['imagen_servicio'],
          ParamType.String,
          false,
        ),
        tipoServicio: deserializeParam(
          data['tipo_servicio'],
          ParamType.String,
          false,
        ),
        duracion: deserializeParam(
          data['duracion'],
          ParamType.int,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DatosServiciosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatosServiciosStruct &&
        imagenServicio == other.imagenServicio &&
        tipoServicio == other.tipoServicio &&
        duracion == other.duracion &&
        precio == other.precio;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([imagenServicio, tipoServicio, duracion, precio]);
}

DatosServiciosStruct createDatosServiciosStruct({
  String? imagenServicio,
  String? tipoServicio,
  int? duracion,
  double? precio,
}) =>
    DatosServiciosStruct(
      imagenServicio: imagenServicio,
      tipoServicio: tipoServicio,
      duracion: duracion,
      precio: precio,
    );
