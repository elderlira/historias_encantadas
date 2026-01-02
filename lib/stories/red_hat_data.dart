import '../../models/localized_text.dart';
import '../models/story_data.dart';

class RedHatData implements StoryData {
  const RedHatData();

  @override
  String get historyId => 'red_hat';

  @override
  LocalizedText get title => LocalizedText({
    'pt': 'Chapeuzinho Vermelho',
    'en': 'Little Red Riding Hood',
    'es': 'Caperucita Roja',
    'fr': 'Le Petit Chaperon Rouge',
    'zh': '小红帽',
  });

  @override
  List<LocalizedText> get pages => [
    LocalizedText({
      'pt':
          'Era uma vez uma menina muito amada por todos, especialmente por sua avó. Ela sempre usava um lindo capuz de veludo vermelho que ganhará de sua avó, por isso era chamada de Chapeuzinho Vermelho.',
      'en':
          'Once upon a time, there was a girl who was much loved by everyone, especially by her grandmother. She always wore a beautiful red velvet hood that she had received from her grandmother, which is why she was called Little Red Riding Hood.',
      'es':
          'Érase una vez una niña muy querida por todos, especialmente por su abuela. Siempre llevaba una hermosa capucha de terciopelo rojo que le había regalado su abuela, por eso la llamaban Caperucita Roja.',
      'fr':
          "Il était une fois une petite fille adorée de tous, et surtout de sa grand-mère. Elle portait toujours un magnifique capuchon de velours rouge que sa grand-mère lui avait offert, d'où son surnom de Petit Chaperon rouge.",
      'zh': '從前，有一個女孩，人人都喜歡她，尤其是她的祖母。她總是戴著祖母送給她的一頂漂亮的紅色天鵝絨帽子，因此她被稱為小紅帽。',
    }),
    LocalizedText({
      'pt':
          'Um dia, sua mãe pediu para levar esta cesta de frutas e bolo para a Vovó,que está doente e morava do outro lado da floresta. Sua mãe pediu - siga a trilha e nunca falar com estranhos. Pois um lobo muito mau vivia na floresta.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    // demais páginas...
  ];

  @override
  List<String> get imageDescriptions => [
    'Chapeuzinho Vermelho, uma menina alegre com um capuz de veludo vermelho, acenando perto de uma casinha aconchegante. O sol está brilhando.',
    'A Mãe, com um avental, entrega uma cesta de piquenique trançada para Chapeuzinho Vermelho. Elas estão dentro de uma cozinha rústica e quente.',
    'Chapeuzinho Vermelho, carregando a cesta, andando sozinha por um caminho de terra na floresta. As árvores são altas e a luz do sol passa por elas.',
    'O Lobo Mau, com um sorriso astuto e olhos amarelos, conversa com Chapeuzinho Vermelho no caminho da floresta. Chapeuzinho está curiosa, mas inocente.',
    'Chapeuzinho Vermelho, com a cesta ao lado, está agachada colhendo uma flor amarela. O Lobo Mau corre rapidamente e sorrateiramente por outro caminho na mata.',
    'O Lobo Mau, disfarçado, está batendo de leve na porta de madeira da casa da Vovó, que é cercada por um jardim. Ele está tentando parecer pequeno e gentil.',
    'O Lobo Mau está deitado na cama da Vovó, usando a touca e os óculos dela. Seu corpo grande está sob as cobertas, e suas orelhas pontudas e olhos de lobo se destacam.',
    'Chapeuzinho Vermelho, com a cesta na mão, entra na casinha escura e silenciosa da Vovó. A porta está entreaberta e a cama com o Lobo disfarçado está visível ao fundo.',
    'Close-up de Chapeuzinho Vermelho olhando com confusão e um pouco de medo para o Lobo deitado na cama. Orelhas de lobo se projetam da touca.',
    'O Lobo Mau salta da cama, revelando sua forma assustadora, com a boca aberta e dentes grandes. Chapeuzinho Vermelho grita, com a cesta caindo de sua mão.',
    'O Caçador, forte e com barba, aparece na porta, segurando um machado. Ele olha para o Lobo Mau ao lado da cama com uma expressão de determinação.',
    'O Caçador, Chapeuzinho Vermelho e a Vovó, todas abraçadas e sorrindo, com o Lobo Mau derrotado e amarrado em um canto do quarto. A luz do dia entra pela janela.',
    'Chapeuzinho Vermelho, sua Mãe e a Vovó sentadas juntas na mesa da cozinha, felizes e saudáveis, dividindo o bolo e o suco. É um ambiente acolhedor e seguro.',
    'Chapeuzinho vermelho se despede dos amigos.',
  ];
}
