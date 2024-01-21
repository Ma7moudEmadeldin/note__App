import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActivated , required this.color});
  final bool isActivated;
  final Color color ; 
  @override
  Widget build(BuildContext context) {
    return isActivated
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 27,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 27,
            backgroundColor: color,
          );
  }
}

class colorListView extends StatefulWidget {
  const colorListView({super.key});

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
  int currentIndex = 0;
  List<Color> COLOR = [
    Colors.grey,
    Colors.blueGrey,
    Colors.brown,
    Colors.indigo,
    Colors.cyanAccent,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: COLOR.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(left: 6, right: 3),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: colorItem(color: COLOR[index],
                    isActivated: currentIndex == index,
                  )));
        },
      ),
    );
  }
}
