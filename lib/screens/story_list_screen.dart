import 'package:flutter/material.dart';
import 'package:historias_encantadas/screens/language_selection_screen.dart';
import 'package:historias_encantadas/widgets/title_cartoon.dart';

import '../l10n/app_localizations.dart';
import '../stories/story_registry.dart';
import 'story_viewer_screen.dart';

class StoryListScreen extends StatefulWidget {
  const StoryListScreen({super.key});

  @override
  State<StoryListScreen> createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {
  String? _dailyStoryId;
  final double viewportFraction = 0.70;
  late final PageController _pageController;
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      viewportFraction: viewportFraction,
      initialPage: 1000,
    );

    _currentPage = _pageController.initialPage.toDouble();

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? _currentPage;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_dailyStoryId == null) {
      final stories = StoryRegistry.getAllStories(context);
      stories.shuffle();
      _dailyStoryId = stories.first.storyId;
    }
  }

  @override
  Widget build(BuildContext context) {
    final stories = StoryRegistry.getAllStories(context);
    final t = AppLocalizations.of(context)!;

    final dailyStory = stories.firstWhere(
      (story) => story.storyId == _dailyStoryId,
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: TitleCartoon(text: t.initialTitle),
      //   backgroundColor: Color(0xff240F41),
      //   elevation: 4,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.settings, color: Colors.white),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (_) =>
      //                 const LanguageSelectionScreen(isSettings: true),
      //           ),
      //         );
      //       },
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background2.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.25)),
          ),

          /// CONTEÚDO
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [TitleCartoon(text: 'Histórias', fontSize: 22)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 90),
                      TitleCartoon(text: 'Encantadas', fontSize: 24),
                      SizedBox(width: 40),
                      IconButton(
                        icon: const Icon(Icons.settings, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LanguageSelectionScreen(
                                isSettings: true,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// LOGO
                  // TitleCartoon(text: t.initialTitle),
                  const SizedBox(height: 8),

                  /// SUBTÍTULO
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 8,
                      bottom: 0,
                    ),
                    child: Text(
                      t.subtitleHistory,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// HISTÓRIA DO DIA
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                StoryViewerScreen(storyConfig: dailyStory),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [
                              // dailyStory.primaryColor.withValues(alpha: 0.7),
                              // dailyStory.primaryColor,
                              dailyStory.firstGradient,
                              dailyStory.secondGradient,
                              dailyStory.thirdGradient,
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  dailyStory.iconPath,
                                  fit: BoxFit.contain,
                                  height: 300,
                                  width: 300,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    t.historyDay,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    dailyStory.title,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '${dailyStory.pages.length} ${t.page}',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.play_circle_fill,
                              size: 36,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// TÍTULO DA SEÇÃO
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bookmarks_outlined,
                          color: const Color.fromARGB(255, 205, 156, 9),
                        ),
                        SizedBox(width: 8),
                        TitleCartoon(text: t.choiceHistory, fontSize: 18),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// CARROSSEL
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withValues(alpha: 0.18),
                          Colors.white.withValues(alpha: 0.05),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: PageView.builder(
                      controller: _pageController,
                      padEnds: true,
                      itemBuilder: (context, index) {
                        final realIndex = index % stories.length;
                        final story = stories[realIndex];

                        return AnimatedBuilder(
                          animation: _pageController,

                          builder: (context, child) {
                            final distance = (_currentPage - index).abs();

                            final scale = (1 - distance * 0.3).clamp(0.8, 1.0);

                            return Transform.translate(
                              offset: Offset(0, distance * 12),
                              child: Transform.scale(
                                scale: scale,
                                child: child,
                              ),
                            );
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      StoryViewerScreen(storyConfig: story),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 20,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.15,
                                      ),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 12),

                                    /// IMAGEM
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Image.asset(
                                          story.getImagePath(1),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 12),

                                    /// TÍTULO
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        story.title,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF3A2E2E),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 4),

                                    /// PÁGINAS
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 12,
                                      ),
                                      child: Text(
                                        '${story.pages.length} ${t.page}',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF6D5C5C),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
