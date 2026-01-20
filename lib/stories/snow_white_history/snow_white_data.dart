import '../../../models/localized_text.dart';
import '../../models/story_data.dart';

class SnowWhiteData implements StoryData {
  const SnowWhiteData();

  @override
  String get historyId => 'snowWhite';

  @override
  LocalizedText get title => LocalizedText({
    'pt': 'Branca de Neve',
    'en': 'Snow White',
    'es': 'Blanco como la nieve',
    'fr': 'Blanc comme neige',
    'zh': '白雪公主',
  });

  @override
  List<LocalizedText> get pages => [
    LocalizedText({
      'pt':
          'Era uma vez, em um reino muito distante, vivia uma linda princesa chamada Branca de Neve. Sua pele era branca como a neve, seus lábios vermelhos como uma rosa e seus cabelos negros como a noite.',
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
          'A madrasta de Branca de Neve era muito vaidosa. Todos os dias perguntava ao seu espelho mágico: "Espelho, espelho meu, existe alguém mais bela do que eu"? e o espelho sempre respondia. "Não, minha Rainha. És a mais bela de todas" ',
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
          """Branca de Neve ia crescendo e, a cada dia, ficava mais bonita. Ela se sentia muito sozinha no castelo e passava os dias cantando para alegrar seu coração.
            E a Rainha sempre perguntava ao espelho mágico:
            — Espelho, espelho meu, existe no mundo mulher mais bela do que eu?
            E o espelho sempre respondia:
            — Não, minha rainha. És a mais bela de todas.""",
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
          'Um dia, a Rainha fez a pergunta de sempre e o espelho respondeu: "És muito bonita minha Rainha, mas Branca de Neve é agora a mais bela de todas". Com ciúmes, a madrasta mandou o caçador levar Branca de Neve para a floresta e nunca mais voltar com ela.',
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
          'Mas, o caçador teve pena da menina e a deixou fugir. Fuja, Branca de Neve. Ela correu até que encontrou uma casinha pequena no meio da floresta.',
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
          'Ela bateu na porta. Como ninguém respondeu, decidiu entrar. Branca de Neve percebeu que a casa estava desorganizada, pegou uma vassoura e começou a limpar. Depois, preparou uma deliciosa refeição.',
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
          'A casa pertencia aos sete anões. Eles estavam trabalhando na mina e, após um dia de trabalho, pegaram suas ferramentas e foram para casa. O Mestre seguia à frente com sua lanterna, seguido por Zangado, Feliz, Soneca, Atchim, Dengoso e Dunga.',
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
          'Branca de Neve estava muito cansada. Ela entrou no quarto, onde havia sete camas pequenas. Deitou-se e adormeceu rapidamente.',
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
          'Após uma longa caminhada pela floresta, os sete anões avistaram a casa e perceberam que alguém estava lá. Entraram em silêncio e encontraram tudo arrumado. Ao chegarem no quarto, viram uma princesa dormindo. Branca de Neve acordou e disse seu nome, enquanto os anões a observavam curiosos.',
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
          'Branca de Neve contou sua história, e os anões a acolheram com muito carinho. Ela passou a morar com eles.',
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
          'Os anões, preocupados com a segurança de Branca de Neve, avisaram para ela não deixar ninguém entrar. Depois, foram trabalhar na mina.',
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
          'No castelo, a Rainha perguntou ao espelho mágico quem era a mais bela. Para sua surpresa, o espelho respondeu que Branca de Neve era a mais bela de todas. A Rainha descobriu onde ela estava escondida e arquitetou um plano malvado.',
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
          'Disfarçada de uma senhora vendedora, a Rainha apareceu oferecendo uma maçã vermelha e brilhante. Sem saber do perigo, Branca de Neve mordeu a maçã.',
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
          'Ao morder a maçã envenenada, Branca de Neve caiu em um sono profundo.',
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
          'Os anões, muito tristes, colocaram Branca de Neve em um caixão de cristal, esperando que ela acordasse.',
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
          'Um príncipe bondoso apareceu, deu um beijo de amor verdadeiro, e Branca de Neve despertou. Eles viveram felizes para sempre.',
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
    'Castelo encantado ao fundo, Branca de Neve criança em primeiro plano, jardim florido, céu azul, estilo ilustração infantil, cores suaves e mágicas.',
    'Interior do castelo, Rainha elegante com roupas luxuosas, postura orgulhosa, ambiente real, estilo conto de fadas infantil.',
    'Branca de Neve adolescente cantando perto de uma janela do castelo, expressão doce e solitária. Ao fundo, Rainha diante do espelho mágico brilhante, clima delicado de conto de fadas.',
    'Espelho mágico iluminado refletindo Branca de Neve, Rainha com expressão de surpresa e raiva, salão escurecido, contraste de luz e sombra.',
    'Floresta encantada, árvores altas, Branca de Neve correndo por uma trilha, raios de luz entre as folhas, clima mágico e aventureiro.',
    'Interior de casa simples de madeira, Branca de Neve varrendo o chão sorrindo, objetos fora do lugar, mesa posta com comida caseira, cores quentes, clima acolhedor.',
    'Sete anões caminhando em fila pela floresta ao entardecer, Mestre à frente com lanterna acesa, outros anões com ferramentas, céu alaranjado, estilo infantil.',
    'Quarto pequeno e aconchegante, sete caminhas alinhadas com colchas coloridas, Branca de Neve dormindo tranquilamente, luz suave entrando pela janela.',
    'Interior do quarto, anões reunidos ao redor das camas, expressões de surpresa e curiosidade, Branca de Neve sentada na cama acordando, clima de descoberta.',
    'Branca de Neve sentada à mesa com os sete anões, todos sorrindo, ambiente iluminado, clima de amizade e acolhimento.',
    'Anões se despedindo de Branca de Neve na porta da casa, expressões de cuidado e proteção, Branca de Neve acenando, floresta ao fundo, clima de atenção e carinho.',
    'Rainha diante do espelho mágico com expressão de choque e raiva, espelho brilhando e revelando Branca de Neve, ambiente sombrio, sensação de plano maligno, estilo infantil.',
    'Rainha disfarçada de senhora idosa segurando maçã vermelha brilhante, Branca de Neve curiosa, floresta ao fundo, foco na maçã, suspense leve infantil.',
    'Branca de Neve deitada serenamente, maçã caída ao lado, luz suave, atmosfera silenciosa e mágica.',
    'Caixão de cristal transparente, Branca de Neve dormindo, anões ao redor com expressão triste, flores coloridas, brilho delicado.',
    'Príncipe e Branca de Neve sorrindo, luz mágica ao redor, anões felizes, castelo ao fundo, céu colorido, clima de final feliz, estilo ilustração infantil.',
  ];
}
