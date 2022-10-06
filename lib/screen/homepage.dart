import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_data_used/controller/controller.dart';
import 'package:model_data_used/main.dart';
import 'package:model_data_used/screen/details_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final dataFatch = ControllerInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Model Data"),
      ),
      body: ListView.builder(
          itemCount: dataFatch.modeInfoContro.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                            image: dataFatch.modeInfoContro[index].Image,
                            id: dataFatch.modeInfoContro[index].Id.toString(),
                            name: dataFatch.modeInfoContro[index].Name,
                            unniversity:
                                dataFatch.modeInfoContro[index].University,
                            homeDistric:
                                dataFatch.modeInfoContro[index].HomeDistic)));
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 5),
                              blurRadius: 0.2,
                              color: Colors.cyanAccent.withOpacity(0.3)),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: double.infinity,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              dataFatch.modeInfoContro[index].Image.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ID: ${dataFatch.modeInfoContro[index].Id}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "${dataFatch.modeInfoContro[index].Name}",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "${dataFatch.modeInfoContro[index].University}",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                  "${dataFatch.modeInfoContro[index].HomeDistic}",
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
