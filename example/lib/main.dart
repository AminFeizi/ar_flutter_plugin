import 'dart:io';

import 'package:ar_flutter_plugin_example/examples/new_examp.dart';
import 'package:ar_flutter_plugin_example/examples/objectsonplanesexample.dart';
import 'package:ar_flutter_plugin_example/glb_list_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';

import 'package:ar_flutter_plugin_example/examples/localandwebobjectsexample.dart';
import 'package:ar_flutter_plugin_example/examples/debugoptionsexample.dart';
import 'package:path_provider/path_provider.dart';

import 'examples/objectgesturesexample.dart';
import 'examples/screenshotexample.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // copyAssetModelsToDocumentDirectory();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  static const String _title = 'AR Plugin Demo';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await ArFlutterPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GlbListPage(),
    );
  }
}
Future<void> copyAssetModelsToDocumentDirectory() async {
  // CHANGE THESE TO YOUR ASSET FILES
  List<String> filesToCopy = [
    "assets/Bed/bed1.glb",
    "assets/Bed/bed2.glb",
    // *-*-*-*-
    "assets/Bookshelve/bookcase.glb",
    "assets/Bookshelve/bookcase_tall_with_books.glb",
    // *-*-*-*-
    "assets/Carpet/antique_turkish_runner_carpet.glb",
    "assets/Carpet/old_persian_tudeshk_carpet.glb",
    // *-*-*-*-
    "assets/Chair/basket_swing_chair.glb",
    "assets/Chair/chair.glb",
    // *-*-*-*-
    "assets/Clock/chronograph_watch_mudmaster.glb",
    "assets/Clock/clock.glb",
    // *-*-*-*-
    "assets/Decorating/gothic_chalice.glb",
    "assets/Decorating/hussar_on_horseback.glb",
    // *-*-*-*-
    "assets/Electronic_Device/3dObj.glb",
    "assets/Electronic_Device/2010_flat_screen_tv.glb",
    // *-*-*-*-
    "assets/Lampshade/3d_pbr_decorative_dream_lampshade_transmissive.glb",
    "assets/Lampshade/bowood_tref035.glb",
    // *-*-*-*-
    "assets/Mirror/desk_mirror.glb",
    "assets/Mirror/honeycomb_mirror.glb",
    // *-*-*-*-
    "assets/Sofa/modern__sofa.glb",
    "assets/Sofa/sofa.glb",
    // *-*-*-*-
    "assets/Table/antique_table.glb",
    "assets/Table/chinese_lacquer_shanxi_console_table.glb",
    // *-*-*-*-
    "assets/Wash_Basin/arteco325_bath.glb",
    "assets/Wash_Basin/basin.glb",
  ];

  // This getApplicationDocumentsDirectory call comes from the path_provider package
  final Directory docDir = await getApplicationDocumentsDirectory();
  final String docDirPath = docDir.path;

  await Future.wait(
    filesToCopy.map((String assetPath) async {
      // Create a new file in the documents directory with the asset file name
      String assetFilename = assetPath.split('/').last;
      File file = File('$docDirPath/$assetFilename');

      // Load the asset file from the assets folder
      final assetBytes = await rootBundle.load(assetPath);
      final buffer = assetBytes.buffer;

      // Write the asset file to the new file in the documents directory
      await file.writeAsBytes(
        buffer.asUint8List(
          assetBytes.offsetInBytes,
          assetBytes.lengthInBytes,
        ),
      );

      print("Copied $assetPath to ${file.path}");
    }),
  );

  print("Finished copying files to app's documents directory");
}

class ExampleList extends StatelessWidget {
  ExampleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final examples = [
      Example(
          'Debug Options',
          'Visualize feature points, planes and world coordinate system',
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => DebugOptionsWidget()))),
      Example(
          'Local & Online Objects',
          'Place 3D objects from Flutter assets and the web into the scene',
          () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LocalAndWebObjectsWidget()))),
      Example(
          'Anchors & Objects on Planes',
          'Place 3D objects on detected planes using anchors',
          () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ObjectsOnPlanesWidget()))),
      // Example(
      //     'Object Transformation Gestures',
      //     'Rotate and Pan Objects',
      //     () => Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => ObjectGesturesWidget()))),
      Example(
          'Screenshots',
          'Place 3D objects on planes and take screenshots',
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ScreenshotWidget()))),
      // Example(
      //     'Cloud Anchors',
      //     'Place and retrieve 3D objects using the Google Cloud Anchor API',
      //     () => Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => CloudAnchorWidget()))),
      // Example(
      //     'External Model Management',
      //     'Similar to Cloud Anchors example, but uses external database to choose from available 3D models',
      //     () => Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => ExternalModelManagementWidget())))
    ];
    return ListView(
      children:
          examples.map((example) => ExampleCard(example: example)).toList(),
    );
  }
}

class ExampleCard extends StatelessWidget {
  ExampleCard({Key? key, required this.example}) : super(key: key);
  final Example example;

  @override
  build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          example.onTap();
        },
        child: ListTile(
          title: Text(example.name),
          subtitle: Text(example.description),
        ),
      ),
    );
  }
}

class Example {
  const Example(this.name, this.description, this.onTap);
  final String name;
  final String description;
  final Function onTap;
}
