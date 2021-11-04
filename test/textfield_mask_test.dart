import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:textfield_mask/textfield_mask.dart';

void main() {
  const MethodChannel channel = MethodChannel('textfield_mask');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    //expect(await TextfieldMask.platformVersion, '42');
  });
}
