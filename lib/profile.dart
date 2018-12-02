import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'assets/myprofile.jpg',
                  child: Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        image: DecorationImage(
                            image: AssetImage('assets/myprofile.jpg'))),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Pornsak Prasom',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'BKK, Thailand',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '24K',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'FOLLOWERS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '10',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'TRIPS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'BUCKET LIST',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.table_chart),
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                _buildImage(),
                _buildInfoDetail(),
                _buildImage(),
                _buildInfoDetail()
              ],
            )
          ],
        ));
  }

  Widget _buildImage() {
    return Padding(
        padding: EdgeInsets.only(top: 25, left: 15, right: 15),
        child: Container(
          height: 225,
          child: Container(
            height: 225,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/beach1.jpg'), fit: BoxFit.cover)),
          ),
        ));
  }

  Widget _buildInfoDetail() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Summer - 12 Days',
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
}
