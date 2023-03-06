import 'dart:io';

String fixture(String name, [String path = '']) {
  var rootPath = 'test/fixtures/';
  var completePath =
      path.isNotEmpty ? '$rootPath$path/$name' : '$rootPath/$name';
  return File(completePath).readAsStringSync();
}
