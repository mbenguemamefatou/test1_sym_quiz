import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late String category;
  int questionIndex = 0;
  int score = 0;

  final List<Map<String, Object>> questions = [
    {
      'category': 'MUSIQUE',
      'questionText': 'Quel est le plus grand festival de musique au Sénégal ?',
      'answers': [
        'Dakar Music Festival',
        'Saint-Louis Jazz',
        'Festival de Thies',
      ],
      'correctAnswer': 'Saint-Louis Jazz',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          'Quel instrument traditionnel est souvent utilisé dans la musique sénégalaise, particulièrement dans le genre mbalax ?',
      'answers': [
        'Kora',
        'Tama',
        'Balafon',
      ],
      'correctAnswer': 'Tama',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          'Quel genre musical sénégalais, popularisé par Youssou Ndourr, mélange des rythmes traditionnels avec des influences modernes ?',
      'answers': [
        'Salsa',
        'Jazz',
        'Mbalax',
      ],
      'correctAnswer': 'Mbalax',
    },

    {
      'category': 'MUSIQUE',
      'questionText': ' Qui est connu comme le "roi du mbalax" au Sénégal ?',
      'answers': [
        'Thione Seck',
        'Youssou Ndour',
        'Ismael Lô',
      ],
      'correctAnswer': 'Youssou Ndour',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          ' Quel est le titre de la célèbre chanson de Youssou Ndour en collaboration avec Neneh Cherry, sortie en 1994 ?',
      'answers': [
        'Set',
        '7 Seconds',
        'Birima',
      ],
      'correctAnswer': '7 Seconds',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          'Quel musicien sénégalais est également connu pour son engagement politique et ses chansons engagées ? ',
      'answers': [
        'Baaba Maal',
        'Akon',
        'Didier Awadi',
      ],
      'correctAnswer': 'Didier Awadi',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          'Quel instrument de musique à cordes, traditionnellement utilisé par les griots, est joué par Baaba Maal ? ',
      'answers': [
        'Kora',
        'Xalam',
        'Ngoni',
      ],
      'correctAnswer': 'Xalam',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          ' Quel groupe sénégalais est célèbre pour son style hip-hop engagé et son album "School of Life" ?',
      'answers': [
        'Positive Black Soul ',
        'Daara J Family',
        'Bideew Bou Bess',
      ],
      'correctAnswer': 'Daara J Family',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          ' Quel album de Youssou Ndour est un hommage aux lutteurs sénégalais et a remporté un Grammy Award en 2013 ? ',
      'answers': [
        'Egypt ',
        'Dakar-Kingston',
        'Rokku Mi Rokka',
      ],
      'correctAnswer': 'Egypt',
    },

    {
      'category': 'MUSIQUE',
      'questionText':
          ' Quelle chanteuse sénégalaise est connue pour sa voix puissante et ses chansons en wolof, et a collaboré avec des artistes internationaux comme Oumou Sangaré ?',
      'answers': [
        'Coumba Gawlo ',
        'Viviane Chidid Ndour',
        'Adiouza',
      ],
      'correctAnswer': 'Coumba Galwo',
    },

    {
      'category': 'CUISINE',
      'questionText':
          ' Quel plat sénégalais est souvent préparé avec du poisson, du riz, et des légumes ? ',
      'answers': [
        'Mafé',
        'Yassa',
        'Thieboudienne',
      ],
      'correctAnswer': 'Thieboudienne',
    },

    {
      'category': 'CUISINE',
      'questionText':
          ' Quel est l’ingrédient principal du plat sénégalais "Mafé" ? ',
      'answers': [
        'Arachide',
        'Tomaté',
        'Poisson',
      ],
      'correctAnswer': 'Arachide',
    },

    {
      'category': 'CUISINE',
      'questionText':
          '  Quelle est la principale céréale utilisée dans la préparation du "Couscous Sénégalais" ?',
      'answers': [
        'Blé',
        'Mil',
        'Riz',
      ],
      'correctAnswer': 'Mil',
    },

    {
      'category': 'CUISINE',
      'questionText':
          ' Quel dessert sénégalais est préparé avec du lait caillé et du mil ?',
      'answers': [
        'Thiakry',
        'Ngalakh',
        'Laakh',
      ],
      'correctAnswer': 'Thiakry',
    },

    // Ajoutez plus de questions ici pour chaque catégorie
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    category = ModalRoute.of(context)!.settings.arguments as String;
  }

  void answerQuestion(String selectedAnswer) {
    if (questions[questionIndex]['correctAnswer'] == selectedAnswer) {
      score++;
    }
    setState(() {
      questionIndex++;
    });
    if (questionIndex >= questions.length) {
      Navigator.pushNamed(context, '/result', arguments: score);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz - $category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion['questionText'] as String),
            ...(currentQuestion['answers'] as List<String>).map((answer) {
              return ElevatedButton(
                onPressed: () => answerQuestion(answer),
                child: Text(answer),
              );
            }),
          ],
        ),
      ),
    );
  }
}
