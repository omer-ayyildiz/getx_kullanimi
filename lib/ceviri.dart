import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello':
              'Pass parameters to GetMaterialApp to define the locale and translations.',
        },
        'tr_TR': {
          'hello':
              'GetMaterialAppYerel ayarı ve çevirileri tanımlamak için parametreleri iletin .',
        }
      };
}
