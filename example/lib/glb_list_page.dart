import 'dart:io';

import 'package:ar_flutter_plugin_example/examples/objectgesturesexample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class GlbListPage extends StatelessWidget {
  GlbListPage({super.key});

  final List<String> title = [
    'Bed',
    'Bookshelve',
    'Carpet',
    'Chair',
    'Clock',
    'Decorating',
    'Electronic_Device',
    'Lampshade',
    'Mirror',
    'Sofa',
    'Table',
    'Wash_Basin',
  ];
  List<String> bookShelve = [
    "assets/Bookshelve/bookcase.glb",
    "assets/Bookshelve/bookcase_tall_with_books.glb",
  ];
  List<String> carpet = [
    "assets/Carpet/antique_turkish_runner_carpet.glb",
    "assets/Carpet/old_persian_tudeshk_carpet.glb",
  ];
  List<String> bed = [
    "assets/Bed/bed1.glb",
    "assets/Bed/bed2.glb",
  ];
  List<String> chair = [
    "assets/Chair/basket_swing_chair.glb",
    "assets/Chair/chair.glb",
  ];
  List<String> clock = [
    "assets/Clock/chronograph_watch_mudmaster.glb",
    "assets/Clock/clock.glb",
  ];
  List<String> decorating = [
    "assets/Decorating/gothic_chalice.glb",
    "assets/Decorating/hussar_on_horseback.glb",
  ];
  List<String> electronic_Device = [
    "assets/Electronic_Device/3dObj.glb",
    "assets/Electronic_Device/2010_flat_screen_tv.glb",
  ];
  List<String> lampshade = [
    "assets/Lampshade/3d_pbr_decorative_dream_lampshade_transmissive.glb",
    "assets/Lampshade/bowood_tref035.glb",
  ];
  List<String> mirror = [
    "assets/Mirror/desk_mirror.glb",
    "assets/Mirror/honeycomb_mirror.glb",
  ];
  List<String> sofa = [
    "assets/Sofa/modern__sofa.glb",
    "assets/Sofa/sofa.glb",
  ];
  List<String> table = [
    "assets/Table/antique_table.glb",
    "assets/Table/chinese_lacquer_shanxi_console_table.glb",
  ];
  List<String> washBasin = [
    "assets/Wash_Basin/arteco325_bath.glb",
    "assets/Wash_Basin/basin.glb",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: title.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          switch (index){
            case 0: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: bed,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 1: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: bookShelve,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 2: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: carpet,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 3: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: chair,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 4: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: clock,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 5: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: decorating,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 6: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: electronic_Device,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 7: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: lampshade,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 8: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: mirror,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 9: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: sofa,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 10: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: table,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );
            case 11: return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GlbItemListPage(glbAssets: washBasin,)));
              },
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 80,
                  child: Text(title[index])),
            );

          }
        },
      ),
    );
  }
}

class GlbItemListPage extends StatefulWidget {
  const GlbItemListPage({super.key,required this.glbAssets});
  final List<String> glbAssets ;
  @override
  State<StatefulWidget> createState()=>_GlbStateList();

}
  class _GlbStateList extends State<GlbItemListPage>{
  @override
  void initState() {
    super.initState();
    copyAssetModelsToDocumentDirectory();
  }

  Future<void> copyAssetModelsToDocumentDirectory() async {
    // CHANGE THESE TO YOUR ASSET FILES


    // This getApplicationDocumentsDirectory call comes from the path_provider package
    final Directory docDir = await getApplicationDocumentsDirectory();
    final String docDirPath = docDir.path;

    await Future.wait(
      widget.glbAssets.map((String assetPath) async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount:  widget.glbAssets.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {

              // print("${filesToCopy[index].split('/')[2]}*-*-*--**-");
              //
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ObjectGesturesWidget(glbFile:  widget.glbAssets[index].split('/')[2]);
              },));
            },
            child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: 80,
                child: Text( widget.glbAssets[index])),
          );
        },
      ),
    );
  }
}
