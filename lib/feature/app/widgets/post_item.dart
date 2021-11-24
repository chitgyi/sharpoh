import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFE0E0E0),
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
          ),
          const SizedBox(height: 10.0),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Icon(
                Icons.location_pin,
                color: Color(0xFF828282),
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Address",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      "No 123, MICT Park St, Yangon",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(height: 18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.monetization_on_outlined),
                  const SizedBox(width: 4.0),
                  Text(
                    "25,000 MMK",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.share_location_sharp),
                  const SizedBox(width: 4.0),
                  Text(
                    "Accept Delivery",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
