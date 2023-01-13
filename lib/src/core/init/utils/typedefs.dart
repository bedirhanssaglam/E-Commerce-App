import 'package:flutter/material.dart';

import '../../constants/enums/network_result_enums.dart';

typedef JsonMap = Map<String, Object?>;

typedef NetworkCallBack = void Function(NetworkResultEnums result);

typedef OffsetEffectBuilder = Widget Function(
  BuildContext context,
  Offset offset,
  Widget? child,
);

typedef GyroscopeEffectBuilder = Widget Function(
    BuildContext context, Offset offset, Widget? child);
