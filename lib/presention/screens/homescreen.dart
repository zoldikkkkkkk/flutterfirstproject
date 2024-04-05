import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 124,
              height: 124,
              child: Image.asset('assets/mm.png'),
            ),
          ),
          const Text(
            'Connect your wearables',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Buttonchange(imageBrand: 'assets/i1.png', nameBrand: 'Apple'),
          const SizedBox(
            height: 20,
          ),
          const Buttonchange(
              imageBrand: 'assets/i3.png', nameBrand: 'Concept2'),
          const SizedBox(
            height: 20,
          ),
          const Buttonchange(imageBrand: 'assets/ii2.png', nameBrand: 'Eight'),
          const SizedBox(
            height: 20,
          ),
          const Buttonchange(imageBrand: 'assets/ii4.png', nameBrand: 'FitBit'),
          const SizedBox(
            height: 20,
          ),
          const Buttonchange(imageBrand: 'assets/ii5.png', nameBrand: 'Garmin'),
          const SizedBox(
            height: 20,
          ),
          const Buttonchange(
              imageBrand: 'assets/ii6.png', nameBrand: 'Google Fit'),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class Buttonchange extends StatelessWidget {
  const Buttonchange({
    super.key,
    required this.imageBrand,
    required this.nameBrand,
  });
  final String imageBrand;
  final String nameBrand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 64,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0, 4),
              blurRadius: 4)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(children: [
          Image.asset(
            imageBrand,
            width: 50,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              nameBrand,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: const Text(
                'Connect',
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
