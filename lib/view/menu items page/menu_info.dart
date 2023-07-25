import 'package:flutter/material.dart';

int quantity = 1;
double total = 30.25;

class InfoPage extends StatefulWidget {
  @override
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color.fromARGB(255, 91, 114,163),
      elevation: 0,
      )   ,  
       backgroundColor: Color.fromARGB(255, 91, 114,163),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          // Colors.lightBlue[500],
                          // Colors.lightBlueAccent[100],
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Column(
                      children: [
                         Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Italian Choco Cake",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        itemCake(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ((MediaQuery.of(context).size.width - 175) / 2),
                      top: (MediaQuery.of(context).size.height+175) / 5),
                  child: Hero(
                    tag: "cakeitem",
                    child: ClipOval(
                      child: Container(
                        child: Image.asset(
                          "assets/images/cake.jpg",
                          fit: BoxFit.cover,
                          width: 175,
                          height: 175,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 25),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(250),
                        ),
                        width: 100,
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: remove,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Text(
                                "$quantity",
                                style: const TextStyle(
                                    //color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: add,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Total amount"),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("\Rs$total"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue[400],
                          child: const Text("Place Order",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void add() {
    setState(() {
      quantity = quantity + 1;
      total = 30.25 * quantity;
    });
  }

  void remove() {
    setState(() {
      if (quantity > 1) {
        quantity = quantity - 1;
        total = 30.25 * quantity;
      }
    });
  }
  
  RaisedButton({required RoundedRectangleBorder shape, Color? color, required Text child, required Null Function() onPressed}) {}
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height /1.3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget itemCake() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Dark Belgium chocolate",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Cold",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Fresh",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
             Column(
              children: <Widget>[
                Text(
                  "\$30.25",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black54),
                ),
                Text(
                  "per Quantity",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Colors.black),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 5,
            ),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          ],
        ),
      ],
    ),
  );
}