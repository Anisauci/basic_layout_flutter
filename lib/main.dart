import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Pulau Merah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  'Banyuwangi, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('4.1'),
        ],
      ),
    );
    // membuat button section
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // buat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pulau Merah adalah sebuah pantai yang terletak di Banyuwangi, Jawa Timur, Indonesia. '
        'Pantai ini terkenal dengan pasirnya yang berwarna merah muda dan ombaknya yang cocok untuk berselancar. '
        'Selain itu, Pulau Merah juga memiliki pemandangan alam yang indah dengan latar belakang perbukitan hijau dan laut biru yang luas. '
        'Pantai ini menjadi destinasi wisata populer bagi wisatawan lokal maupun mancanegara.\ '
        'Anisa Suci Rahmawati (362458302145)',
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: 'Flutter layout: Anisa Suci Rahmawati 362458302145',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
       // body: const Center(
        //  child: Text('Hello World'),
       // ),
       // body: Column(
        body: ListView(
          children: [
            // tambahkan gambar ke body
            Image.asset(
              'images/pm.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ), 
            // tambahkan titleSection
            titleSection,
            // tambahkan buttonSection
            buttonSection,
            // tambahkan textSection
            textSection,
          ],
        ),
     // ),
    ),
    );
  }

  // membuat method column _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
