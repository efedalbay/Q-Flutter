Projemizi yeni yapıya göre adım adım düzenleyelim. Öncelikle klasör yapısı ve bağımlılıkları açıklayıp, sonrasında uygulamamızı oluşturacağız.

1. Önce yeni bir Flutter projesi oluşturalım:

```bash
flutter create flutter_app
cd flutter_app
```

2. pubspec.yaml dosyamızı verdiğiniz yapıya göre düzenleyelim. Bu dosyanın her bir parçasının ne işe yaradığını açıklayayım:

```yaml
name: flutter_app
description: "A new Flutter project."
publish_to: 'none'  # Bu uygulama pub.dev'de yayınlanmayacak
version: 0.1.0      # Uygulama versiyonu

environment:
  sdk: ^3.5.4      # Flutter SDK versiyonu

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8       # iOS stil ikonlar için
  flutter_secure_storage: ^9.2.2 # Güvenli veri depolama için
  go_router: ^14.6.1            # Sayfa yönlendirme (routing) için
  shared_preferences: ^2.3.3     # Basit veri depolama için

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0         # Kod kalitesi kontrolleri için

flutter:
  uses-material-design: true    # Material Design widget'larını kullanmak için
  assets:                       # Projedeki dosya kaynakları
    - assets/images/           # Görseller için
    - assets/icons/           # İkonlar için
    - assets/languages/       # Dil dosyaları için
    - assets/motions/        # Animasyon dosyaları için

```

3. Şimdi klasör yapımızı oluşturalım. Terminal'de şu komutları çalıştıralım:

```bash
# Ana klasörleri oluştur
mkdir -p lib/screens
mkdir -p lib/widgets
mkdir -p lib/routes
mkdir -p lib/models
mkdir -p lib/services
mkdir -p lib/utils

# Asset klasörlerini oluştur
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/languages
mkdir -p assets/motions
```

4. Dosya yapımız şu şekilde olacak:

```
flutter_app/
├── lib/
│   ├── screens/           # Ekranlarımız
│   │   ├── loading_screen.dart
│   │   └── home_screen.dart
│   ├── widgets/          # Yeniden kullanılabilir widget'lar
│   ├── routes/           # Sayfa yönlendirme ayarları
│   │   └── app_router.dart
│   ├── models/          # Veri modelleri
│   ├── services/        # Servis sınıfları
│   ├── utils/          # Yardımcı fonksiyonlar
│   └── main.dart       # Ana uygulama dosyası
├── assets/
│   ├── images/        # Görseller
│   ├── icons/         # İkonlar
│   ├── languages/     # Dil dosyaları
│   └── motions/       # Animasyonlar
└── pubspec.yaml
```

5. Router yapılandırması için lib/routes/app_router.dart dosyasını oluşturalım:

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

```

6. main.dart dosyamızı düzenleyelim:

```dart
import 'package:flutter/material.dart';
import 'routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();  // Flutter widget'larını başlat
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: router,  // go_router yapılandırmamızı kullan
      debugShowCheckedModeBanner: false,  // Debug bandını kaldır
    );
  }
}

```

Bu yapılandırmadan sonra, Loading Screen ve Home Screen için daha önce oluşturduğumuz kodları ilgili dosyalara ekleyebilirsiniz. Bu yapı size şu avantajları sağlar:

1. Düzenli Kod Organizasyonu: Her şey kendi klasöründe ve düzenli
2. Kolay Yönlendirme: go_router ile sayfa geçişleri daha yönetilebilir
3. Güvenli Veri Saklama: flutter_secure_storage ile hassas verileri güvenle saklayabilirsiniz
4. Yerel Veri Yönetimi: shared_preferences ile basit verileri kalıcı saklayabilirsiniz
5. Çoklu Dil Desteği: languages klasörü ile çoklu dil desteği ekleyebilirsiniz
6. Animasyon Desteği: motions klasörü ile animasyonları organize edebilirsiniz
İsterseniz herhangi bir bölümü daha detaylı açıklayabilirim veya belirli bir özelliği nasıl implemente edeceğimizi gösterebilirim.