import 'package:flutter/material.dart';

class PageNumber extends StatelessWidget {
  const PageNumber({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('1'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('2'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('3'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('4'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('5'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('6'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('7'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('8'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('9'),
          ),
        ),
        SizedBox(width: 10),
        ButtonTheme(
          minWidth: 40,
          height: 40,
          child: OutlineButton(
            onPressed: () {},
            child: Text('10'),
          ),
        )
      ],
    );
  }
}
