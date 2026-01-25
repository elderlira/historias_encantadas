import '../../../models/localized_text.dart';
import '../../models/story_data.dart';

class RedHatData implements StoryData {
  const RedHatData();

  @override
  String get historyId => 'redHat';

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
          'Era uma vez uma menina muito esperta que morava em uma casa na floresta com sua mãe, ela sempre usava um capuz vermelho e todos a conheciam como Chapeuzinho Vermelho',
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
          'Um dia sua mãe pediu para ela levar uma cesta de frutas para sua avó que estava doente e morava do outro lado da Floresta. Sua mãe pediu para ela seguir a trilha da floresta e nunca falar com estranhos, pois um lobo muito mau vivia na floresta.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Chapeuzinho ficou muito feliz com a tarefa pois gostava muito de sua avó e adorava ouvir as histórias que ela contava, foi em direção a floresta cantando e saltitando.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt': """
            De repente, no meio do caminho ela ouviu um ruído vindo da mata fora da trilha, ao olhar melhor viu um Lobo gigante a observando.
            O Lobo perguntou: "O que uma menina como ela estava fazendo sozinha na floresta ?".
            Chapeuzinho esquecendo o conselho da sua mãe, respondeu: "estou indo na casa da vovó entregar umas frutas para ela que está muito doente".
            O Lobo já pensando na próxima refeição, perguntou: "Onde a vovó da Chapeuzinho morava ?".
            Ela desconfiou das intenções do Lobo e resolveu não contar onde a vovó morava e esperou ele se afastar, mas ela não percebeu que o Lobo estava-a vigiando caminhar pela floresta.
          """,
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Ela se distraiu com os passarinhos na floresta e o Lobo aproveitou a distração dela para chegar na casa da vovó.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Enquanto Chapeuzinho colhia flores e brincava com os passarinhos e outros animais da floresta, o Lobo correu para casa da vovó. Bateu na porta imitando a voz da Chapeuzinho',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'A vovó sem desconfiar de nada, abriu a porta e tomou um susto com o Lobo que a agarrou e a comeu de uma vez só. Depois vestiu a roupa da vovó e deitou em sua cama para aguardar a netinha dela chegar.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Finalmente, chapeuzinho chegou, ela encontrou a porta aberta e entrou sem desconfiar de nada. Foi para o quarto da vovó, que estava muito escuro, e chamou por ela. “Bom dia vovó!',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          """Ao chegar perto da cama Chapeuzinho estranhou a figura de sua avó, que parecia tão diferente e perguntou: "Vovó, que orelhas grandes você tem!" """,
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          """O Lobo respondeu com uma voz rouca: “São para te ouvir melhor minha netinha”. Chapeuzinho continuou: 
          “Vovó que olhos grandes você tem!” E o Lobo respondeu: “É para te ver melhor minha netinha”. 
          E mais uma vez Chapeuzinho falou: “Vovó que boca enorme você tem!” E o Lobo gritou: “É PARA TE COMEEERRR!!!""",
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Nesse momento, um bravo caçador, que passava por perto ouviu os gritos e entrou na casa. Ele viu o Lobo e soube o que tinha acontecido. O caçador foi para cima do Lobo lutou com ele e conseguiu tirar a Chapeuzinho e sua vovó da barriga do Lobo. Elas estavam vivas e bem e ficaram muito agradecidas ao caçador por salvá-las.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Chapeuzinho aprendeu a lição de nunca falar com estranhos e sempre seguir as regras da sua mãe e nunca desviar de seu caminho sem antes avisar a sua mãe por onde vai.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'E todos viveram felizes para sempre na floresta sem ter mais medo do Lobo mau.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt': 'Te aguardo novamente. Até logo.',
      'en':
          'One day, her mother asked her to take this basket of fruit and cake to Grandma, who was ill and lived on the other side of the forest. Her mother told her to follow the trail and never talk to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara la cesta de fruta y pastel a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el rastro y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits et de gâteaux à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽請她把這籃水果和蛋糕送到生病的奶奶家，奶奶住在森林的另一邊。媽媽告訴她要沿著小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
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
    'Chapeuzinho Vermelho, sua Mãe e a Vovó sentadas juntas na mesa da cozinha, felizes e saudáveis, dividindo o bolo e o suco. É um ambiente acolhedor e seguro.',
    'todos viveram felizes para sempre',
    'Chapeuzinho vermelho se despede dos amigos.',
  ];
}
