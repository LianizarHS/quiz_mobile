import 'package:flutter/material.dart';
import 'package:quiz_mobile/disease_data.dart';
import 'package:url_launcher/url_launcher.dart';

class halaman_detail extends StatelessWidget {
  final Diseases virus;

  const halaman_detail({super.key, required this.virus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail deseases"),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ListView(children: [
            Image.network(virus.imgUrls),
            Text(
              virus.name,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              "Plant Name",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                height: 1,
              ),
            ),
            Text(
              virus.plantName,
              textAlign: TextAlign.center,
              style: TextStyle(height: 3),
            ),
            Text(
              "Symptom",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, height: 1),
            ),
            Text(
              virus.symptom,
              textAlign: TextAlign.center,
              style: TextStyle(height: 3),
            ),
            Text(
              "Ciri-ciri",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, height: 1),
            ),
            Text(
              virus.nutshell[0],
              textAlign: TextAlign.center,
              style: TextStyle(height: 3),
            ),
            Text(
              "Disease ID",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, height: 1),
            ),
            Text(
              virus.id,
              textAlign: TextAlign.center,
              style: TextStyle(height: 3),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launcurl(virus.imgUrls);
        },
        child: Icon(Icons.search),
      ),
    );
  }

  Future<void> _launcurl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception("gagal buka link : $_url");
    }
  }
}
