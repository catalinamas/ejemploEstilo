import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';

double? calcularTotal(List<DatosServiciosStruct>? datosServicio) {
  double total = 0.0;

  if (datosServicio == null) {
    return 0.0;
  }

  for (final servicio in datosServicio) {
    total += servicio.precio ?? 0.0;
  }

  return total;
}
