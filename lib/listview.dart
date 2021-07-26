import 'package:flutter/material.dart';



 /* lv(itemCount, scrollDirection) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      // itemCount: 7,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        var data = snapshot.data.docs[index].data();
        String playlistId = data['playlist_id'].toString();
        String playlistname = data['playlist_name'].toString();
        String playlisturl = data['playlist_url'].toString();

        print(playlistname);

        return GridTile(
          child: GestureDetector(
            onTap: () async {
              navigateToPlaylistScreen(
                  context, playlistId, playlistname, playlisturl);
            },
            child: Column(
              children: [
                GridTile(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        *//*
                                    Marquee(
                                        child: Container(width: 1000,
                                          child: Column(
                                            children: <Widget>[
                                             *//* *//* Marquee(
                                                  child: Container(
                                                      width: 50,height: 50,
                                                      child: Image.network(
                                                        "https://cdn-images-1.medium.com/max/1000/1*upTyVPOfBb0c4o1r57C9_w.png",
                                                        fit: BoxFit.fitWidth,
                                                      ))),
                                              Text(
                                                "Flutter is a free and open source Google mobile UI ",
                                                style: TextStyle(fontSize: 16),
                                              ),*//* *//*
                                            ],
                                          ),
                                        )),*//*
                      ],
                    ),
                  ),
                ),
                Container(

                  // padding: EdgeInsets.only(left: 5, right: 5),
                  margin: EdgeInsets.only(left: 5, right: 5),
                  child: CachedNetworkImage(
                    imageUrl: playlisturl,
                    imageBuilder: (context, imageProvider) =>
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover),
                          ),
                        ),
                    placeholder: (context, url) => placeHolder(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    playlistname,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );



*//*

ListView.builder(
scrollDirection: Axis.horizontal,
// itemCount: 7,
itemCount: snapshot.data.docs.length,
itemBuilder: (context, index) {})*//*
*/