import 'package:flutter/material.dart';
import 'package:tiktok/resources/dimen.dart';

class NextPage extends StatefulWidget {
  static const routeName = '/next';

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            child: Text(
              'PROFILE',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.view_headline,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Container(
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Container(
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  width: 140.0,
                                  height: 140.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      image: new ExactAssetImage(
                                          'assets/images/cr7.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: Dimen.defaultTextSpacing,
                                  bottom: Dimen.defaultTextSpacing),
                              child: Text(
                                "@Shivam Mehta",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text('1'),
                                      Text('Following'),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('100M'),
                                      Text('Following'),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('100M'),
                                      Text('Likes'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 45,
                                    width: 130,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.view_list,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: 150,
                                        width: width * 0.3,
                                        child: Image.asset(
                                          'assets/images/tree.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        width: width * 0.3,
                                        child: Image.asset(
                                          'assets/images/eclipse.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        width: width * 0.3,
                                        child: Image.asset(
                                          'assets/images/wings.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 150,
                                        width: width * 0.3,
                                        child: Image.asset(
                                          'assets/images/forest.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        height: 150,
                                        width: width * 0.3,
                                        child: Image.asset(
                                          'assets/images/heart.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
