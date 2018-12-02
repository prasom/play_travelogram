import 'package:flutter/material.dart';
import 'profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.home, color: Colors.black)),
              new Tab(icon: Icon(Icons.search, color: Colors.grey)),
              new Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey)),
              new Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey)),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Travelogram',
                    style:
                        TextStyle(fontSize: 20.0, color: Colors.grey.shade900),
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    color: Colors.grey.shade500,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                    child: Hero(
                      tag: 'assets/myprofile.jpg',
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                                image: AssetImage('assets/myprofile.jpg'))),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new ProfilePage()));
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.navigation,
                        color: Colors.blue,
                      ),
                      iconSize: 50.0,
                      onPressed: () {},
                    ),
                    SizedBox(width: 5.0),
                    Padding(
                      padding: EdgeInsets.only(top: 27.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('TRIP 2018',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey.shade500)),
                          Text(
                            'Add and Update',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'FROM THE COMMUNITY',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            _buildImageGrid(),
            _imageGalleryDetail(),
            _buildImageGrid(),
            _imageGalleryDetail()
          ],
        ));
  }

  Widget _imageGalleryDetail() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Summer 2018',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(children: <Widget>[
                Text(
                  '25 added ',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Icon(
                  Icons.timer,
                  size: 4.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  '2h ago',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 11.0),
                )
              ])
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 7.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.share),
                ),
              ),
              SizedBox(
                width: 7.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.chat_bubble_outline),
                ),
              ),
              SizedBox(
                width: 7.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 22,
                  width: 22,
                  child: Icon(Icons.favorite_border),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return Padding(
        padding: EdgeInsets.only(top: 25, left: 15, right: 15),
        child: Container(
          height: 225,
          child: Row(
            children: <Widget>[
              Container(
                height: 225,
                width: MediaQuery.of(context).size.width / 2 + 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage('assets/beach1.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 111.5,
                    width: MediaQuery.of(context).size.width / 2 - 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/beach2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 111.5,
                    width: MediaQuery.of(context).size.width / 2 - 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/beach3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
