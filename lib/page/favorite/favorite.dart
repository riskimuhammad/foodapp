import 'package:flutter/material.dart';
import 'package:foodapp/core/data/moor_database.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:foodapp/widget/common/common_size.dart';
import 'package:provider/provider.dart';

class FavirePage extends StatefulWidget {
  const FavirePage({Key key}) : super(key: key);

  @override
  _FavirePageState createState() => _FavirePageState();
}

class _FavirePageState extends State<FavirePage> {
  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    final _scafoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scafoldKey,
      body: Container(
        height: heightScreen,
        width: widthScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: Text(
                "My Favorit",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            _buildFavirePageList(context, database, _scafoldKey)
          ],
        ),
      ),
    );
  }

  _buildFavirePageList(
      context, AppDatabase database, GlobalKey<ScaffoldState> scaffolddKey) {
    return StreamBuilder(
        stream: database.wacthAllData(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return SizedBox();
          }
          return Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      width: widthScreen,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: wColor),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: NetworkImage(snapshot
                                          .data[index].image
                                          .toString()),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 150,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data[index].name.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                      Text(
                                        snapshot.data[index].categories
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(
                                        snapshot.data[index].tags.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        final favorites = FavoriteData(
                                            id: snapshot.data[index].id,
                                            name: snapshot.data[index].name,
                                            image: snapshot.data[index].image,
                                            categories:
                                                snapshot.data[index].categories,
                                            tags: snapshot.data[index].tags,
                                            idMeal: snapshot.data[index].idMeal,
                                            completed: true);
                                        database.deleteFavorite(favorites);
                                        scaffolddKey.currentState.showSnackBar(
                                            SnackBar(
                                                content:
                                                    Text("Success deleted")));
                                      }),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
