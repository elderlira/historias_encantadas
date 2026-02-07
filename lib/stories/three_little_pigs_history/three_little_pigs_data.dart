import '../../models/localized_text.dart';
import '../../models/story_data.dart';

class ThreeLittlePigsData implements StoryData {
  const ThreeLittlePigsData();

  @override
  String get historyId => 'threeLittlePigs';

  @override
  LocalizedText get title => LocalizedText({
    'pt': 'Os Três Porquinhos',
    'en': 'The Three Little Pigs',
    'es': 'Los tres cerditos',
    'fr': 'Les Trois Petits Cochons',
    'zh': '三隻小豬',
  });

  @override
  List<LocalizedText> get pages => [
    LocalizedText({
      'pt':
          "Era uma vez, em uma grande floresta, na casa da mamãe, viviam felizes os três porquinhos. Cícero, Heitor e Prático",
      'en':
          "Once upon a time, in a large forest, at their mother's house, lived happily the three little pigs: Cicero, Hector, and Practical.",
      'es':
          'Érase una vez, en un gran bosque, en casa de su madre, vivían felices los tres cerditos: Cicerón, Héctor y Práctico.',
      'fr':
          "Il était une fois, dans une grande forêt, chez leur mère, trois petits cochons heureux : Cicéron, Hector et Pratique.",
      'zh': '從前，在一片大森林裡，在他們媽媽的房子裡，幸福地住著三隻小豬：西塞羅、赫克托和普拉克蒂爾。',
    }),
    LocalizedText({
      'pt':
          'Um dia, quando estavam bem crescidos resolveram partir pela floresta a procura de um bom lugar para cada um construir sua própria casa.',
      'en':
          'One day, when they were all grown up, they decided to set off into the forest in search of a good place for each of them to build their own house.',
      'es':
          'Un día, cuando ya eran todos mayores, decidieron partir hacia el bosque en busca de un buen lugar donde cada uno pudiera construir su propia casa.',
      'fr':
          "Un jour, devenus adultes, ils décidèrent de partir dans la forêt à la recherche d'un bon endroit où chacun pourrait construire sa propre maison.",
      'zh': "有一天，當他們都長大成人後，他們決定前往森林，尋找一塊適合他們各自建造房屋的好地方。",
    }),
    LocalizedText({
      'pt':
          'O Porquinho Cícero era o mais preguiçoso. Ele não queria ter muito trabalho e escolheu construir sua casa de palha.',
      'en':
          "Cicero the Pig was the laziest. He didn't want to do much work and chose to build his house out of straw.",
      'es':
          'Cicerón el Cerdo era el más perezoso. No quería trabajar mucho y decidió construir su casa de paja.',
      'fr':
          "Cicéron le Cochon était le plus paresseux. Il ne voulait pas faire beaucoup d'efforts et choisit de construire sa maison en paille.",
      'zh': "豬西塞羅是最懶的。他不想做太多活，所以他選擇用稻草蓋房子。",
    }),
    LocalizedText({
      'pt':
          'O Porquinho Heitor era um pouco mais cuidadoso. Ele resolveu fazer a sua casa de madeira, pois era mais forte que a de palha.',
      'en':
          'Little Hector the pig was a bit more careful. He decided to build his house out of wood, because it was stronger than one made of straw.',
      'es':
          'El cerdito Héctor fue un poco más cuidadoso. Decidió construir su casa de madera, porque era más resistente que una de paja.',
      'fr':
          "Le petit cochon Hector était un peu plus prudent. Il décida de construire sa maison en bois, car c'était plus solide qu'une maison en paille.",
      'zh': "小豬赫克托比較謹慎。他決定用木頭蓋房子，因為木頭比稻草房子結實。",
    }),
    LocalizedText({
      'pt':
          'O Porquinho Prático, o mais velho, era o mais esperto. Ele sabia que precisava de uma casa muito forte. Ele escolheu construir sua casa de tijolos.',
      'en':
          'The Practical Pig, the oldest, was the smartest. He knew he needed a very strong house. He chose to build his house out of bricks.',
      'es':
          'El Cerdito Práctico, el mayor, era el más inteligente. Sabía que necesitaba una casa muy resistente. Decidió construirla de ladrillos.',
      'fr':
          "Le Cochon Pratique, le plus âgé, était le plus intelligent. Il savait qu'il lui fallait une maison très solide. Il choisit de la construire en briques.",
      'zh': "最老的那隻務實的豬也最聰明。他知道自己需要一棟非常堅固的房子。於是，他選擇用磚頭來蓋房子。",
    }),
    LocalizedText({
      'pt':
          'Os três porquinhos estavam felizes em suas casas novas. Mas, na floresta, vivia o Lobo Mau.',
      'en':
          'The three little pigs were happy in their new homes. But in the forest lived the Big Bad Wolf.',
      'es':
          'Los tres cerditos estaban felices en sus nuevos hogares. Pero en el bosque vivía el Lobo Feroz.',
      'fr':
          "Les trois petits cochons étaient heureux dans leurs nouvelles maisons. Mais dans la forêt vivait le Grand Méchant Loup.",
      'zh': "三隻小豬在新家過得很開心。可是森林裡住著一隻大野狼。",
    }),
    LocalizedText({
      'pt':
          'O Lobo Mau chegou primeiro na casa de palha de Cícero. Ele bateu na porta. Abra a porta! Se não abrir, eu vou soprar e a sua casa vou derrubar!" O lobo encheu os pulmões e... PFFFF! ',
      'en': """
          The Big Bad Wolf arrived first at Cicero's straw house. He knocked on the door. "Open the door! If you don't open it, I'll huff and puff and blow your house down!" The wolf filled his lungs and... PFFFF!
          """,
      'es':
          'El Lobo Feroz llegó primero a la casa de paja de Cicerón. Llamó a la puerta. "¡Abre! ¡Si no la abres, te derribaré la casa con un resoplido!" El lobo llenó sus pulmones y... ¡Pfff!',
      'fr':
          "Le Grand Méchant Loup arriva le premier à la maison de paille de Cicéron. Il frappa à la porte. « Ouvre la porte ! Si tu ne l'ouvres pas, je vais souffler et faire s'écrouler ta maison ! » Le loup remplit ses poumons et… PFFFF !",
      'zh': "大野狼第一個來到西塞羅的稻草屋前。他敲了敲門。 「開門！你要是不開門，我就吹氣把你的房子吹倒！」 狼吸了口氣，然後……噗！",
    }),
    LocalizedText({
      'pt':
          'A casa de palha voou para longe! Cícero saiu correndo, morrendo de medo, e foi se esconder na casa de madeira de Heitor.',
      'en': """
          The straw house flew away! Cicero ran out, terrified, and hid in Hector's wooden house.
          """,
      'es':
          '¡La casa de paja salió volando! Cicerón salió corriendo, aterrorizado, y se escondió en la casa de madera de Héctor.',
      'fr':
          "La maison de paille s'envola ! Cicéron, terrifié, sortit en courant et se cacha dans la maison en bois d'Hector.",
      'zh': "草屋飛走了！西塞羅嚇壞了，跑了出來，躲進了赫克托耳的木屋。草屋飛走了！西塞羅嚇壞了，跑了出來，躲進了赫克托耳的木屋。",
    }),
    LocalizedText({
      'pt':
          'O Lobo Mau foi atrás deles e chegou à casa de madeira. "Abram a porta, seus porquinhos!',
      'en':
          'The Big Bad Wolf chased after them and arrived at the wooden house. "Open the door, you little pigs!"',
      'es':
          'El Lobo Feroz los persiguió y llegó a la casa de madera. "¡Abran la puerta, cerditos!"',
      'fr':
          "Le Grand Méchant Loup les poursuivit et arriva devant la maison en bois. « Ouvrez la porte, petits cochons ! »",
      'zh': "大野狼追著它們來到木屋前。 “開門，你們這些小豬！”",
    }),
    LocalizedText({
      'pt':
          'O Lobo soprou e soprou de novo. PFFFF! PFFFF! A casa de madeira balançou muito!.',
      'en':
          'The wolf huffed and puffed again. PFFF! PFFF! The wooden house shook violently!',
      'es':
          'El lobo volvió a resoplar y bufar. ¡PFFF! ¡PFFF! ¡La casa de madera se sacudió violentamente!',
      'fr':
          "Le loup souffla de nouveau. PFFF ! PFFF ! La maison en bois trembla violemment !",
      'zh': "狼又喘了口氣。噗！噗！木屋劇烈搖晃起來！",
    }),
    LocalizedText({
      'pt':
          'Mas a casa de madeira era um pouco mais forte. Depois de muito esforço, ela também caiu. Os dois porquinhos fugiram para a casa de tijolos.',
      'en':
          'But the wooden house was a little stronger. After much effort, it also fell down. The two little pigs ran away to the brick house.',
      'es':
          'Pero la casa de madera era un poco más fuerte. Tras mucho esfuerzo, también se derrumbó. Los dos cerditos huyeron hacia la casa de ladrillo.',
      'fr':
          "Mais la maison en bois était un peu plus solide. Après bien des efforts, elle s'écroula elle aussi. Les deux petits cochons s'enfuirent alors vers la maison en briques.",
      'zh': "但是木屋稍微結實一些。費了好大勁，它也倒塌了。兩隻小豬只好跑到磚房裡去。",
    }),
    LocalizedText({
      'pt':
          'Agora, os três irmãos estavam juntos na casa de tijolos de Prático. "Pode vir, seu lobo bobo! ',
      'en': """
          Now the three brothers were together in Practical's brick house. "Come on, you silly wolf!"
          """,
      'es':
          'Ahora los tres hermanos estaban juntos en la casa de ladrillo de Practical. "¡Vamos, lobo tonto!"',
      'fr':
          "Les trois frères se retrouvèrent alors réunis dans la maison en briques de Practical. « Allez, espèce de loup idiot ! »",
      'zh': "現在，三兄弟都待在普拉克西爾的磚房裡。 “快點，你這只傻狼！”",
    }),
    LocalizedText({
      'pt':
          'O Lobo chegou na casa de tijolos. Ele soprou com toda sua força! PFFFFFFFFF!!',
      'en':
          'The wolf arrived at the brick house. He huffed and puffed with all his might! Pffffffffff!!',
      'es':
          'El lobo llegó a la casa de ladrillo. ¡Resopló con todas sus fuerzas! ¡Pffffffffff!',
      'fr':
          "Le loup arriva à la maison de briques. Il souffla de toutes ses forces ! Pffffffffff !!",
      'zh': "狼來到了磚房前。他使出渾身解數，呼啦呼求地喘著氣！噗 ...",
    }),
    LocalizedText({
      'pt':
          'Ele soprou mais uma vez. E mais uma vez. Mas a casa de tijolos não se mexeu. Ela era muito forte!',
      'en': """
          He blew again. And again. But the brick house didn't budge. It was too strong!
          """,
      'es':
          'Sopló otra vez. Y otra vez. Pero la casa de ladrillos no se movió. ¡Era demasiado fuerte!',
      'fr':
          "Il souffla de nouveau. Et encore. Mais la maison de briques ne bougea pas. Elle était trop solide !",
      'zh': "他又吹了一遍，又一遍，但磚房紋絲不動，太堅固了！",
    }),
    LocalizedText({
      'pt':
          'O Lobo Mau teve uma ideia: iria esperar chegar a noite e subiria na chaminé! Mas o Porquinho Prático estava esperando por ele e colocou um caldeirao de água quente próxima a chaminé',
      'en':
          "The Big Bad Wolf had an idea: he would wait until nightfall and climb up the chimney! But the Practical Pig was waiting for him and had placed a cauldron of hot water near the chimney. ",
      'es':
          'El Lobo Feroz tuvo una idea: ¡esperaría hasta el anochecer y subiría por la chimenea! Pero el Cerdo Práctico lo estaba esperando y había colocado un caldero de agua caliente cerca de la chimenea.',
      'fr':
          "Le Grand Méchant Loup eut une idée : il attendrait la nuit tombée pour grimper dans la cheminée ! Mais le Cochon Pratique l’attendait et avait placé un chaudron d’eau chaude près de la cheminée.",
      'zh': "大野狼想出了一個主意：他要等到夜幕降臨，然後爬上煙囪！但是聰明的豬早已在那裡等著他，並在煙囪附近放了一鍋熱水。",
    }),
    LocalizedText({
      'pt':
          'O lobo ao entrar pela chaminé escorregou e CAIU direto no caldeirão de água quente!',
      'en':
          "The wolf slipped as he entered through the chimney and fell straight into the cauldron of hot water! ",
      'es':
          '¡El lobo resbaló al entrar por la chimenea y cayó directamente en el caldero de agua caliente!',
      'fr':
          "Le loup a glissé en entrant par la cheminée et est tombé directement dans le chaudron d'eau chaude !",
      'zh': "狼從煙囪進來時腳下一滑，直接掉進了熱水鍋裡！",
    }),
    LocalizedText({
      'pt':
          'O Lobo Mau saiu correndo, assustado, e nunca mais voltou para incomodar os três porquinhos.',
      'en':
          " The Big Bad Wolf ran away, frightened, and never came back to bother the three little pigs again.",
      'es':
          'El lobo feroz huyó asustado y nunca más regresó para molestar a los tres cerditos.',
      'fr':
          "Le grand méchant loup s'enfuit, effrayé, et ne revint jamais embêter les trois petits cochons.",
      'zh': "大野狼嚇壞了，落荒而逃，再也沒有回來騷擾三隻小豬。",
    }),
    LocalizedText({
      'pt':
          'E assim, os três porquinhos viveram felizes e aprenderam uma lição: vale a pena se esforçar para fazer as coisas bem-feitas!',
      'en':
          "And so, the three little pigs lived happily ever after and learned a lesson: it pays to strive to do things well! ",
      'es':
          'Y así, los tres cerditos vivieron felices para siempre y aprendieron una lección: ¡vale la pena esforzarse por hacer las cosas bien!',
      'fr':
          "Et ainsi, les trois petits cochons vécurent heureux pour toujours et apprirent une leçon : il est payant de s'efforcer de bien faire les choses !",
      'zh': "就這樣，三隻小豬從此過上了幸福的生活，並且學到了一個道理：努力把事情做好是有回報的！",
    }),
    LocalizedText({
      'pt': 'Te aguardo novamente. Até logo.',
      'en': " I'll be waiting for you again. See you soon.",
      'es': 'Te estaré esperando de nuevo. Nos vemos pronto.',
      'fr': "Je t'attendrai à nouveau. À bientôt.",
      'zh': "我會再等你。很快再見。",
    }),
  ];

