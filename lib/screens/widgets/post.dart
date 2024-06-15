import 'package:flutter/material.dart';

Widget post() {
  return Container(
    height: 350,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            SizedBox(
              height: 50,
              child: CircleAvatar(
                child: Image.asset('assets/user.png'),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 140,
              child: ListTile(
                title: Text('Joshua'),
                subtitle: Text('Tokyo, Japan'),
              ),
            ),
            // Icon(Icons.add_more)
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 240,
          width: double.infinity,
          child: Image.asset('assets/home_img.png', fit: BoxFit.fitWidth),
        ),
        const SizedBox(height: 5),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.favorite_outline, size: 28),
            // SizedBox(width: 5),
            Icon(Icons.maps_ugc_outlined, size: 28),
            // SizedBox(width: 5),
            Icon(Icons.share, size: 28),
            SizedBox(width: 150),
            Icon(Icons.bookmark_outline, size: 28),
          ],
        ),
      ],
    ),
  );
}
