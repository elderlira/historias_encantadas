import 'package:flutter/material.dart';
import 'package:historias_encantadas/screens/language_selection_screen.dart';
import 'package:historias_encantadas/screens/story_viewer_screen.dart';

import '../l10n/app_localizations.dart';
import '../stories/story_registry.dart';
import '../widgets/title_cartoon.dart';
import '../widgets/wave_paint.dart';

class StoryListScreen extends StatefulWidget {
  const StoryListScreen({super.key});

  @override
  State<StoryListScreen> createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {
  String? _dailyStoryId;

  @override
  void initState() {
    super.initState();
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
      appBar: AppBar(
        title: TitleCartoon(text: t.initialTitle),
        backgroundColor: Color(0xff30679a),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      const LanguageSelectionScreen(isSettings: true),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              /// 1º – AMARELO
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 30.0),
                  width: double.infinity,
                  color: Color(0xff3ccdac),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        t.subtitleHistory,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),

                      /// card da historia do dia
                      Container(
                        width: 350,
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
                                  dailyStory.primaryColor.withValues(
                                    alpha: 0.7,
                                  ),
                                  dailyStory.primaryColor,
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      dailyStory.iconPath,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),

              /// 2º – AZUL
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  color: Color(0xff30679a),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),

                    width: double.infinity,
                    child: Row(
                      children: [
                        const Icon(Icons.book, color: Colors.white),
                        const SizedBox(width: 8),
                        Text(
                          t.choiceHistory,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// 3º – VERMELHO (somente fundo)
              Expanded(
                child: Container(
                  color: const Color(0xff30679a),
                  child: CustomPaint(
                    painter: WavePainter(const Color(0xfff27078)),
                    child: Container(
                      padding: EdgeInsets.only(top: 60, left: 16),
                      width: double.infinity,
                    ),
                  ),
                ),

                // ClipPath(
                //   clipper: WaveTopClipper(),
                //   child: DecoratedBox(
                //     decoration: BoxDecoration(color: Colors.amber),
                //     child: Container(
                //       width: double.infinity,
                //       color: Color(0xfff27078),
                //     ),
                //   ),
                // ),
              ),
            ],
          ),

          /// =====================
          /// CARROSSEL FLUTUANTE
          /// =====================
          Positioned(
            top: MediaQuery.of(context).size.height * 0.66 - 220,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 280,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.70),
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => StoryViewerScreen(storyConfig: story),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                  story.getImagePath(1),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                story.title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
