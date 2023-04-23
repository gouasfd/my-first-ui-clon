import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Raleway",
        brightness: Brightness.dark,
      ),
      home: Movie(),
    );
  }
}

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    " Daizy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(width: 70),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/valorant.jpg"),
                    radius: 30,
                  )
                ],
              ),
              Text("check for lastes addition"),
              SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[400],
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.speaker, color: Colors.grey),
                    hintText: "enter the game name",
                    hintStyle: TextStyle(
                        color: Colors.grey[850], fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "filters",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Iconholder(
                    icon: Icons.star,
                    title: "star",
                  ),
                  Iconholder(
                    icon: Icons.work_outline_sharp,
                    title: "work",
                  ),
                  Iconholder(
                    icon: Icons.workspace_premium_outlined,
                    title: "achivments",
                  ),
                  Iconholder(
                    icon: Icons.widgets,
                    title: "widget",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Featred series",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.34,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: PageView(scrollDirection: Axis.horizontal, children: [
                    Featred(
                      pic:
                          "https://hardcore-gamer.s3.amazonaws.com/uploads/2015/04/the-last-of-us-box-art.jpg",
                    ),
                    Featred(
                        pic:
                            "https://cdn.tutsplus.com/cdn-cgi/image/width=600/psd/uploads/legacy/psdtutsarticles/linkb_60vgamecovers/44.jpg"),
                    Featred(
                        pic:
                            "https://www.shortlist.com/media/images/2019/05/50-greatest-video-game-covers-174-1556729304-UWYO-column-width-inline.jpg"),
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.play_circle_rounded),
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Featred extends StatelessWidget {
  final pic;
  const Featred({super.key, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
        BoxShadow(offset: Offset(4, 4)),
      ]),
      child: Image(
        image: NetworkImage(pic),
        fit: BoxFit.fill,
      ),
    );
  }
}

//---------------------------------------
class Iconholder extends StatelessWidget {
  final icon;
  final title;
  const Iconholder({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 12, top: 13),
                  child: Icon(
                    icon,
                    size: 30,
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}
