import 'package:flutter/material.dart';

// height - width =  75
class Iconwidgets {
  SizedBox zero() {
    return const SizedBox(
      height: 22.5,
      width: 22.5,
      child: Icon(Icons.circle_outlined,
          shadows: [
            Shadow(
              blurRadius: 25.0,
              color: Colors.greenAccent,
            ),
          ],
          color: Color.fromARGB(255, 13, 228, 20),
          size: 15),
    );
  }

  SizedBox cross() {
    return const SizedBox(
      height: 22.5,
      width: 22.5,
      child: Icon(Icons.close,
          shadows: [
            Shadow(
              blurRadius: 25.0,
              color: Colors.red,
            ),
          ],
          color: Colors.redAccent,
          size: 20),
    );
  }

  Container ver_bottom() {
    return Container(
      height: 22.5,
      width: 3.75,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(1.25),
            bottomLeft: Radius.circular(1.25)),
        border: Border(
          left: BorderSide(color: Colors.white, width: 0.4),
          right: BorderSide(color: Colors.white, width: 0.4),
          bottom: BorderSide(color: Colors.white, width: 0.4),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 3.75, blurStyle: BlurStyle.outer, color: Colors.white)
        ],
      ),
    );
  }

  Container hor_left() {
    return Container(
      height: 3.75,
      width: 22.5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1.25),
              topLeft: Radius.circular(1.25)),
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.4),
            bottom: BorderSide(color: Colors.white, width: 0.4),
            left: BorderSide(color: Colors.white, width: 0.4),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.75,
                blurStyle: BlurStyle.outer,
                color: Colors.white)
          ]),
    );
  }

  Container hor_right() {
    return Container(
      height: 3.75,
      width: 22.5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(1.25),
              topRight: Radius.circular(1.25)),
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.4),
            bottom: BorderSide(color: Colors.white, width: 0.4),
            right: BorderSide(color: Colors.white, width: 0.4),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.75,
                blurStyle: BlurStyle.outer,
                color: Colors.white)
          ]),
    );
  }

  SizedBox blank_box() {
    return const SizedBox(
      height: 22.5,
      width: 22.5,
    );
  }

  SizedBox middel_box() {
    return const SizedBox(
      height: 3.75,
      width: 3.75,
    );
  }

  Container middel_hor() {
    return Container(
      height: 3.75,
      width: 22.5,
      decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.4),
            bottom: BorderSide(color: Colors.white, width: 0.4),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.75,
                blurStyle: BlurStyle.outer,
                color: Colors.white)
          ]),
    );
  }

  Container middel_ver() {
    return Container(
      height: 22.5,
      width: 3.75,
      decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.white, width: 0.4),
            right: BorderSide(color: Colors.white, width: 0.4),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.75,
                blurStyle: BlurStyle.outer,
                color: Colors.white)
          ]),
    );
  }

  Container top_ver() {
    return Container(
      height: 22.5,
      width: 3.75,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.25), topRight: Radius.circular(1.25)),
        border: Border(
          left: BorderSide(color: Colors.white, width: 0.4),
          top: BorderSide(color: Colors.white, width: 0.4),
          right: BorderSide(color: Colors.white, width: 0.4),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 3.5, blurStyle: BlurStyle.outer, color: Colors.white),
        ],
      ),
    );
  }
}

// height - width = 75
class Icon2Class {
  Iconwidgets _iconwidgets = Iconwidgets();
  SizedBox completeIcon() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Row(
            children: [
              _iconwidgets.zero(),
              _iconwidgets.top_ver(),
              _iconwidgets.blank_box(),
              _iconwidgets.top_ver(),
              _iconwidgets.cross(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.hor_left(),
              _iconwidgets.middel_box(),
              _iconwidgets.middel_hor(),
              _iconwidgets.middel_box(),
              _iconwidgets.hor_right(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.cross(),
              _iconwidgets.middel_ver(),
              _iconwidgets.zero(),
              _iconwidgets.middel_ver(),
              _iconwidgets.zero(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.hor_left(),
              _iconwidgets.middel_box(),
              _iconwidgets.middel_hor(),
              _iconwidgets.middel_box(),
              _iconwidgets.hor_right(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.blank_box(),
              _iconwidgets.ver_bottom(),
              _iconwidgets.blank_box(),
              _iconwidgets.ver_bottom(),
              _iconwidgets.cross(),
            ],
          ),
        ],
      ),
    );
  }
}

