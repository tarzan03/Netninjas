import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NinjaID()));

class NinjaID extends StatefulWidget {
  @override
  _NinjaIDState createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {
  int followers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Ninja ID Card',
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ninja_hathori.jpg'),
                    radius: 55.0,
                  ),
                ),
              ),
              Divider(
                height: 80.0,
                color: Colors.deepOrangeAccent,
                thickness: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'NAME',
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                      color: Colors.blueGrey),
                ),
              ),
              Text(
                'Ninja Hathori',
                style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 28.0,
                    color: Colors.deepOrangeAccent),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'USERNAME',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 18.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Text(
                'ninja_hathori',
                style: TextStyle(
                  letterSpacing: 3.0,
                  fontSize: 28.0,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'ID NUMBER',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 18.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Text(
                '187563',
                style: TextStyle(
                  letterSpacing: 3.0,
                  fontSize: 28.0,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  'FOLLOWERS',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontSize: 18.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Text(
                '$followers',
                style: TextStyle(
                  letterSpacing: 3.0,
                  fontSize: 28.0,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              SizedBox(height: 80.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        followers += 1;
                      });
                    },
                    child: Text(
                      'FOLLOW',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontSize: 20.0,
                        color: Colors.grey[50],
                      ),
                    ),
                    color: Colors.deepOrangeAccent,
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        followers -= 1;
                      });
                    },
                    child: Text(
                      'UNFOLLOW',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontSize: 20.0,
                        color: Colors.grey[50],
                      ),
                    ),
                    color: Colors.deepOrangeAccent,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
