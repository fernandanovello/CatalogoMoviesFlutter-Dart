import 'package:flutter/material.dart';
import 'movie_details.dart';

void main() {
  runApp(MyApp());
}

//Desenvolvido por: Fernanda de Souza Batista Santos.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.purple),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> movies = [
    {
      'title': 'Amigos Imaginários',
      'year': '2024',
      'genre': 'Animação',
      'image': 'assets/images/animation/dubladores-amigos-imaginarios.jpeg',
      'synopsis':
          'Depois de descobrir que pode ver os amigos imaginários de todos, uma garota embarca em uma aventura mágica para reconectar amigos imaginários esquecidos.',
      'cast':
          'John Krasinski, Cailey Fleming, Ryan Reynolds, Emily Blunt, Steve Carell, Awkwafina, Blake Lively, Matt Damon,...'
    },
    {
      'title': 'Garfield - Fora de Casa',
      'year': '2024',
      'genre': 'Animação',
      'image': 'assets/images/animation/garfield.jpg',
      'synopsis':
          'Garfield tem um reencontro inesperado com seu pai, que estava há muito tempo desaparecido - um gato de rua todo desengonçado que atrai o filho para um assalto de alto risco.',
      'cast':
          'Chris Pratt, Nicholas Hoult, Ving Rhames, Hannah Waddingham, Snoop Dogg, Brett Goldstein, Gregg Berger, Samuel L. Jackson,...'
    },
    {
      'title': 'Pets – A Vida Secreta dos Bichos 2',
      'year': '2019',
      'genre': 'Animação',
      'image': 'assets/images/animation/pets2.png',
      'synopsis':
          'A vida de Max e Duke muda bastante quando sua dona tem um filho. De início eles não gostam nem um pouco deste pequeno ser que divide a atenção, mas aos poucos ele os conquista. Não demora muito para que Max se torne superprotetor em relação à criança, o que lhe causa uma coceira constante. Quando toda a família decide passar uns dias em uma fazenda, os cachorros enfrentam uma realidade completamente diferente com a qual estão acostumados.',
      'cast':
          'Kevin Hart, Patton Oswalt, Tiffany Haddish, Jenny Slate, Harrison Ford, Eric Stonestreet, Chris Renaud, Ellie Kemper, Lake Bell,...'
    },
    {
      'title': 'Velozes e Furiosos 9',
      'year': '2021',
      'genre': 'Action',
      'image': 'assets/images/action/fastandfurious9.jpg',
      'synopsis':
          'Dominic Toretto e Letty vivem uma vida pacata ao lado do filho. Mas eles logo são ameaçados pelo passado de Dom: seu irmão desaparecido Jakob, que retorna e está trabalhando ao lado de Cipher. Cabe a Dom reunir a equipe novamente para enfrentá-los.',
      'cast':
          'Vin Diesel, Michelle Rodriguez, Jordana Brewster, John Cena, Tyrese Gibson, Sung Kang, Nathalie Emmanuel, Helen Mirren, Ludacris,...'
    },
    {
      'title': 'Furiosa',
      'year': '2024',
      'genre': 'Action',
      'image': 'assets/images/action/furiosa2024.jpg',
      'synopsis':
          'A jovem Furiosa cai nas mãos de uma grande horda de motoqueiros liderada pelo senhor da guerra Dementus. Varrendo Wasteland, eles encontram a Cidadela, presidida pelo Immortan Joe. Enquanto os dois tiranos lutam pelo domínio, Furiosa logo se vê em uma batalha ininterrupta para voltar para casa.',
      'cast':
          'Chris Hemsworth,Quaden Bayles, Anya Taylor-Joy, Tom Burke, Nicholas Hoult, Nathan Jones, Xanthia Marinelli, Lachy Hulme, Charlee Fraser,...'
    },
    {
      'title': 'Indiana Jones e o Chamado do Destino',
      'year': '2023',
      'genre': 'Action',
      'image': 'assets/images/action/indianajones.jpg',
      'synopsis':
          'O lendário herói arqueólogo está de volta neste aguardado capítulo final da icônica franquia, uma incrível e empolgante aventura cinematográfica.',
      'cast':
          'Harrison Ford, Mads Mikkelsen, Phoebe Waller-Bridge, Antonio Banderas, Boyd Holbrook, Shaunette Renée Wilson, Thomas Kretschmann, Karen Allen, Toby Jones,...'
    },
    {
      'title': 'Nasce Uma Estrela',
      'year': '2018',
      'genre': 'Drama',
      'image': 'assets/images/drama/A_Star_Is_Born_2018.png',
      'synopsis':
          'Jackson Maine é um cantor no auge da fama. Um dia, após deixar uma apresentação, ele para em um bar para beber. Lá, Jackson conhece Ally, uma insegura cantora que ganha a vida trabalhando em um restaurante. Ele se encanta por ela e seu talento. Mais tarde, os dois acabam se casando. Ao mesmo tempo em que Ally desponta para o estrelato, Jackson vive uma crise pessoal e profissional devido aos problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso do casal.',
      'cast':
          'Bradley Cooper, Lady Gaga, Sam Elliott, Anthony Ramos, Rafi Gavron, Andrew Dice Clay, Halsey, Dave Chappelle, Lukas Nelson,...'
    },
    {
      'title': 'Joy: O Nome do Sucesso',
      'year': '2015',
      'genre': 'Drama',
      'image': 'assets/images/drama/joy.jpg',
      'synopsis':
          'Joy é uma jovem brilhante, mas sua vida pessoal é extremamente complicada. Divorciada e mãe de dois filhos, ela vive com seus pais e ex-marido, que mora no porão. Sua mãe, que vive no andar de cima e passa o dia todo assistindo a novelas, compartilha o espaço com seu pai, apesar de terem se divorciado há 17 anos. Criativa desde a infância, Joy inventa um esfregão de limpeza milagroso que se transforma em um fenômeno de vendas e faz dela uma das empreendedoras de maior sucesso dos Estados Unidos.',
      'cast':
          'Jennifer Lawrence, Robert De Niro, Bradley Cooper, Édgar Ramírez, Isabella Rossellini, Virginia Madsen, Gia Gadsby, Tomas Elizondo, Aundrea Gadsby,...'
    },
    {
      'title': 'Moonlight: Sob a Luz do Luar',
      'year': '2016',
      'genre': 'Drama',
      'image': 'assets/images/drama/moonlight.jpg',
      'synopsis':
          'Black trilha uma jornada de autoconhecimento enquanto tenta escapar do caminho fácil da criminalidade e do mundo das drogas de Miami. Encontrando amor em locais surpreendentes, ele sonha com um futuro maravilhoso.',
      'cast':
          'Mahershala Ali, Trevante Rhodes, Ashton Sanders, André Holland, Naomie Harris, Alex R. Hibbert, Jharrel Jerome, Janelle Monáe, Jaden Piner,...'
    },
    {
      'title': 'De Volta para o Futuro III',
      'year': '1990',
      'genre': 'Sci-Fi',
      'image': 'assets/images/scifi/backtothefutureiii.jpg',
      'synopsis':
          'Marty recebe uma mensagem do Dr. Emmett Brown, na qual ele informa que agora vive em uma pequena cidade do Velho Oeste, em 1885. Quando Marty descobre que Doc acabará sendo assassinado dias após o envio da carta, ele decide voltar no tempo mais uma vez para salvar seu amigo deste trágico destino.',
      'cast':
          'Michael J. Fox, Christopher Lloyd, Mary Steenburgen, Lea Thompson, Thomas F. Wilson, Elisabeth Shue, Flea, Jeffrey Weissman, James Tolkan,...'
    },
    {
      'title': 'Jogador Nº 1',
      'year': '2018',
      'genre': 'Sci-Fi',
      'image': 'assets/images/scifi/jogadorn1.png',
      'synopsis':
          'Em 2045, Wade Watts, assim como o resto da humanidade, prefere a realidade virtual do jogo OASIS ao mundo real. James Halliday, o excêntrico criador do jogo, morre e deixa sua fortuna inestimável para a primeira pessoa que descobrir a chave de um quebra-cabeça diabólico que ele arquitetou. Para vencer, Watts precisa abandonar a existência virtual e experimentar o amor e a realidade.',
      'cast':
          'Tye Sheridan, Olivia Cooke, Mark Rylance, Ben Mendelsohn, Simon Pegg, Win Morisaki, T. J. Miller, Lena Waithe, Philip Zhao,...'
    },
    {
      'title': 'Guardiões da Galáxia Vol. 3',
      'year': '2023',
      'genre': 'Sci-Fi',
      'image': 'assets/images/scifi/guardioes.jpg',
      'synopsis':
          'Peter Quill deve reunir sua equipe para defender o universo e proteger um dos seus. Se a missão não for totalmente bem-sucedida, isso pode levar ao fim dos Guardiões.',
      'cast':
          'Chris Pratt, Zoë Saldaña, Will Poulter, Karen Gillan, Sean Gunn, Vin Diesel, Dave Bautista, Pom Klementieff, Chukwudi Iwuji,...'
    },
  ];

  List<Map<String, dynamic>> filteredMovies = [];
  String? currentGenre = 'Animação';
  int moviesPerPage = 3;
  List<String> genres = ['Animação', 'Action', 'Sci-Fi', 'Drama'];

  @override
  void initState() {
    super.initState();
    filteredMovies = movies; // Atribui a lista inicial de filmes filtrados
  }

  void filterMovies() {
    setState(() {
      if (currentGenre == 'Animação') {
        filteredMovies = movies;
      } else {
        filteredMovies = movies
            .where((movie) => movie['genre'].contains(currentGenre))
            .toList();
      }
    });
  }

  List<Map<String, dynamic>> getPageMovies(int pageIndex) {
    int start = pageIndex * moviesPerPage;
    int end = (start + moviesPerPage > filteredMovies.length)
        ? filteredMovies.length
        : start + moviesPerPage;
    return filteredMovies.sublist(start, end);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes Populares'),
        actions: [
          DropdownButton<String>(
            value: currentGenre,
            onChanged: (String? newValue) {
              setState(() {
                currentGenre = newValue;
                filterMovies();
              });
            },
            items: genres.map<DropdownMenuItem<String>>((String genre) {
              return DropdownMenuItem<String>(
                value: genre,
                child: Text(genre),
              );
            }).toList(),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue[100],
            child: Text(
              'Desenvolvido por: Fernanda de Souza Batista Santos.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: (filteredMovies.length / moviesPerPage).ceil(),
              itemBuilder: (context, pageIndex) {
                List<Map<String, dynamic>> pageMovies =
                    getPageMovies(pageIndex);
                return ListView.builder(
                  itemCount: pageMovies.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> movie = pageMovies[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetails(movie: movie),
                          ),
                        );
                      },
                      child: Card(
                        child: ListTile(
                          leading: Image.asset(movie['image'],
                              fit: BoxFit.cover, width: 50),
                          title: Text(movie['title']),
                          subtitle:
                              Text('${movie['year']} - ${movie['genre']}'),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
