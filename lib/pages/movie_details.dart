import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Map<String, dynamic> movie;

  MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(movie['image'], fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('Ano: ${movie['year']}', style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Gênero: ${movie['genre']}',
                  style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sinopse: ${movie['synopsis']}',
                  style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Elenco: ${movie['cast']}',
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
