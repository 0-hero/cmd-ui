import 'package:flutter/material.dart';

class UbuntuTerminal extends StatelessWidget {
  const UbuntuTerminal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff570003f),
            Color(0xfff57453),
          ],
          begin: Alignment.bottomLeft,
          stops: [0, 100],
        ),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.95,
          child: Material(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            color: Color.fromRGBO(56, 4, 40, .9),
            type: MaterialType.canvas,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff504b45),
                        Color(0xff3c3b37),
                      ],
                      stops: [0, 100],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: <Widget>[
                        ToolbarButton(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEF6E4E),
                              Color(0xffE4582B),
                            ],
                            stops: [0, 100],
                          ),
                          child: Icon(
                            Icons.close,
                            size: 12,
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ToolbarButton(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff7d7871),
                              Color(0xff595953),
                            ],
                            stops: [0, 100],
                          ),
                          child: Text(
                            "-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ToolbarButton(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff7d7871),
                              Color(0xff595953),
                            ],
                            stops: [0, 100],
                          ),
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "ram@ubuntu:~",
                          style: TextStyle(color: Color(0xffd5d0ce)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "usage: ram [option] \nTry 'ram --help' for more information",
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "(0-hero) ram@ubuntu:~\$",
                            style: TextStyle(
                              color: Color(0xff87d441),
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              autofocus: true,
                              showCursor: true,
                              maxLines: 15,
                              cursorColor: Colors.white,
                              cursorWidth: 6,
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.3,
                                fontSize: 18,
                              ),
                              decoration:
                                  InputDecoration.collapsed(hintText: ""),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ToolbarButton extends StatelessWidget {
  final LinearGradient gradient;
  final Widget child;

  const ToolbarButton({Key? key, required this.gradient, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle, gradient: gradient),
      child: child,
    );
  }
}
