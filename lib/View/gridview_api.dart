import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class GridViewAPI extends StatefulWidget {
  const GridViewAPI({Key? key}) : super(key: key);

  @override
  _GridViewAPIState createState() => _GridViewAPIState();
}

class _GridViewAPIState extends State<GridViewAPI> {
  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://api.client.macbro.uz/v1/category"));
    if(response.statusCode == 200) {
      setState(() {
        //  stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        listResponse = mapResponse!['categories'];
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
      home: GridView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Image.network(
              listResponse![index]['image'],
            ),
          );
        },
        itemCount: listResponse == null ? 0 : listResponse!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
