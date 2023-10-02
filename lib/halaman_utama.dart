import 'package:flutter/material.dart';
import 'package:quiz_mobile/disease_data.dart';
import 'package:quiz_mobile/halaman_detail.dart';

class halaman_utama extends StatelessWidget {
  const halaman_utama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Diseases"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: listDisease.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            final Diseases virus = listDisease[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return halaman_detail(virus: virus);
                }));
              },
              child: Flexible(
                  child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Image.network(virus.imgUrls),
                    ),
                    SizedBox(height: 4),
                    Text(virus.name),
                  ],
                ),
              )),
            );
          }),
    );
  }
}
