import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          children: [
            Text(
              "Chit Ye Aung",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 4.0),
            Text(
              "2 hr ago | 1 Route",
              style: Theme.of(context).textTheme.caption,
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ))
      ],
    );
  }
}
