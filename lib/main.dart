import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.orange),
    home: new Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB tıklandı");
        },
        child: Icon(
          Icons.access_alarm,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: <Widget>[
          Text("Resim ve Buton Türleri",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),

          //IntrinsicHeight= Ekran boyutuna göre görünüm ayarlar
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/suzann.jpg"),
                        Text("Asset Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            "https://lh3.googleusercontent.com/proxy/8TjRoprzeoeozbXxzgJtuGAsWK0V0c6g0XC6k32VG_DhCfwVasOf_ynLsYipiT1-8kXoZaTAzPDhqSFP_AArpnDKRfAwRmejclTLXqJjMFSSNmjOBP8n-JWlFmp8r4Ql4YNdkljZ9vF-xi5t5715QH1TOw"),
                        Text("Network Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          child: Text("SUZU"),
                          backgroundColor: Colors.deepPurple,
                          radius: 30,
                          foregroundColor: Colors.amber,
                        ),
                        Text("Circle Avatar")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/suzann.jpg"),
                        Text("Asset Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //internette çekilen imagelerin yüklenme süresi beklenirken başka gif veya image ekleyebiliiz
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/gif.gif",
                            image:
                                "https://lh3.googleusercontent.com/proxy/8TjRoprzeoeozbXxzgJtuGAsWK0V0c6g0XC6k32VG_DhCfwVasOf_ynLsYipiT1-8kXoZaTAzPDhqSFP_AArpnDKRfAwRmejclTLXqJjMFSSNmjOBP8n-JWlFmp8r4Ql4YNdkljZ9vF-xi5t5715QH1TOw"),
                        Text("Fadein Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          child: Text("SUZU"),
                          backgroundColor: Colors.deepPurple,
                          radius: 30,
                          foregroundColor: Colors.amber,
                        ),
                        Text("Circle Avatar")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
