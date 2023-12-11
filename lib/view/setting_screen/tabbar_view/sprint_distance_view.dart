

import 'package:flutter/material.dart';

class SprintDistanceView extends StatefulWidget {
  const SprintDistanceView({Key? key}) : super(key: key);

  @override
  State<SprintDistanceView> createState() => _SprintDistanceViewState();
}

class _SprintDistanceViewState extends State<SprintDistanceView> {
  List<String> distances = ['100m', '200m', '300m', '400m'];
  List<bool> distanceSelections = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: List.generate(distances.length, (index) {
                return Row(
                  children: [
                    Checkbox(
                       activeColor:Color(0xff8338EC),
                      checkColor:Colors.white ,
                      value: distanceSelections[index],
                      onChanged: (value) {
                        setState(() {
                          distanceSelections[index] = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        distances[index],
                        style: TextStyle(fontSize: 16,color: distanceSelections[index]==true?Color(0xff8338EC):Colors.black),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
