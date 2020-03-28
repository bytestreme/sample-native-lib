// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

typedef spell_check_func = Int8 Function(Pointer<Utf8> name);
typedef SpellCheck = int Function(Pointer<Utf8> name);

main(List<String> args) {
  var path = "./spell_lib/libcheck_lib.so";

  final dylib = DynamicLibrary.open(path);
  final Pointer<Utf8> charPointer = Utf8.toUtf8(args[0]);

  final spellPointer =
      dylib.lookup<NativeFunction<spell_check_func>>('check_spell');
  final check_spell = spellPointer.asFunction<SpellCheck>();

  print(check_spell(charPointer) == 1 ? 'correct' : 'incorrect');

  free(charPointer);
}
