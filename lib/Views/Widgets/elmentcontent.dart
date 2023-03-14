import 'package:flutter/material.dart';

class ElementContent extends StatelessWidget {
  const ElementContent({Key? key, this.title, this.value, this.isRow = false})
      : super(key: key);
  final title;
  final value;
  final bool isRow;
  @override
  Widget build(BuildContext context) {
    return isRow
        ? SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    child: Text(
                      "${title}",
                      style: TextStyle(
                          fontSize: isRow ? 10 : 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    child: Text(
                      "${value}",
                      style: TextStyle(
                          fontSize: isRow ? 10 : 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            height: 60,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      child: Text(
                        "${title}",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      child: Text(
                        "${value}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
