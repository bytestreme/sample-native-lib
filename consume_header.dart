// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

typedef consume_func = Void Function(Pointer<Utf8> name);
typedef ConsumeHeader = void Function(Pointer<Utf8> name);

main(List<String> args) {

  var path = "./lib_parse/libparse_lib.so";

  final dylib = DynamicLibrary.open(path);
  final Pointer<Utf8> charPointer = Utf8.toUtf8(args[0]);

  final consumePointer =
      dylib.lookup<NativeFunction<consume_func>>('consume');
  final consume = consumePointer.asFunction<ConsumeHeader>();
  consume(charPointer);
  free(charPointer);
}
