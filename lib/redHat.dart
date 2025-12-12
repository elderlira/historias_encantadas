// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// import 'history/base/index.dart';
// import 'history/red_hat/index.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const AnimalMelodyStoriesApp());
// }

// class AnimalMelodyStoriesApp extends StatelessWidget {
//   const AnimalMelodyStoriesApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Chapeuzinho Vermelho',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         fontFamily: 'Inter',
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         scaffoldBackgroundColor: const Color(0xFFFFF9E0),
//       ),
//       home: const RedHat(),
//     );
//   }
// }

// class RedHat extends StatefulWidget {
//   const RedHat({super.key});

//   @override
//   State<RedHat> createState() => _RedHatState();
// }

// class _RedHatState extends State<RedHat> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//   bool _isPlaying = false;
//   late AudioPlayer _audioPlayer;

//   @override
//   void initState() {
//     super.initState();

//     _audioPlayer = AudioPlayer();

//     _audioPlayer.setPlayerMode(PlayerMode.lowLatency);

//     _audioPlayer.setReleaseMode(ReleaseMode.stop);

//     _pageController.addListener(() {
//       final newPage = _pageController.page?.round() ?? 0;
//       if (newPage != _currentPage) {
//         _stopAudio();
//         setState(() => _currentPage = newPage);
//       }
//     });

//     _audioPlayer.onPlayerStateChanged.listen((state) {
//       if (state == PlayerState.completed || state == PlayerState.stopped) {
//         if (mounted) {
//           setState(() => _isPlaying = false);
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     _pageController.dispose();
//     super.dispose();
//   }

//   Future<void> _stopAudio() async {
//     await _audioPlayer.stop();
//     if (mounted) setState(() => _isPlaying = false);
//   }

//   Future<void> _playCurrentPageAudio() async {
//     if (_isPlaying) {
//       await _audioPlayer.stop();
//       setState(() => _isPlaying = false);
//       return;
//     }

//     final pageIndex = _currentPage + 1;
//     final audioPath = '/sounds/redHat/page$pageIndex.wav';

//     try {
//       await _audioPlayer.play(AssetSource(audioPath));

//       setState(() => _isPlaying = true);

//       print("Áudio tocando: $audioPath");
//     } catch (e) {
//       print("ERRO ao tocar áudio: $e");
//       print("Caminho tentado: $audioPath");

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Erro ao tocar áudio da página $pageIndex"),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   void _goToNextPage() {
//     if (_currentPage < chapeuzinhoVermelhoStory.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 400),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   void _goToPreviousPage() {
//     if (_currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 400),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Chapeuzinho Vermelho",
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: Colors.red.shade600,
//         elevation: 4,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: chapeuzinhoVermelhoStory.length,
//               itemBuilder: (context, index) {
//                 final page = chapeuzinhoVermelhoStory[index];
//                 return StoryPageWidget(
//                   page: page,
//                   isPlaying: index == _currentPage && _isPlaying,
//                   onPlay: index == _currentPage ? _playCurrentPageAudio : null,
//                 );
//               },
//             ),
//           ),
//           _buildNavigationControls(),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavigationControls() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//       decoration: BoxDecoration(
//         color: Colors.red.shade100,
//         border: Border(top: BorderSide(color: Colors.red.shade300, width: 2)),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _buildNavButton(
//             icon: Icons.arrow_back_ios_new,
//             label: "Anterior",
//             onPressed: _currentPage > 0 ? _goToPreviousPage : null,
//           ),
//           Text(
//             "Página ${_currentPage + 1} de ${chapeuzinhoVermelhoStory.length}",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.red.shade900,
//             ),
//           ),
//           _buildNavButton(
//             icon: Icons.arrow_forward_ios,
//             label: _currentPage == chapeuzinhoVermelhoStory.length - 1
//                 ? "Fim"
//                 : "Próxima",
//             onPressed: _currentPage < chapeuzinhoVermelhoStory.length - 1
//                 ? _goToNextPage
//                 : null,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavButton({
//     required IconData icon,
//     required String label,
//     required VoidCallback? onPressed,
//   }) {
//     return TextButton.icon(
//       onPressed: onPressed,
//       icon: Icon(
//         icon,
//         color: onPressed != null ? Colors.red.shade700 : Colors.grey,
//       ),
//       label: Text(
//         label,
//         style: TextStyle(
//           color: onPressed != null ? Colors.red.shade700 : Colors.grey,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//       style: TextButton.styleFrom(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         backgroundColor: onPressed != null ? Colors.white : Colors.red.shade50,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: onPressed != null ? 3 : 0,
//       ),
//     );
//   }
// }

// class StoryPageWidget extends StatelessWidget {
//   final StoryPage page;
//   final bool isPlaying;
//   final VoidCallback? onPlay;

//   const StoryPageWidget({
//     super.key,
//     required this.page,
//     required this.isPlaying,
//     this.onPlay,
//   });

//   String get _imagePath => 'assets/images/redHat/page${page.pageNumber}.png';

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text(
//             "Página ${page.pageNumber}",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.red.shade700,
//             ),
//           ),
//           const SizedBox(height: 16),

//           Stack(
//             alignment: Alignment.topRight,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.45,
//                 decoration: BoxDecoration(
//                   color: Colors.red.shade50,
//                   borderRadius: BorderRadius.circular(16),
//                   border: Border.all(color: Colors.red.shade300, width: 2),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.grey,
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(14),
//                   child: Image.asset(
//                     _imagePath,
//                     fit: BoxFit.cover,
//                     width: double.infinity,
//                     errorBuilder: (context, error, stackTrace) {
//                       return Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Icon(
//                               Icons.image_not_supported,
//                               size: 60,
//                               color: Colors.redAccent,
//                             ),
//                             const SizedBox(height: 10),
//                             Text(
//                               "Imagem não encontrada",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.red.shade700,
//                               ),
//                             ),
//                             Text(
//                               "page${page.pageNumber}.png",
//                               style: const TextStyle(
//                                 fontSize: 12,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: FloatingActionButton(
//                   mini: true,
//                   backgroundColor: isPlaying
//                       ? Colors.orange.shade700
//                       : Colors.green,
//                   onPressed: onPlay,
//                   child: isPlaying
//                       ? const Icon(Icons.stop, color: Colors.white)
//                       : const Icon(Icons.volume_up, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 24),
//           Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(
//                 page.text,
//                 textAlign: TextAlign.justify,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   height: 1.5,
//                   color: Colors.black87,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
