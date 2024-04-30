import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViewer {
  void show(BuildContext context, {String? image}) {
    showDialog(
        context: context,
        builder: (context) => Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image??"-"),
                    fit: BoxFit.fitHeight),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Icon(Icons.close,color: Colors.black,)),
              ),
            ),
          ),
        )
    );
  }
}
