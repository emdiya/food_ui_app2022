import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String? title;
  final bool? isSeleted;

  const FilterButton({Key? key, this.title, this.isSeleted = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8),
        child: OutlinedButton(
          onPressed: () {},
          //color: isSeleted! ? Colors.green : Colors.white,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          child: Text(
            title!,
            style: TextStyle(
                color: isSeleted! == true ? Colors.blue : Colors.black54),
          ),
        ));
  }
}
