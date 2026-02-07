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
          'Once upon a time, in a kingdom far, far away, lived a beautiful princess named Snow White. Her skin was as white as snow, her lips as red as a rose, and her hair as black as night.',
      'es':
          'Érase una vez, en un reino muy, muy lejano, una bella princesa llamada Blancanieves. Su piel era blanca como la nieve, sus labios rojos como una rosa y su cabello negro como la noche.',
      'fr':
          "Il était une fois, dans un royaume lointain, une belle princesse nommée Blanche-Neige. Sa peau était blanche comme neige, ses lèvres rouges comme une rose et ses cheveux noirs comme la nuit.",
      'zh': '從前，在一個遙遠的王國裡，住著一位美麗的公主，名叫白雪公主。她的皮膚像雪一樣白，嘴唇像玫瑰一樣紅，頭髮像夜一樣黑。',
    }),
    LocalizedText({
      'pt':
          'A madrasta de Branca de Neve era muito vaidosa. Todos os dias perguntava ao seu espelho mágico: "Espelho, espelho meu, existe alguém mais bela do que eu"? e o espelho sempre respondia. "Não, minha Rainha. És a mais bela de todas" ',
      'en':
          """Snow White's stepmother was very vain. Every day she asked her magic mirror, "Mirror, mirror on the wall, who is the fairest of them all?" and the mirror always replied, "You are the fairest of them all, my Queen." """,
      'es':
          'La madrastra de Blancanieves era muy vanidosa. Todos los días le preguntaba a su espejo mágico: «Espejito, espejito, ¿quién es la más bella de todas?», y el espejo siempre respondía: «Eres la más bella de todas, mi reina».',
      'fr':
          "La belle-mère de Blanche-Neige était très vaniteuse. Chaque jour, elle demandait à son miroir magique : « Miroir, miroir, qui est la plus belle de toutes ? » et le miroir répondait toujours : « C'est vous la plus belle de toutes, ma Reine. »",
      'zh':
          "白雪公主的繼母非常虛榮。她每天都問她的魔鏡：“魔鏡魔鏡告訴我，誰是世界上最美麗的女人？”魔鏡總是回答：“您是世界上最美麗的女人，我的女王。”",
    }),
    LocalizedText({
      'pt':
          """Branca de Neve ia crescendo e, a cada dia, ficava mais bonita. Ela se sentia muito sozinha no castelo e passava os dias cantando para alegrar seu coração.
            E a Rainha sempre perguntava ao espelho mágico:
            — Espelho, espelho meu, existe no mundo mulher mais bela do que eu?
            E o espelho sempre respondia:
            — Não, minha rainha. És a mais bela de todas.""",
      'en':
          """Snow White grew up and became more beautiful each day. She felt very lonely in the castle and spent her days singing to cheer herself up.
          And the Queen always asked the magic mirror:
          "Mirror, mirror on the wall, who is the fairest of them all?"
          And the mirror always replied:
          "You are the fairest of them all, my queen."
          """,
      'es': """
          Blancanieves creció y cada día se volvía más hermosa. Se sentía muy sola en el castillo y se pasaba los días cantando para animarse.
          Y la Reina siempre le preguntaba al espejo mágico:
          "Espejito, espejito, ¿quién es la más bella de todas?"
          Y el espejo siempre respondía:
          "Eres la más bella de todas, mi reina".
          """,
      'fr': """
        Blanche-Neige grandit et devint chaque jour plus belle. Se sentant très seule au château, elle passait ses journées à chanter pour se remonter le moral.
        Et la Reine demandait toujours au miroir magique :
        « Miroir, miroir, qui est la plus belle de toutes ? »
        Et le miroir répondait toujours :
        « C'est vous la plus belle de toutes, ma reine. »
        """,
      'zh': """
          白雪公主漸漸長大，一天比一天美麗。她獨自待在城堡裡，感到非常孤獨，於是整天唱歌來排解寂寞。
          王后總是問魔鏡：
          “魔鏡魔鏡告訴我，誰是世界上最美麗的女人？”
          魔鏡總是回答：
          “您是世界上最美麗的女人，我的王后。”
          """,
    }),

    LocalizedText({
      'pt':
          'Um dia, a Rainha fez a pergunta de sempre e o espelho respondeu: "És muito bonita minha Rainha, mas Branca de Neve é agora a mais bela de todas". Com ciúmes, a madrasta mandou o caçador levar Branca de Neve para a floresta e nunca mais voltar com ela.',
      'en':
          'One day, the Queen asked her usual question, and the mirror replied: "You are very beautiful, my Queen, but Snow White is now the fairest of them all." Jealous, the stepmother ordered the huntsman to take Snow White into the forest and never return with her.',
      'es':
          'Un día, la Reina hizo su pregunta de siempre, y el espejo respondió: «Eres muy hermosa, mi Reina, pero Blancanieves es ahora la más bella de todas». Celosa, la madrastra ordenó al cazador que se llevara a Blancanieves al bosque y no regresara jamás con ella.',
      'fr':
          "Un jour, la Reine posa sa question habituelle, et le miroir répondit : « Vous êtes très belle, ma Reine, mais Blanche-Neige est désormais la plus belle de toutes. » Jalouse, la belle-mère ordonna au chasseur d'emmener Blanche-Neige dans la forêt et de ne jamais revenir avec elle.",
      'zh':
          "有一天，王后像往常一樣問了魔鏡一個問題，魔鏡回答說：「王后，您非常美麗，但白雪公主才是最美的。」繼母嫉妒不已，命令獵人把白雪公主帶進森林，永遠不要帶她回來。",
    }),
    LocalizedText({
      'pt':
          'Mas, o caçador teve pena da menina e a deixou fugir. Fuja, Branca de Neve. Ela correu até que encontrou uma casinha pequena no meio da floresta.',
      'en':
          'But the hunter took pity on the girl and let her escape. Run, Snow White! She ran until she found a small house in the middle of the forest.',
      'es':
          'Pero el cazador se apiadó de la niña y la dejó escapar. ¡Corre, Blancanieves! Corrió hasta encontrar una casita en medio del bosque.',
      'fr':
          "Mais le chasseur eut pitié de la jeune fille et la laissa s'échapper. Cours, Blanche-Neige ! Elle courut jusqu'à trouver une petite maison au milieu de la forêt.",
      'zh': "但獵人憐憫這個女孩，放她走了。 「快跑，白雪公主！」她一路狂奔，直到在森林中央找到一間小屋。",
    }),
    LocalizedText({
      'pt':
          'Ela bateu na porta. Como ninguém respondeu, decidiu entrar. Branca de Neve percebeu que a casa estava desorganizada, pegou uma vassoura e começou a limpar. Depois, preparou uma deliciosa refeição.',
      'en':
          'She knocked on the door. When no one answered, she decided to go in. Snow White noticed the house was messy, grabbed a broom, and started cleaning. Then, she prepared a delicious meal.',
      'es':
          'Llamó a la puerta. Al no abrir, decidió entrar. Blancanieves notó que la casa estaba desordenada, tomó una escoba y empezó a limpiar. Luego, preparó una comida deliciosa.',
      'fr':
          "Elle frappa à la porte. Comme personne ne répondait, elle décida d'entrer. Blanche-Neige remarqua que la maison était en désordre, prit un balai et se mit à nettoyer. Ensuite, elle prépara un délicieux repas.",
      'zh': "她敲了敲門。沒人應答，她便走了進去。白雪公主發現屋子很亂，便拿起掃帚開始打掃。然後，她準備了一頓美味的晚餐。",
    }),
    LocalizedText({
      'pt':
          'A casa pertencia aos sete anões. Eles estavam trabalhando na mina e, após um dia de trabalho, pegaram suas ferramentas e foram para casa. O Mestre seguia à frente com sua lanterna, seguido por Zangado, Feliz, Soneca, Atchim, Dengoso e Dunga.',
      'en':
          "The house belonged to the seven dwarfs. They were working in the mine and, after a day's work, they gathered their tools and went home. Doc led the way with his lantern, followed by Grumpy, Happy, Sleepy, Sneezy, Bashful, and Dopey.",
      'es':
          'La casa pertenecía a los siete enanitos. Estaban trabajando en la mina y, tras un día de trabajo, recogieron sus herramientas y se fueron a casa. Doc los guiaba con su linterna, seguido de Gruñón, Feliz, Dormilón, Estornudos, Tímido y Mudito.',
      'fr':
          "La maison appartenait aux sept nains. Ils travaillaient à la mine et, après une journée de labeur, ils ramassèrent leurs outils et rentrèrent chez eux. Prof ouvrait la marche avec sa lanterne, suivi de Grincheux, Joyeux, Dormeur, Atchoum, Timide et Simplet.",
      'zh':
          "這棟房子屬於七個小矮人。他們在礦坑工作，一天工作結束後，他們收拾好工具回家了。博士提著燈籠走在最前面，後面跟著愛生氣、開心果、瞌睡蟲、噴嚏精、害羞鬼和糊塗蛋。",
    }),
    LocalizedText({
      'pt':
          'Branca de Neve estava muito cansada. Ela entrou no quarto, onde havia sete camas pequenas. Deitou-se e adormeceu rapidamente.',
      'en':
          'Snow White was very tired. She went into the room, where there were seven small beds. She lay down and quickly fell asleep.',
      'es':
          'Blancanieves estaba muy cansada. Entró en la habitación, donde había siete camas pequeñas. Se acostó y se durmió rápidamente.',
      'fr':
          "Blanche-Neige était très fatiguée. Elle entra dans la chambre où se trouvaient sept petits lits. Elle s'allongea et s'endormit aussitôt.",
      'zh': "白雪公主很累了。她走進房間，裡面有七張小床。她躺下後很快就睡著了。",
    }),
    LocalizedText({
      'pt':
          'Após uma longa caminhada pela floresta, os sete anões avistaram a casa e perceberam que alguém estava lá. Entraram em silêncio e encontraram tudo arrumado. Ao chegarem no quarto, viram uma princesa dormindo. Branca de Neve acordou e disse seu nome, enquanto os anões a observavam curiosos.',
      'en':
          'After a long walk through the forest, the seven dwarfs spotted the house and realized someone was there. They entered silently and found everything tidy. Upon reaching the bedroom, they saw a princess sleeping. Snow White woke up and said her name, while the dwarfs watched her curiously.',
      'es':
          'Tras un largo paseo por el bosque, los siete enanitos divisaron la casa y se dieron cuenta de que había alguien allí. Entraron en silencio y encontraron todo ordenado. Al llegar al dormitorio, vieron a una princesa durmiendo. Blancanieves despertó y pronunció su nombre, mientras los enanitos la observaban con curiosidad.',
      'fr':
          "Après une longue marche à travers la forêt, les sept nains aperçurent la maison et comprirent que quelqu'un s'y trouvait. Ils entrèrent silencieusement et trouvèrent tout en ordre. Arrivés dans la chambre, ils virent une princesse endormie. Blanche-Neige se réveilla et prononça son nom, sous le regard curieux des nains.",
      'zh':
          "七個小矮人穿過森林走了很遠的路，終於看到了那棟房子，意識到裡面有人。他們悄悄地走了進去，發現屋裡一切都很整潔。來到臥室，他們看到一位公主正在睡覺。白雪公主醒了過來，叫了一聲自己的名字，小矮人們好奇地看著她。",
    }),
    LocalizedText({
      'pt':
          'Branca de Neve contou sua história, e os anões a acolheram com muito carinho. Ela passou a morar com eles.',
      'en':
          'Snow White told her story, and the dwarves welcomed her with great affection. She went to live with them.',
      'es':
          'Blancanieves contó su historia y los enanitos la recibieron con gran cariño. Se fue a vivir con ellos.',
      'fr':
          "Blanche-Neige raconta son histoire, et les nains l'accueillirent avec beaucoup d'affection. Elle alla vivre avec eux.",
      'zh': "白雪公主講述了她的故事，七個小矮人熱情地接待了她。她就和他們一起生活了。",
    }),
    LocalizedText({
      'pt':
          'Os anões, preocupados com a segurança de Branca de Neve, avisaram para ela não deixar ninguém entrar. Depois, foram trabalhar na mina.',
      'en':
          "The dwarves, concerned for Snow White's safety, warned her not to let anyone in. Then they went to work in the mine.",
      'es':
          'Los enanitos, preocupados por la seguridad de Blancanieves, le advirtieron que no dejara entrar a nadie. Luego fueron a trabajar a la mina.',
      'fr':
          "Inquiets pour la sécurité de Blanche-Neige, les nains lui recommandèrent de ne laisser entrer personne. Puis ils se mirent au travail dans la mine.",
      'zh': "七個小矮人擔心白雪公主的安全，叮嚀她不要讓任何人進來。然後他們就去礦井裡工作了。",
    }),
    LocalizedText({
      'pt':
          'No castelo, a Rainha perguntou ao espelho mágico quem era a mais bela. Para sua surpresa, o espelho respondeu que Branca de Neve era a mais bela de todas. A Rainha descobriu onde ela estava escondida e arquitetou um plano malvado.',
      'en':
          'In the castle, the Queen asked the magic mirror who was the fairest of them all. To her surprise, the mirror replied that Snow White was the fairest of them all. The Queen discovered where she was hiding and hatched an evil plan.',
      'es':
          'En el castillo, la Reina le preguntó al espejo mágico quién era la más bella de todas. Para su sorpresa, el espejo respondió que Blancanieves era la más bella. La Reina descubrió dónde se escondía y urdió un plan malvado.',
      'fr':
          "Au château, la Reine demanda au miroir magique qui était la plus belle de toutes. À sa grande surprise, le miroir répondit que Blanche-Neige était la plus belle. La Reine découvrit sa cachette et ourdit un plan machiavélique.",
      'zh':
          "在城堡裡，王后問魔鏡誰是世界上最美麗的女人。令她驚訝的是，魔鏡回答白雪公主是最美麗的。王后發現了白雪公主的藏身之處，並密謀了一個邪惡的計劃。",
    }),
    LocalizedText({
      'pt':
          'Disfarçada de uma senhora vendedora, a Rainha apareceu oferecendo uma maçã vermelha e brilhante. Sem saber do perigo, Branca de Neve mordeu a maçã.',
      'en':
          'Disguised as a shopkeeper, the Queen appeared offering a bright red apple. Unaware of the danger, Snow White bit into the apple.',
      'es':
          'Disfrazada de tendera, la Reina apareció ofreciendo una manzana roja brillante. Sin percatarse del peligro, Blancanieves la mordió.',
      'fr':
          "Déguisée en commerçante, la Reine apparut et offrit une pomme rouge éclatante. Ignorant le danger, Blanche-Neige croqua dans la pomme.",
      'zh': "王后喬裝成店主，出現並遞上一顆鮮紅的蘋果。白雪公主渾然不知危險，咬了一口。",
    }),
    LocalizedText({
      'pt':
          'Ao morder a maçã envenenada, Branca de Neve caiu em um sono profundo.',
      'en':
          'Upon biting into the poisoned apple, Snow White fell into a deep sleep.',
      'es':
          'Al morder la manzana envenenada, Blancanieves cayó en un sueño profundo.',
      'fr':
          "Après avoir croqué dans la pomme empoisonnée, Blanche-Neige tomba dans un profond sommeil.",
      'zh': "白雪公主咬了一口毒蘋果後，便陷入了沉睡。",
    }),
    LocalizedText({
      'pt':
          'Os anões, muito tristes, colocaram Branca de Neve em um caixão de cristal, esperando que ela acordasse.',
      'en':
          'The dwarves, very sad, placed Snow White in a crystal coffin, hoping she would wake up.',
      'es':
          'Los enanitos, muy tristes, colocaron a Blancanieves en un ataúd de cristal, con la esperanza de que despertara.',
      'fr':
          "Les nains, très tristes, placèrent Blanche-Neige dans un cercueil de cristal, espérant qu'elle se réveillerait.",
      'zh': "七個小矮人非常傷心，他們把白雪公主放在水晶棺材裡，希望她能醒來。",
    }),
    LocalizedText({
      'pt':
          'Um príncipe bondoso apareceu, deu um beijo de amor verdadeiro, e Branca de Neve despertou. Eles viveram felizes para sempre.',
      'en':
          'A kind prince appeared, gave her a kiss of true love, and Snow White awoke. They lived happily ever after.',
      'es':
          'Apareció un príncipe bondadoso, le dio un beso de amor verdadero y Blancanieves despertó. Vivieron felices para siempre.',
      'fr':
          "Un prince bienveillant apparut, lui donna un baiser d'amour véritable, et Blanche-Neige s'éveilla. Ils vécurent heureux pour toujours.",
      'zh': "一位善良的王子出現了，給了她一個充滿愛的吻，白雪公主醒了過來。從此，他們過著了幸福的生活。",
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
