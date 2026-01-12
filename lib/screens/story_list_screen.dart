import 'package:flutter/material.dart';
import 'package:historias_encantadas/screens/language_selection_screen.dart';

import '../l10n/app_localizations.dart';
import '../stories/story_registry.dart';
import '../widgets/title_cartoon.dart';
import 'story_viewer_screen.dart';

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
        title: Text(
          t.storiesTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple.shade600,
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
          /// 🌄 BACKGROUND
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🌫 OVERLAY SUAVE
          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.25)),
          ),

          /// 🧩 CONTEÚDO
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  /// 🌈 TÍTULO / LOGO
                  TitleCartoon(text: t.initialTitle),

                  const SizedBox(height: 8),

                  /// ✨ SUBTÍTULO
                  Text(
                    t.subtitleHistory,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// 🌟 CARD: HISTÓRIA DO DIA (DINÂMICO)
                  GestureDetector(
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
                            dailyStory.primaryColor.withValues(alpha: 0.7),
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

                  const SizedBox(height: 24),

                  /// 📚 TÍTULO DA SEÇÃO
                  Row(
                    children: [
                      Icon(Icons.book, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        t.choiceHistory,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// 🎠 CARROSSEL
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.7),
                      itemCount: stories.length,
                      itemBuilder: (context, index) {
                        final story = stories[index];

                        return GestureDetector(
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    story.primaryColor.withValues(alpha: 0.75),
                                    story.primaryColor,
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.25),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Image.asset(
                                        story.iconPath,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    child: Text(
                                      story.title,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${story.pages.length} ${t.page}',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white70,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
