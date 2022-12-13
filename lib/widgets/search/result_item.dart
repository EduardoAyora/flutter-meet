import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  const ResultItem({
    super.key,
    required this.imageUrl,
    required this.date,
    required this.name,
  });

  final imageUrl;
  final name;
  final date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                image: NetworkImage(
                    'https://d20zx9sjn15rrf.cloudfront.net/assets/$imageUrl}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(date),
                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.onTertiary,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
