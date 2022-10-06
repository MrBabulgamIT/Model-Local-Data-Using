import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsPage extends StatelessWidget {
  String? image;
  String id;
  String? name;
  String? unniversity;
  String? homeDistric;
  DetailsPage(
      {Key? key,
      required this.image,
      required this.id,
      required this.name,
      required this.unniversity,
      required this.homeDistric})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 0.2,
                        color: Colors.cyanAccent.withOpacity(0.3)),

                    // BoxShadow(
                    //   blurRadius: 2,
                    //   color: Colors.cyanAccent,
                    //   offset: Offset(0, 1),
                    // )
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  image.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ID: ${id}",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Name: ${name}",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "University: ${unniversity}",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Text("Home District: ${homeDistric}",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
