import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/screens.dart';
import 'package:flutter_music_app_ui/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          //leading: Icon(Icons.grid_view_rounded),
          backgroundColor: const Color.fromARGB(255, 76, 0, 207),
          //title: const Text('ISUMUSIC'),
          title: Image.asset('assets/images/eco4.gif',
              height: 180, width: 120, fit: BoxFit.contain),
        ),
        body: const HomeScreen(),
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
