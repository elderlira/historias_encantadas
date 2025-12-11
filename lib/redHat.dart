import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AnimalMelodyStoriesApp());
}

class AnimalMelodyStoriesApp extends StatelessWidget {
  const AnimalMelodyStoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapeuzinho Vermelho',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Inter',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0xFFFFF9E0),
      ),
      home: const RedHat(),
    );
  }
}

class StoryPage {
  final int pageNumber;
  final String text;
  final String imageDescription;

  StoryPage({
    required this.pageNumber,
    required this.text,
    required this.imageDescription,
  });
}

final List<StoryPage> chapeuzinhoVermelhoStory = [
  StoryPage(
    pageNumber: 1,
    text:
        """Era uma vez uma menina muito amada por todos, especialmente por sua avó. 
        Ela sempre usava um lindo capuz de veludo vermelho que ganhará de sua avó, por isso era chamada de Chapeuzinho Vermelho.""",
    imageDescription:
        """Chapeuzinho Vermelho, uma menina alegre com um capuz de veludo vermelho, acenando perto de uma casinha aconchegante. 
        O sol está brilhando.""",
  ),
  StoryPage(
    pageNumber: 2,
    text:
        """"Um dia, sua mãe pediu para levar esta cesta de frutas e bolo para a Vovó, 
        que está doente e morava do outro lado da floresta. Sua mãe pediu - siga a trilha e nunca falar com estranhos. 
        Pois um lobo muito mau vivia na floresta.""",
    imageDescription:
        """A Mãe, com um avental, entrega uma cesta de piquenique trançada para Chapeuzinho Vermelho. 
        Elas estão dentro de uma cozinha rústica e quente.""",
  ),
  StoryPage(
    pageNumber: 3,
    text:
        """Chapeuzinho ficou muito feliz com a tarefa, pois gostava muito de sua avó e 
        adorava ouvir as histórias que ela contava, foi em direção a floresta cantando e saltitando pela floresta""",
    imageDescription:
        """Chapeuzinho Vermelho, carregando a cesta, andando sozinha por um caminho de terra na floresta. 
        As árvores são altas e a luz do sol passa por elas.""",
  ),
  StoryPage(
    pageNumber: 4,
    text: """
        De repente, no meio do caminho ela ouviu um ruído vindo da mata fora da trilha, ao olhar viu um logo gigante a observando.
        O logo perguntou: o que uma menina estava fazendo sozinha na floresta.
        Chapeuzinho esqueceu o conselho da sua mãe, respondeu ao lobo. Estou indo levar esta cesta de frutas para minha vovó que esta doente.
        """,
    imageDescription:
        """O Lobo Mau, com um sorriso astuto e olhos amarelos, conversa com Chapeuzinho Vermelho no caminho da floresta. Chapeuzinho está curiosa, mas inocente.""",
  ),
  StoryPage(
    pageNumber: 5,
    text: """
        O lobo já pensando na próxima refeição, perguntou por quê não levar essas formosas flores? 
        Chapeuzinho gostou da ideia e entrou na floresta para colher flores. 
        Distraida, nem percebeu que o lobo astuto saiu correndo para a casa da vovó.
    """,
    imageDescription:
        """Chapeuzinho Vermelho, com a cesta ao lado, está agachada colhendo uma flor amarela. O Lobo Mau corre rapidamente e sorrateiramente por outro caminho na mata.""",
  ),
  StoryPage(
    pageNumber: 6,
    text:
        """Enquanto Chapeuzinho colhia flores, o Lobo correu para a casa da Vovó. Ele bateu na porta com cuidado, imitando a voz doce de Chapeuzinho Vermelho.""",
    imageDescription:
        """O Lobo Mau, disfarçado, está batendo de leve na porta de madeira da casa da Vovó, que é cercada por um jardim. Ele está tentando parecer pequeno e gentil.""",
  ),
  StoryPage(
    pageNumber: 7,
    text:
        """A Vovó, sem desconfiar de nada, abriu a porta. O Lobo, com um pulo rápido, a engoliu de uma só vez! Depois, vestiu a touca da Vovó e deitou-se na cama para esperar.""",
    imageDescription:
        """O Lobo Mau está deitado na cama da Vovó, usando a touca e os óculos dela. Seu corpo grande está sob as cobertas, e suas orelhas pontudas e olhos de lobo se destacam.""",
  ),
  StoryPage(
    pageNumber: 8,
    text:
        """Finalmente, Chapeuzinho chegou à casa. Ela achou a porta aberta e o quarto muito escuro e silencioso. "Bom dia, Vovó!" ela chamou baixinho.""",
    imageDescription:
        """Chapeuzinho Vermelho, com a cesta na mão, entra na casinha escura e silenciosa da Vovó. A porta está entreaberta e a cama com o Lobo disfarçado está visível ao fundo.""",
  ),
  StoryPage(
    pageNumber: 9,
    text:
        """Ao se aproximar da cama, Chapeuzinho estranhou a figura de sua avó, que parecia tão diferente. "Vovó, que orelhas grandes você tem!" ela disse, assustada.""",
    imageDescription:
        """Close-up de Chapeuzinho Vermelho olhando com confusão e um pouco de medo para o Lobo deitado na cama. Orelhas de lobo se projetam da touca.""",
  ),
  StoryPage(
    pageNumber: 10,
    text:
        """A voz rouca do Lobo respondeu: "São para te ouvir melhor, minha netinha!". Chapeuzinho continuou: "Vovó, que boca enorme você tem!". E o Lobo gritou: "É PARA TE COMER!".""",
    imageDescription:
        """O Lobo Mau salta da cama, revelando sua forma assustadora, com a boca aberta e dentes grandes. Chapeuzinho Vermelho grita, com a cesta caindo de sua mão.""",
  ),
  StoryPage(
    pageNumber: 11,
    text:
        """Nesse momento, um bravo Caçador, que passava por perto, ouviu o grito e entrou correndo na casa. Ele viu o Lobo e soube o que tinha acontecido.""",
    imageDescription:
        """O Caçador, forte e com barba, aparece na porta, segurando um machado. Ele olha para o Lobo Mau ao lado da cama com uma expressão de determinação.""",
  ),
  StoryPage(
    pageNumber: 12,
    text:
        """O Caçador usou sua coragem e um plano esperto para libertar a Vovó e Chapeuzinho Vermelho da barriga do Lobo! As duas estavam vivas e muito aliviadas!""",
    imageDescription:
        """O Caçador, Chapeuzinho Vermelho e a Vovó, todas abraçadas e sorrindo, com o Lobo Mau derrotado e amarrado em um canto do quarto. A luz do dia entra pela janela.""",
  ),
  StoryPage(
    pageNumber: 13,
    text:
        """Chapeuzinho Vermelho aprendeu a lição de nunca conversar com estranhos e sempre seguir as regras da sua mãe. E todos viveram felizes para sempre, comendo bolo e tomando suco!""",
    imageDescription:
        """Chapeuzinho Vermelho, sua Mãe e a Vovó sentadas juntas na mesa da cozinha, felizes e saudáveis, dividindo o bolo e o suco. É um ambiente acolhedor e seguro.""",
  ),
  StoryPage(
    pageNumber: 14,
    text: """Te aguardo novamente. Até logo.""",
    imageDescription: """Chapeuzinho vermelho se despede dos amigos.""",
  ),
];

