import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ZoomImage extends StatefulWidget {
    final String materia;
  final String descripcion;
  final String imageUrl;
  ZoomImage({Key key,@required this.materia,@required this.descripcion,@required this.imageUrl}) : super(key: key);

  @override
  _ZoomImageState createState() => _ZoomImageState();
}

class _ZoomImageState extends State<ZoomImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.materia}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
                child: PhotoView(
              imageProvider: NetworkImage("${widget.imageUrl}"),
            )),

            // SizedBox(height: 48), https://i.imgur.com/tKg0XEb.jpg
            Text("${widget.descripcion}"),
          ],
        ),
      ),
    );
  }
}