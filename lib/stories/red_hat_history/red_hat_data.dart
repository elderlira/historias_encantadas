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
          'Once upon a time, there was a very clever girl who lived in a house in the forest with her mother. She always wore a red hood, and everyone knew her as Little Red Riding Hood.',
      'es':
          'Érase una vez una niña muy lista que vivía en una casa en el bosque con su madre. Siempre llevaba una capucha roja, y todos la conocían como Caperucita Roja.',
      'fr':
          "Il était une fois une petite fille très intelligente qui vivait avec sa mère dans une maison au cœur de la forêt. Elle portait toujours un chaperon rouge, et tout le monde la connaissait sous le nom de Petit Chaperon rouge.",
      'zh': '從前，有一個非常聰明的小女孩和她的媽媽住在森林裡的房子。她總是戴著一頂紅色的帽子，大家都叫她小紅帽。',
    }),
    LocalizedText({
      'pt':
          'Um dia sua mãe pediu para ela levar uma cesta de frutas para sua avó que estava doente e morava do outro lado da Floresta. Sua mãe pediu para ela seguir a trilha da floresta e nunca falar com estranhos, pois um lobo muito mau vivia na floresta.',
      'en':
          'One day her mother asked her to take a basket of fruit to her grandmother, who was ill and lived on the other side of the forest. Her mother told her to follow the forest trail and never speak to strangers, because a very bad wolf lived in the forest.',
      'es':
          'Un día, su madre le pidió que le llevara una cesta de fruta a su abuela, que estaba enferma y vivía al otro lado del bosque. Su madre le dijo que siguiera el sendero y nunca hablara con desconocidos, porque un lobo muy feroz vivía en el bosque.',
      'fr':
          "Un jour, sa mère lui demanda d'apporter un panier de fruits à sa grand-mère, qui était malade et vivait de l'autre côté de la forêt. Sa mère lui dit de suivre le sentier et de ne jamais parler aux étrangers, car un loup très méchant vivait dans la forêt.",
      'zh':
          "有一天，媽媽要她帶一籃水果去探望生病的奶奶，奶奶住在森林的另一邊。媽媽叮嚀她沿著林間小路走，不要跟陌生人說話，因為森林裡住著一隻非常兇惡的狼。",
    }),
    LocalizedText({
      'pt':
          'Chapeuzinho ficou muito feliz com a tarefa pois gostava muito de sua avó e adorava ouvir as histórias que ela contava, foi em direção a floresta cantando e saltitando.',
      'en':
          'Little Red Riding Hood was very happy with the task because she loved her grandmother very much and adored listening to the stories she told; she went towards the forest singing and skipping.',
      'es':
          'Caperucita Roja estaba muy contenta con la tarea porque quería mucho a su abuela y adoraba escuchar las historias que ella contaba; se dirigió hacia el bosque cantando y saltando.',
      'fr':
          "Le Petit Chaperon rouge était ravie de cette tâche car elle aimait beaucoup sa grand-mère et adorait écouter les histoires qu'elle lui racontait ; elle se dirigea vers la forêt en chantant et en sautillant.",
      'zh': "小紅帽非常高興能完成這項任務，因為她非常愛她的奶奶，也很喜歡聽奶奶講故事；她一邊唱歌一邊跳著舞走向森林。",
    }),
    LocalizedText({
      'pt': """
            De repente, no meio do caminho ela ouviu um ruído vindo da mata fora da trilha, ao olhar melhor viu um Lobo gigante a observando.
            O Lobo perguntou: "O que uma menina como ela estava fazendo sozinha na floresta ?".
            Chapeuzinho esquecendo o conselho da sua mãe, respondeu: "estou indo na casa da vovó entregar umas frutas para ela que está muito doente".
            O Lobo já pensando na próxima refeição, perguntou: "Onde a vovó da Chapeuzinho morava ?".
            Ela desconfiou das intenções do Lobo e resolveu não contar onde a vovó morava e esperou ele se afastar, mas ela não percebeu que o Lobo estava-a vigiando caminhar pela floresta.
          """,
      'en': """
            Suddenly, in the middle of the path, she heard a noise coming from the woods off the trail. Looking closer, she saw a giant wolf watching her.
            The wolf asked, "What was a girl like her doing alone in the forest?"
            Little Red Riding Hood, forgetting her mother's advice, replied, "I'm going to Grandma's house to deliver some fruit to her; she's very sick."
            The wolf, already thinking about his next meal, asked, "Where did Little Red Riding Hood's grandmother live?"
            She suspected the wolf's intentions and decided not to tell him where her grandmother lived, waiting for him to move away. But she didn't realize the wolf was watching her walk through the forest.
            """,
      'es': """
            De repente, en medio del sendero, oyó un ruido proveniente del bosque. Al mirar más de cerca, vio a un lobo gigante observándola.
            El lobo preguntó: "¿Qué hacía una niña como ella sola en el bosque?".
            Caperucita Roja, olvidando el consejo de su madre, respondió: "Voy a casa de la abuela a llevarle fruta; está muy enferma".
            El lobo, ya pensando en su próxima comida, preguntó: "¿Dónde vivía la abuela de Caperucita Roja?".
            Sospechaba las intenciones del lobo y decidió no decirle dónde vivía su abuela, esperando a que se mudara. Pero no se dio cuenta de que el lobo la observaba caminar por el bosque.
            """,
      'fr': """
            Soudain, au milieu du chemin, elle entendit un bruit venant des bois, à l'écart du sentier. En s'approchant, elle aperçut un loup gigantesque qui l'observait.
            Le loup demanda : « Que fais-tu, une petite fille comme toi, seule dans la forêt ? »
            Le Petit Chaperon rouge, oubliant les conseils de sa mère, répondit : « Je vais chez grand-mère lui apporter des fruits ; elle est très malade. »
            Le loup, déjà en train de penser à son prochain repas, demanda : « Où habite la grand-mère du Petit Chaperon rouge ? »
            Elle se douta des intentions du loup et décida de ne pas lui dire où habitait sa grand-mère, attendant qu'il s'éloigne. Mais elle ne se rendait pas compte que le loup l'observait traverser la forêt.
            """,
      'zh': """"
            突然，走到小路中間，她聽到小路旁的樹林傳來一陣聲響。她循聲望去，發現一隻巨狼正盯著她。
            狼問道：“像她這樣的小女孩怎麼會獨自一人在森林裡？”
            小紅帽忘記了媽媽的叮囑，回答說：“我要去奶奶家給她送些水果，她病得很重。”
            狼已經開始盤算著下一頓美餐了，問道：“小紅帽的奶奶住在哪裡？”
            她察覺到狼的意圖，決定不告訴他奶奶的住址，等他走開。但她沒有意識到，狼正注視著她穿過森林。
            """,
    }),
    LocalizedText({
      'pt':
          'Ela se distraiu com os passarinhos na floresta e o Lobo aproveitou a distração dela para chegar na casa da vovó.',
      'en':
          "She got distracted by the birds in the forest, and the wolf took advantage of her distraction to get to Grandma's house.",
      'es':
          'Ella se distrajo con los pájaros del bosque, y el lobo aprovechó su distracción para llegar a la casa de la abuela.',
      'fr':
          "Elle fut distraite par les oiseaux de la forêt, et le loup profita de sa distraction pour se rendre chez grand-mère.",
      'zh': "她被森林裡的鳥兒吸引住了，狼趁她分神之際來到了奶奶家。",
    }),
    LocalizedText({
      'pt':
          'Enquanto Chapeuzinho colhia flores e brincava com os passarinhos e outros animais da floresta, o Lobo correu para casa da vovó. Bateu na porta imitando a voz da Chapeuzinho',
      'en':
          "While Little Red Riding Hood was picking flowers and playing with the birds and other animals in the forest, the Wolf ran to Grandma's house. He knocked on the door imitating Little Red Riding Hood's voice.",
      'es':
          'Mientras Caperucita Roja recogía flores y jugaba con los pájaros y otros animales del bosque, el Lobo corrió a casa de la abuela. Llamó a la puerta imitando la voz de Caperucita Roja.',
      'fr':
          "Pendant que le Petit Chaperon rouge cueillait des fleurs et jouait avec les oiseaux et les autres animaux de la forêt, le Loup courut jusqu'à la maison de Grand-mère. Il frappa à la porte en imitant la voix du Petit Chaperon rouge.",
      'zh': "當小紅帽在森林裡採花、和鳥兒、小動物們玩耍時，大野狼跑到奶奶家門口，敲門模仿小紅帽的聲音。",
    }),
    LocalizedText({
      'pt':
          'A vovó sem desconfiar de nada, abriu a porta e tomou um susto com o Lobo que a agarrou e a comeu de uma vez só. Depois vestiu a roupa da vovó e deitou em sua cama para aguardar a netinha dela chegar.',
      'en':
          "Grandma, unsuspecting, opened the door and was startled by the wolf who grabbed her and ate her whole. Then he put on Grandma's clothes and lay down in her bed to wait for her granddaughter to arrive.",
      'es':
          "La abuela, desprevenida, abrió la puerta y se sobresaltó al ver al lobo, que la agarró y se la comió entera. Luego se puso la ropa de la abuela y se acostó en su cama a esperar a que llegara su nieta.",
      'fr':
          "Grand-mère, sans se méfier, ouvrit la porte et fut effrayée par le loup qui la saisit et la dévora tout entière. Puis il enfila les vêtements de grand-mère et se coucha dans son lit pour attendre l'arrivée de sa petite-fille.",
      'zh': "毫無防備的奶奶打開門​​，被狼嚇了一跳，狼一把抓住她，把她整個人都吞了下去。然後，狼穿上奶奶的衣服，躺在她的床上，等待孫女到來。",
    }),
    LocalizedText({
      'pt':
          'Finalmente, chapeuzinho chegou, ela encontrou a porta aberta e entrou sem desconfiar de nada. Foi para o quarto da vovó, que estava muito escuro, e chamou por ela. “Bom dia vovó!',
      'en':
          """ Finally, Little Red Riding Hood arrived. She found the door open and went in without suspecting anything. She went to her grandmother's room, which was very dark, and called out to her. "Good morning, Grandma!" """,
      'es':
          'Por fin llegó Caperucita Roja. Encontró la puerta abierta y entró sin sospechar nada. Fue a la habitación de su abuela, que estaba muy oscura, y la llamó: "¡Buenos días, abuela!".',
      'fr':
          "Finalement, le Petit Chaperon rouge arriva. Elle trouva la porte ouverte et entra sans se douter de rien. Elle se rendit dans la chambre de sa grand-mère, qui était très sombre, et l'appela : « Bonjour, grand-mère ! »",
      'zh': "最後，小紅帽到了。她發現門開著，便毫無戒心地走了進去。她來到奶奶的房間，房間裡很黑，她喊道：“奶奶，早安！”",
    }),
    LocalizedText({
      'pt':
          """Ao chegar perto da cama Chapeuzinho estranhou a figura de sua avó, que parecia tão diferente e perguntou: "Vovó, que orelhas grandes você tem!" """,
      'en':
          """ As Little Red Riding Hood approached the bed, she was surprised by her grandmother's figure, which looked so different, and asked: "Grandma, what big ears you have!" """,
      'es':
          """ Cuando Caperucita Roja se acercó a la cama, se sorprendió al ver la figura de su abuela, que parecía tan diferente, y preguntó: "Abuela, ¡qué orejas más grandes tienes!". """,
      'fr':
          """ Alors que le Petit Chaperon rouge s'approchait du lit, elle fut surprise par la silhouette de sa grand-mère, qui paraissait si différente, et demanda : « Grand-mère, que vous avez de grandes oreilles ! » """,
      'zh': "小紅帽走到床邊，看到奶奶的身形和以前大不相同，驚訝地問道：“奶奶，您的耳朵好大啊！”",
    }),
    LocalizedText({
      'pt': """
          O Lobo respondeu com uma voz rouca: “São para te ouvir melhor minha netinha”. Chapeuzinho continuou: 
          “Vovó que olhos grandes você tem!” E o Lobo respondeu: “É para te ver melhor minha netinha”. 
          E mais uma vez Chapeuzinho falou: “Vovó que boca enorme você tem!” E o Lobo gritou: “É PARA TE COMEEERRR!!!
          """,
      'en': """
          The wolf replied in a hoarse voice: “They’re to hear you better, my little granddaughter.” Little Red Riding Hood continued:
          “Grandma, what big eyes you have!” And the wolf replied: “They’re to see you better, my little granddaughter.”
          And once again Little Red Riding Hood said: “Grandma, what a huge mouth you have!” And the wolf shouted: “IT’S TO EAT YOU!!!”
          """,
      'es': """ 
          El lobo respondió con voz ronca: «Son para oírte mejor, nietecita». Caperucita Roja continuó:
        «¡Abuela, qué ojos tan grandes tienes!». Y el lobo respondió: «Son para verte mejor, nietecita».
        Y una vez más Caperucita Roja dijo: «¡Abuela, qué boca tan grande tienes!». Y el lobo gritó: «¡¡¡ES PARA COMERTE!!!».
                  """,
      'fr': """ 
          Le loup répondit d'une voix rauque : « C'est pour mieux t'entendre, ma petite-fille. » Le Petit Chaperon rouge poursuivit :
          « Grand-mère, que vous avez de grands yeux ! » Et le loup répondit : « C'est pour mieux te voir, ma petite-fille. »
          Et une fois de plus, le Petit Chaperon rouge dit : « Grand-mère, que vous avez une grande bouche ! » Et le loup cria : « C'EST POUR TE MANGER !!! »
          """,
      'zh': """
            狼用沙啞的聲音回答說：「是為了更好地聽你說話，我的小孫女。」小紅帽繼續說：
            “奶奶，你的眼睛好大啊！”狼回答說：“是為了更好地看清你，我的小孫女。”
            小紅帽又說：“奶奶，你的嘴巴好大啊！”狼大喊道：“是為了吃掉你！！！”
            """,
    }),
    LocalizedText({
      'pt':
          'Nesse momento, um bravo caçador, que passava por perto ouviu os gritos e entrou na casa. Ele viu o Lobo e soube o que tinha acontecido. O caçador foi para cima do Lobo lutou com ele e conseguiu tirar a Chapeuzinho e sua vovó da barriga do Lobo. Elas estavam vivas e bem e ficaram muito agradecidas ao caçador por salvá-las.',
      'en': """
            At that moment, a brave hunter who was passing by heard the screams and entered the house. He saw the wolf and knew what had happened. The hunter went after the wolf, fought with him, and managed to pull Little Red Riding Hood and her grandmother out of the wolf's belly. They were alive and well and were very grateful to the hunter for saving them.
            """,
      'es': """
          En ese momento, un valiente cazador que pasaba por allí oyó los gritos y entró en la casa. Vio al lobo y supo lo que había pasado. El cazador fue tras él, luchó con él y logró sacar a Caperucita Roja y a su abuela de su vientre. Estaban sanas y salvas, y estaban muy agradecidas al cazador por haberlas salvado.
          """,
      'fr': """
        À ce moment-là, un courageux chasseur qui passait par là entendit les cris et entra dans la maison. Il vit le loup et comprit ce qui s'était passé. Le chasseur poursuivit la bête, lutta contre elle et parvint à extraire le Petit Chaperon rouge et sa grand-mère du ventre du loup. Elles étaient saines et sauves et très reconnaissantes envers le chasseur de les avoir sauvées.
        """,
      'zh':
          "這時，一位路過的勇敢獵人聽到了尖叫聲，便衝進了房子。他看到了狼，知道發生了什麼事。獵人追上狼，與它搏鬥，最後把小紅帽和她的奶奶從狼肚子裡救了出來。她們平安無事，對獵人的救命之恩感激不盡。",
    }),
    LocalizedText({
      'pt':
          'Chapeuzinho aprendeu a lição de nunca falar com estranhos e sempre seguir as regras da sua mãe e nunca desviar de seu caminho sem antes avisar a sua mãe por onde vai.',
      'en': """
Little Red Riding Hood learned the lesson of never talking to strangers, always following her mother's rules, and never deviating from her path without first telling her mother where she was going.
""",
      'es':
          'Caperucita Roja aprendió la lección de nunca hablar con extraños, seguir siempre las reglas de su madre y nunca desviarse de su camino sin antes decirle a su madre a dónde iba.',
      'fr':
          "Le Petit Chaperon rouge apprit qu'il ne fallait jamais parler aux inconnus, qu'il fallait toujours suivre les règles de sa mère et ne jamais s'écarter de son chemin sans avoir d'abord dit à sa mère où l'on allait.",
      'zh': "小紅帽吸取了教訓：永遠不要和陌生人說話，永遠要遵守媽媽的規矩，而且永遠不要在沒有事先告訴媽媽的情況下擅自改變路線。",
    }),
    LocalizedText({
      'pt':
          'E todos viveram felizes para sempre na floresta sem ter mais medo do Lobo mau.',
      'en':
          'And they all lived happily ever after in the forest, no longer afraid of the Big Bad Wolf.',
      'es':
          'Y todos vivieron felices para siempre en el bosque, sin miedo ya del Lobo Feroz.',
      'fr':
          "Et ils vécurent tous heureux pour toujours dans la forêt, n'ayant plus peur du Grand Méchant Loup.",
      'zh': "從此，他們在森林裡過著了幸福的生活，再也不用害怕大野狼了。",
    }),
    LocalizedText({
      'pt': 'Te aguardo novamente. Até logo.',
      'en': """"
            I'll be waiting for you again. See you soon.
            """,
      'es': 'Te estaré esperando de nuevo. Nos vemos pronto.',
      'fr': "Je t'attendrai à nouveau. À bientôt.",
      'zh': "我會再等你。很快再見。",
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
