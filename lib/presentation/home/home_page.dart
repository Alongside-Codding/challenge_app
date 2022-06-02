import 'package:auto_route/auto_route.dart';
import 'package:challenge_app/presentation/osm_page/osm_page.dart';
import 'package:challenge_app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SizedBox(
        height: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.router.push(const OsmRoute());
                  },
                  child: const Text("Go to map")),
              ElevatedButton(
                  onPressed: () {
                    context.router.push(const GaleryRoute());
                  },
                  child: const Text("Go to galery"))
            ]),
      ),
    );
  }
}