// height - width =  100
class IconClass {
  Icon2widgets _iconwidgets = Icon2widgets();
  SizedBox completeIcon() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Row(
            children: [
              _iconwidgets.zero(),
              _iconwidgets.top_ver(),
              _iconwidgets.blank_box(),
              _iconwidgets.top_ver(),
              _iconwidgets.cross(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.hor_left(),
              _iconwidgets.middel_box(),
              _iconwidgets.middel_hor(),
              _iconwidgets.middel_box(),
              _iconwidgets.hor_right(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.cross(),
              _iconwidgets.middel_ver(),
              _iconwidgets.zero(),
              _iconwidgets.middel_ver(),
              _iconwidgets.zero(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.hor_left(),
              _iconwidgets.middel_box(),
              _iconwidgets.middel_hor(),
              _iconwidgets.middel_box(),
              _iconwidgets.hor_right(),
            ],
          ),
          Row(
            children: [
              _iconwidgets.blank_box(),
              _iconwidgets.ver_bottom(),
              _iconwidgets.blank_box(),
              _iconwidgets.ver_bottom(),
              _iconwidgets.cross(),
            ],
          ),
        ],
      ),
    );
  }
}

// height - width =  100
class Icon2widgets {
  SizedBox zero() {
    return const SizedBox(
      height: 30,
      width: 30,
      child: Icon(Icons.circle_outlined,
          shadows: [
            Shadow(
              blurRadius: 33.33,
              color: Colors.greenAccent,
            ),
          ],
          color: Color.fromARGB(255, 13, 228, 20),
          size: 20),
    );
  }

  SizedBox cross() {
    return const SizedBox(
      height: 30,
      width: 30,
      child: Icon(Icons.close,
          shadows: [
            Shadow(
              blurRadius: 33.33,
              color: Colors.red,
            ),
          ],
          color: Colors.redAccent,
          size: 26.67),
    );
  }

  Container ver_bottom() {
    return Container(
      height: 30,
      width: 5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(1.67),
            bottomLeft: Radius.circular(1.67)),
        border: Border(
          left: BorderSide(color: Colors.white, width: 0.53),
          right: BorderSide(color: Colors.white, width: 0.53),
          bottom: BorderSide(color: Colors.white, width: 0.53),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 5, blurStyle: BlurStyle.outer, color: Colors.white)
        ],
      ),
    );
  }

  Container hor_left() {
    return Container(
      height: 5,
      width: 30,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1.67),
              topLeft: Radius.circular(1.67)),
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.53),
            bottom: BorderSide(color: Colors.white, width: 0.53),
            left: BorderSide(color: Colors.white, width: 0.53),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 5, blurStyle: BlurStyle.outer, color: Colors.white)
          ]),
    );
  }

  Container hor_right() {
    return Container(
      height: 5,
      width: 30,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(1.67),
              topRight: Radius.circular(1.67)),
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.53),
            bottom: BorderSide(color: Colors.white, width: 0.53),
            right: BorderSide(color: Colors.white, width: 0.53),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 5, blurStyle: BlurStyle.outer, color: Colors.white)
          ]),
    );
  }

  SizedBox blank_box() {
    return const SizedBox(
      height: 30,
      width: 30,
    );
  }

  SizedBox middel_box() {
    return const SizedBox(
      height: 5,
      width: 5,
    );
  }

  Container middel_hor() {
    return Container(
      height: 5,
      width: 30,
      decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.53),
            bottom: BorderSide(color: Colors.white, width: 0.53),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 5, blurStyle: BlurStyle.outer, color: Colors.white)
          ]),
    );
  }

  Container middel_ver() {
    return Container(
      height: 30,
      width: 5,
      decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.white, width: 0.53),
            right: BorderSide(color: Colors.white, width: 0.53),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 5, blurStyle: BlurStyle.outer, color: Colors.white)
          ]),
    );
  }

  Container top_ver() {
    return Container(
      height: 30,
      width: 5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.67), topRight: Radius.circular(1.67)),
        border: Border(
          left: BorderSide(color: Colors.white, width: 0.53),
          top: BorderSide(color: Colors.white, width: 0.53),
          right: BorderSide(color: Colors.white, width: 0.53),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 4.67,
              blurStyle: BlurStyle.outer,
              color: Colors.white),
        ],
      ),
    );
  }
}
