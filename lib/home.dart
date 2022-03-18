import 'dart:convert';

// import 'package:codehouse_tugas4/custom/album.dart';
import 'package:codehouse_tugas4/model/news.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "", email = "", urlnya = "";
  late SharedPreferences sharedPreferences;
  var loading = false;
  final list = <News>[];

  getPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      name = sharedPreferences.getString("name")!;
      email = sharedPreferences.getString("email")!;
    });
  }

  Future<void> _getData() async {
    String source = "techcrunch";
    String apikey = "ec965c38b5cf4a26a7ec1bb0305778a9";

    String apiURL = "https://newsapi.org/v2/top-headlines?sources=" +
        source +
        "&apiKey=" +
        apikey;

    list.clear();
    setState(() {
      loading = true;
    });

    var response = await http.get(Uri.parse(apiURL));
    var data = jsonDecode(response.body);
    var statusAPI = data['status'];

    if (statusAPI == "ok") {
      data['articles'].forEach((api) {
        final ab = News(
            api['author'].toString(),
            api['title'].toString(),
            api['description'].toString(),
            api['url'].toString(),
            api['urlToImage'].toString(),
            api['publishedAt'].toString(),
            api['content'].toString());
        list.add(ab);
        setState(() {
          urlnya = api['url'].toString();
          loading = false;
        });
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text(
              'Data tidak ditemukan!',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close')),
            ],
          );
        },
      );
    }
  }

  link() async {
    final link = urlnya;
    await launch('$link');
  }

  init() async {
    await getPref();
    _getData();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Ellipse.png"),
          ),
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'hi, $name!',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.notifications, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              final x = list[i];
              return Container(
                margin: EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 0.5, color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                ),
                child: Column(children: [
                  Text(
                    x.author,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    x.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 5),
                  Text(x.description),
                  SizedBox(height: 5),
                  InkWell(
                      onTap: () => link(), child: Image.network(x.urlToImage)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'click image for more detail',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    x.publishedAt,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 8),
                  Text(x.content),
                ]),
              );
            }),
      ),
    );
  }
}
