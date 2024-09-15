import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double? sumListDouble(List<double> input) {
  // sum the total of input
  if (input.isEmpty) {
    return null;
  }
  double sum = 0.0;
  for (double num in input) {
    sum += num;
  }
  return sum;
}

DateTime firstDayOfTheMonth() {
  // get the first day datetime of the current month
  return DateTime(DateTime.now().year, DateTime.now().month, 1);
}

DateTime lastDayOftheMonth() {
  // get the last day datetime of the current month
  final now = DateTime.now();
  final lastDay = DateTime(now.year, now.month + 1, 0);
  return lastDay;
}
