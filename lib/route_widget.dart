import 'package:flutter/material.dart';
import 'package:hsl_timer/route.dart';

class HSLRouteWidget extends StatelessWidget {

  final HSLRoute route;

  const HSLRouteWidget({Key key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData transportIcon;
    if (route.transport == "TRAM") {
      transportIcon = Icons.tram;
    } else if(route.transport == "BUS") {
      transportIcon = Icons.directions_bus;
    } else {
      transportIcon = Icons.train;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 187, 79),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                  )),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    route.hours.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "h",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        route.stopName,
                        style: TextStyle(
                          color: Color.fromARGB(255, 100, 108, 121),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        route.stopCode,
                        style: TextStyle(
                          color: Color.fromARGB(255, 100, 108, 121),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    indent: 1,
                  ),
                  Row(
                    children: [
                      Icon(
                        transportIcon,
                        size: 30,
                        color: Color.fromARGB(255, 105, 104, 148),
                      ),
                      SizedBox(width: 5),
                      Text(
                        route.route,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 105, 104, 148),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Color.fromARGB(255, 105, 104, 148),
                      ),
                      SizedBox(width: 5),
                      Text(
                        route.destination,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 105, 104, 148),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
