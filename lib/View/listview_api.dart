import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hive_db/Models/product_model.dart';

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class ListViewAPI extends StatefulWidget {
  const ListViewAPI({Key? key}) : super(key: key);

  @override
  _ListViewAPIState createState() => _ListViewAPIState();
}

class _ListViewAPIState extends State<ListViewAPI> {
  Future apiCall() async {
    http.Response response;
    response =
    await http.get(Uri.parse("https://api.client.macbro.uz/v1/product"));
    if (response.statusCode == 200) {
      setState(() {
        //  stringResponse = response.body;
        mapResponse = jsonDecode(response.body);

        listResponse = mapResponse!['products'];
        listResponse =
            listResponse!.map((e) => ProductModel.fromMap(e)).toList(); // Map all of the products in listResponse to a ProductModel object.
      });
    }
  }

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scrollbar(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Card(
                  child: Image.network(
                    listResponse![index].image!,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: InkWell(
                    child: IconButton(
                      onPressed: () async {
                        await Hive.box<ProductModel>('favorites_box').put(
                            listResponse![index].image, listResponse![index]);
                      },
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: listResponse == null ? 0 : listResponse!.length,
        ),
      ),
    );
  }
}