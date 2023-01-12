import 'package:flutter/material.dart';

import '../../constants/enums/network_result_enums.dart';

typedef StringFunction = Function(String?)?;

typedef JsonMap = Map<String, dynamic>;

typedef NetworkCallBack = void Function(NetworkResultEnums result);

typedef OffsetEffectBuilder = Widget Function(
  BuildContext context,
  Offset offset,
  Widget? child,
);

typedef GyroscopeEffectBuilder = Widget Function(
    BuildContext context, Offset offset, Widget? child);