  @override
  List<String> get imageDescriptions => [
    'Os três porquinhos, sorrindo, acenando debaixo de uma árvore grande e frondosa. No fundo, um campo verde ensolarado e um caminho.',
    'O Porquinho Cícero (magro, talvez com um chapéu engraçado) está empilhando rapidamente um monte de palha para formar uma casa. Ele parece cansado, mas aliviado por terminar logo.',
    'O Porquinho Heitor (de tamanho médio, talvez com óculos de segurança) está martelando tábuas de madeira para construir sua casa. Ele parece concentrado.',
    'O Porquinho Prático (mais robusto, talvez usando um avental de pedreiro) está assentando tijolos com argamassa. A casa de tijolos está começando a tomar forma e parece muito sólida.',
    'O Lobo Mau (grande, de dentes afiados, com um olhar astuto) aparece espiando por trás de uma árvore escura. Ele está olhando para as três casas no campo.',
    'O Lobo Mau está em frente à pequena e frágil casa de palha. O Porquinho Cícero está olhando assustado pela janela.',
    'O Lobo Mau está soprando com força, bochechas infladas. A casa de palha está sendo levantada pelo vento forte, com pedaços de palha voando.',
    'O Porquinho Cícero correndo desesperado em direção à casa de madeira. A casa de palha está em ruínas no chão. ',
    'O Lobo Mau está em frente à casa de madeira. Os dois porquinhos (Cícero e Heitor) estão juntos e assustados, olhando pela janela.',
    'O Lobo Mau soprando novamente, com mais esforço. A casa de madeira está tremendo, mas ainda de pé. Algumas tábuas podem estar se soltando.',
    'A casa de madeira desmoronando em pedaços. Os dois porquinhos correndo muito rápido em direção à casa de tijolos.',
    'Os três porquinhos olhando confiantes pela janela da sólida casa de tijolos. A casa é robusta e tem uma chaminé.',
    'O Lobo Mau soprando o máximo que pode. Ele está vermelho de esforço. A casa de tijolos está imóvel, talvez com um pouco de poeira levantando.',
    'O Lobo Mau agora está exausto, deitado no chão, ofegando. Os três porquinhos estão rindo da janela.',
    'O Lobo Mau tentando escalar o telhado para chegar à chaminé. O Porquinho Prático está dentro da casa, acendendo um fogo na lareira e colocando um caldeirão de água para ferver.',
    'O Lobo Mau caindo na água quente, gritando. O caldeirão está fumegante. Os três porquinhos estão pulando de alegria.',
    'O Lobo Mau correndo o mais rápido que pode para longe, com o bumbum vermelho e quente. Ele está com uma expressão de dor e terror.',
    'Os três porquinhos juntos na frente da sólida casa de tijolos, felizes e abraçados. O sol está brilhando.',
    'Os três porquinhos se despedem dos amigos.',
  ];
}
