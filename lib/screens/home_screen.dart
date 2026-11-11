import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning', style: AppStyles.headlineStyle3),
                  SizedBox(height: 5),
                  Text('Book Tickets', style: AppStyles.headlineStyle1),
                ],
              ),
            ),
            const SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                semanticLabel: 'Book Tickets logo',
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text('Search icon')),
            SizedBox(width: 12),
            Flexible(child: Text('Empty space', textAlign: TextAlign.end)),
          ],
        ),
      ],
    );
  }
}
