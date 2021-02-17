import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palette_generator/palette_generator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kategoriler"),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.network(
                  "https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg",
                  fit: BoxFit.fill,
                )),
                Positioned(
                  bottom: 0,
                  child: ClipRect(
                    child: new BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.2)),
                        child: new Center(
                          child: new Text(
                            'KAVRAMLAR',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