class RedHat extends StatefulWidget {
  const RedHat({super.key});

  @override
  State<RedHat> createState() => _RedHatState();
}

class _RedHatState extends State<RedHat> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isPlaying = false;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();

    _audioPlayer = AudioPlayer();

    _audioPlayer.setPlayerMode(PlayerMode.lowLatency);

    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    _pageController.addListener(() {
      final newPage = _pageController.page?.round() ?? 0;
      if (newPage != _currentPage) {
        _stopAudio();
        setState(() => _currentPage = newPage);
      }
    });

    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed || state == PlayerState.stopped) {
        if (mounted) {
          setState(() => _isPlaying = false);
        }
      }
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _stopAudio() async {
    await _audioPlayer.stop();
    if (mounted) setState(() => _isPlaying = false);
  }

  Future<void> _playCurrentPageAudio() async {
    if (_isPlaying) {
      await _audioPlayer.stop();
      setState(() => _isPlaying = false);
      return;
    }

    final pageIndex = _currentPage + 1;
    final audioPath = '/sounds/redHat/page$pageIndex.wav';

    try {
      await _audioPlayer.play(AssetSource(audioPath));

      setState(() => _isPlaying = true);

      print("Áudio tocando: $audioPath");
    } catch (e) {
      print("ERRO ao tocar áudio: $e");
      print("Caminho tentado: $audioPath");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Erro ao tocar áudio da página $pageIndex"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _goToNextPage() {
    if (_currentPage < chapeuzinhoVermelhoStory.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chapeuzinho Vermelho",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.red.shade600,
        elevation: 4,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: chapeuzinhoVermelhoStory.length,
              itemBuilder: (context, index) {
                final page = chapeuzinhoVermelhoStory[index];
                return StoryPageWidget(
                  page: page,
                  isPlaying: index == _currentPage && _isPlaying,
                  onPlay: index == _currentPage ? _playCurrentPageAudio : null,
                );
              },
            ),
          ),
          _buildNavigationControls(),
        ],
      ),
    );
  }

  Widget _buildNavigationControls() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        border: Border(top: BorderSide(color: Colors.red.shade300, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavButton(
            icon: Icons.arrow_back_ios_new,
            label: "Anterior",
            onPressed: _currentPage > 0 ? _goToPreviousPage : null,
          ),
          Text(
            "Página ${_currentPage + 1} de ${chapeuzinhoVermelhoStory.length}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
          ),
          _buildNavButton(
            icon: Icons.arrow_forward_ios,
            label: _currentPage == chapeuzinhoVermelhoStory.length - 1
                ? "Fim"
                : "Próxima",
            onPressed: _currentPage < chapeuzinhoVermelhoStory.length - 1
                ? _goToNextPage
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton({
    required IconData icon,
    required String label,
    required VoidCallback? onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: onPressed != null ? Colors.red.shade700 : Colors.grey,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: onPressed != null ? Colors.red.shade700 : Colors.grey,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        backgroundColor: onPressed != null ? Colors.white : Colors.red.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: onPressed != null ? 3 : 0,
      ),
    );
  }
}

class StoryPageWidget extends StatelessWidget {
  final StoryPage page;
  final bool isPlaying;
  final VoidCallback? onPlay;

  const StoryPageWidget({
    super.key,
    required this.page,
    required this.isPlaying,
    this.onPlay,
  });

  String get _imagePath => 'assets/images/redHat/page${page.pageNumber}.png';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Página ${page.pageNumber}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade700,
            ),
          ),
          const SizedBox(height: 16),

          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.red.shade300, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    _imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.image_not_supported,
                              size: 60,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Imagem não encontrada",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red.shade700,
                              ),
                            ),
                            Text(
                              "page${page.pageNumber}.png",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: isPlaying
                      ? Colors.orange.shade700
                      : Colors.green,
                  onPressed: onPlay,
                  child: isPlaying
                      ? const Icon(Icons.stop, color: Colors.white)
                      : const Icon(Icons.volume_up, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                page.text,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
