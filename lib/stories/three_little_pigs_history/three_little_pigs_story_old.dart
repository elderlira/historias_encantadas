import 'package:flutter/material.dart';

import '../../models/story_config.dart';
import '../../models/story_page.dart';

class ThreeLittlePigsStory {
  static StoryConfig build(String lang) {
    switch (lang) {
      case 'en':
        return _en();
      case 'fr':
        return _fr();
      case 'es':
        return _es();
      default:
        return _pt();
    }
  }

  static StoryConfig _pt() {
    return StoryConfig(
      title: 'Os três porquinhos',
      storyId: 'three_little_pigs',
      primaryColor: const Color.fromARGB(255, 58, 91, 143),
      accentColor: const Color.fromARGB(255, 58, 78, 110),
      audioBasePath: 'sounds/threeLittlePigs',
      imageBasePath: 'assets/images/threeLittlePigs',
      pages: [
        StoryPage(
          pageNumber: 1,
          text:
              """Era uma vez, três porquinhos irmãos que decidiram construir suas próprias casas.""",
          imageDescription:
              """Os três porquinhos, sorrindo, acenando debaixo de uma árvore grande e frondosa. No fundo, um campo verde ensolarado e um caminho.""",
        ),
        StoryPage(
          pageNumber: 2,
          text:
              """"O Porquinho Cícero era o mais preguiçoso. Ele não queria ter muito trabalho e escolheu construir sua casa de palha.""",
          imageDescription:
              """O Porquinho Cícero (magro, talvez com um chapéu engraçado) está empilhando rapidamente um monte de palha para formar uma casa. Ele parece cansado, mas aliviado por terminar logo.""",
        ),
        StoryPage(
          pageNumber: 3,
          text:
              """O Porquinho Heitor era um pouco mais cuidadoso. Ele resolveu fazer a sua casa de madeira, pois era mais forte que a de palha.""",
          imageDescription:
              """O Porquinho Heitor (de tamanho médio, talvez com óculos de segurança) está martelando tábuas de madeira para construir sua casa. Ele parece concentrado.""",
        ),
        StoryPage(
          pageNumber: 4,
          text:
              """O Porquinho Prático, o mais velho, era o mais esperto. Ele sabia que precisava de uma casa muito forte. Ele escolheu construir sua casa de tijolos.""",
          imageDescription:
              """O Porquinho Prático (mais robusto, talvez usando um avental de pedreiro) está assentando tijolos com argamassa. A casa de tijolos está começando a tomar forma e parece muito sólida.""",
        ),
        StoryPage(
          pageNumber: 5,
          text:
              """Os três porquinhos estavam felizes em suas casas novas. Mas, na floresta, vivia o Lobo Mau.""",
          imageDescription:
              """O Lobo Mau (grande, de dentes afiados, com um olhar astuto) aparece espiando por trás de uma árvore escura. Ele está olhando para as três casas no campo.""",
        ),
        StoryPage(
          pageNumber: 6,
          text:
              """O Lobo Mau chegou primeiro na casa de palha de Cícero. Ele bateu na porta.""",
          imageDescription:
              """O Lobo Mau está em frente à pequena e frágil casa de palha. O Porquinho Cícero está olhando assustado pela janela.""",
        ),
        StoryPage(
          pageNumber: 7,
          text:
              """Abra a porta! Se não abrir, eu vou soprar e a sua casa vou derrubar!" O lobo encheu os pulmões e... PFFFF! """,
          imageDescription:
              """O Lobo Mau está soprando com força, bochechas infladas. A casa de palha está sendo levantada pelo vento forte, com pedaços de palha voando.""",
        ),
        StoryPage(
          pageNumber: 8,
          text:
              """A casa de palha voou para longe! Cícero saiu correndo, morrendo de medo, e foi se esconder na casa de madeira de Heitor.""",
          imageDescription:
              """O Porquinho Cícero correndo desesperado em direção à casa de madeira. A casa de palha está em ruínas no chão. """,
        ),
        StoryPage(
          pageNumber: 9,
          text:
              """O Lobo Mau foi atrás deles e chegou à casa de madeira. "Abram a porta, seus porquinhos! """,
          imageDescription:
              """O Lobo Mau está em frente à casa de madeira. Os dois porquinhos (Cícero e Heitor) estão juntos e assustados, olhando pela janela.""",
        ),
        StoryPage(
          pageNumber: 10,
          text:
              """O Lobo soprou e soprou de novo. PFFFF! PFFFF! A casa de madeira balançou muito!.""",
          imageDescription:
              """O Lobo Mau soprando novamente, com mais esforço. A casa de madeira está tremendo, mas ainda de pé. Algumas tábuas podem estar se soltando.""",
        ),
        StoryPage(
          pageNumber: 11,
          text:
              """Mas a casa de madeira era um pouco mais forte. Depois de muito esforço, ela também caiu. Os dois porquinhos fugiram para a casa de tijolos.""",
          imageDescription:
              """A casa de madeira desmoronando em pedaços. Os dois porquinhos correndo muito rápido em direção à casa de tijolos.""",
        ),
        StoryPage(
          pageNumber: 12,
          text:
              """Agora, os três irmãos estavam juntos na casa de tijolos de Prático. "Podem vir, seu lobo bobo! """,
          imageDescription:
              """Os três porquinhos olhando confiantes pela janela da sólida casa de tijolos. A casa é robusta e tem uma chaminé.""",
        ),
        StoryPage(
          pageNumber: 13,
          text:
              """O Lobo chegou na casa de tijolos. Ele soprou com toda sua força! PFFFFFFFFF!!""",
          imageDescription:
              """O Lobo Mau soprando o máximo que pode. Ele está vermelho de esforço. A casa de tijolos está imóvel, talvez com um pouco de poeira levantando.""",
        ),
        StoryPage(
          pageNumber: 14,
          text:
              """ Ele soprou mais uma vez. E mais uma vez. Mas a casa de tijolos não se mexeu. Ela era muito forte!""",
          imageDescription:
              """O Lobo Mau agora está exausto, deitado no chão, ofegando. Os três porquinhos estão rindo da janela.""",
        ),
        StoryPage(
          pageNumber: 15,
          text:
              """O Lobo Mau teve uma ideia: ele subiria na chaminé! Mas o Porquinho Prático estava esperando por ele.""",
          imageDescription:
              """O Lobo Mau tentando escalar o telhado para chegar à chaminé. O Porquinho Prático está dentro da casa, acendendo um fogo na lareira e colocando um caldeirão de água para ferver.""",
        ),
        StoryPage(
          pageNumber: 16,
          text:
              """O lobo escorregou pela chaminé e CAIU direto no caldeirão de água quente!""",
          imageDescription:
              """O Lobo Mau caindo na água quente, gritando. O caldeirão está fumegante. Os três porquinhos estão pulando de alegria.""",
        ),
        StoryPage(
          pageNumber: 17,
          text:
              """O Lobo Mau saiu correndo, assustado, e nunca mais voltou para incomodar os três porquinhos.""",
          imageDescription:
              """O Lobo Mau correndo o mais rápido que pode para longe, com o bumbum vermelho e quente. Ele está com uma expressão de dor e terror.""",
        ),
        StoryPage(
          pageNumber: 18,
          text:
              """E assim, os três porquinhos viveram felizes e aprenderam uma lição: vale a pena se esforçar para fazer as coisas bem-feitas!""",
          imageDescription:
              """Os três porquinhos juntos na frente da sólida casa de tijolos, felizes e abraçados. O sol está brilhando.""",
        ),
        StoryPage(
          pageNumber: 19,
          text: """Te aguardo novamente. Até logo.""",
          imageDescription: """Os três porquinhos se despedem dos amigos.""",
        ),
      ],
    );
  }

  static StoryConfig _fr() {
    return StoryConfig(
      title: 'Chapeuzinho Vermelho',
      storyId: 'red_hat',
      primaryColor: Colors.red.shade600,
      accentColor: Colors.red.shade700,
      audioBasePath: 'sounds/pt/redHat',
      imageBasePath: 'assets/images/redHat',
      pages: [
        StoryPage(
          pageNumber: 1,
          text:
              """Era uma vez, três porquinhos irmãos que decidiram construir suas próprias casas.""",
          imageDescription:
              """Os três porquinhos, sorrindo, acenando debaixo de uma árvore grande e frondosa. No fundo, um campo verde ensolarado e um caminho.""",
        ),
        StoryPage(
          pageNumber: 2,
          text:
              """"O Porquinho Cícero era o mais preguiçoso. Ele não queria ter muito trabalho e escolheu construir sua casa de palha.""",
          imageDescription:
              """O Porquinho Cícero (magro, talvez com um chapéu engraçado) está empilhando rapidamente um monte de palha para formar uma casa. Ele parece cansado, mas aliviado por terminar logo.""",
        ),
        StoryPage(
          pageNumber: 3,
          text:
              """O Porquinho Heitor era um pouco mais cuidadoso. Ele resolveu fazer a sua casa de madeira, pois era mais forte que a de palha.""",
          imageDescription:
              """O Porquinho Heitor (de tamanho médio, talvez com óculos de segurança) está martelando tábuas de madeira para construir sua casa. Ele parece concentrado.""",
        ),
        StoryPage(
          pageNumber: 4,
          text:
              """O Porquinho Prático, o mais velho, era o mais esperto. Ele sabia que precisava de uma casa muito forte. Ele escolheu construir sua casa de tijolos.""",
          imageDescription:
              """O Porquinho Prático (mais robusto, talvez usando um avental de pedreiro) está assentando tijolos com argamassa. A casa de tijolos está começando a tomar forma e parece muito sólida.""",
        ),
        StoryPage(
          pageNumber: 5,
          text:
              """Os três porquinhos estavam felizes em suas casas novas. Mas, na floresta, vivia o Lobo Mau.""",
          imageDescription: """""",
        ),
        StoryPage(
          pageNumber: 6,
          text:
              """O Lobo Mau chegou primeiro na casa de palha de Cícero. Ele bateu na porta.""",
          imageDescription: """""",
        ),
        StoryPage(
          pageNumber: 7,
          text:
              """ "Abra a porta! Se não abrir, eu vou soprar e a sua casa vou derrubar!" O lobo encheu os pulmões e... PFFFF! """,
          imageDescription:
              """O Lobo Mau está soprando com força, bochechas infladas. A casa de palha está sendo levantada pelo vento forte, com pedaços de palha voando.""",
        ),
        StoryPage(
          pageNumber: 8,
          text:
              """A casa de palha voou para longe! Cícero saiu correndo, morrendo de medo, e foi se esconder na casa de madeira de Heitor.""",
          imageDescription:
              """O Porquinho Cícero correndo desesperado em direção à casa de madeira. A casa de palha está em ruínas no chão. """,
        ),
        StoryPage(
          pageNumber: 9,
          text:
              """O Lobo Mau foi atrás deles e chegou à casa de madeira. "Abram a porta, seus porquinhos!" """,
          imageDescription:
              """O Lobo Mau está em frente à casa de madeira. Os dois porquinhos (Cícero e Heitor) estão juntos e assustados, olhando pela janela.""",
        ),
        StoryPage(
          pageNumber: 10,
          text:
              """O Lobo soprou e soprou de novo. PFFFF! PFFFF! A casa de madeira balançou muito!.""",
          imageDescription:
              """O Lobo Mau soprando novamente, com mais esforço. A casa de madeira está tremendo, mas ainda de pé. Algumas tábuas podem estar se soltando.""",
        ),
        StoryPage(
          pageNumber: 11,
          text:
              """Mas a casa de madeira era um pouco mais forte. Depois de muito esforço, ela também caiu. Os dois porquinhos fugiram para a casa de tijolos.""",
          imageDescription:
              """A casa de madeira desmoronando em pedaços. Os dois porquinhos correndo muito rápido em direção à casa de tijolos.""",
        ),
        StoryPage(
          pageNumber: 12,
          text:
              """Agora, os três irmãos estavam juntos na casa de tijolos de Prático. "Podem vir, seu lobo bobo! """,
          imageDescription:
              """Os três porquinhos olhando confiantes pela janela da sólida casa de tijolos. A casa é robusta e tem uma chaminé.""",
        ),
        StoryPage(
          pageNumber: 13,
          text:
              """O Lobo chegou na casa de tijolos. Ele soprou com toda sua força! PFFFFFFFFF!!""",
          imageDescription:
              """O Lobo Mau soprando o máximo que pode. Ele está vermelho de esforço. A casa de tijolos está imóvel, talvez com um pouco de poeira levantando.""",
        ),
        StoryPage(
          pageNumber: 14,
          text:
              """ Ele soprou mais uma vez. E mais uma vez. Mas a casa de tijolos não se mexeu. Ela era muito forte!""",
          imageDescription:
              """O Lobo Mau agora está exausto, deitado no chão, ofegando. Os três porquinhos estão rindo da janela.""",
        ),
        StoryPage(
          pageNumber: 15,
          text:
              """O Lobo Mau teve uma ideia: ele subiria na chaminé! Mas o Porquinho Prático estava esperando por ele.""",
          imageDescription:
              """O Lobo Mau tentando escalar o telhado para chegar à chaminé. O Porquinho Prático está dentro da casa, acendendo um fogo na lareira e colocando um caldeirão de água para ferver.""",
        ),
        StoryPage(
          pageNumber: 16,
          text:
              """O lobo escorregou pela chaminé e CAIU direto no caldeirão de água quente!""",
          imageDescription:
              """O Lobo Mau caindo na água quente, gritando. O caldeirão está fumegante. Os três porquinhos estão pulando de alegria.""",
        ),
        StoryPage(
          pageNumber: 17,
          text:
              """O Lobo Mau saiu correndo, assustado, e nunca mais voltou para incomodar os três porquinhos.""",
          imageDescription:
              """O Lobo Mau correndo o mais rápido que pode para longe, com o bumbum vermelho e quente. Ele está com uma expressão de dor e terror.""",
        ),
        StoryPage(
          pageNumber: 18,
          text:
              """E assim, os três porquinhos viveram felizes e aprenderam uma lição: vale a pena se esforçar para fazer as coisas bem-feitas!""",
          imageDescription:
              """Os três porquinhos juntos na frente da sólida casa de tijolos, felizes e abraçados. O sol está brilhando.""",
        ),
        StoryPage(
          pageNumber: 19,
          text: """Te aguardo novamente. Até logo.""",
          imageDescription: """Os três porquinhos se despedem dos amigos.""",
        ),
      ],
    );
  }

  static StoryConfig _en() {
    return StoryConfig(
      title: 'Chapeuzinho Vermelho',
      storyId: 'red_hat',
      primaryColor: Colors.red.shade600,
      accentColor: Colors.red.shade700,
      audioBasePath: 'sounds/pt/redHat',
      imageBasePath: 'assets/images/redHat',
      pages: [
        StoryPage(
          pageNumber: 1,
          text:
              """Era uma vez, três porquinhos irmãos que decidiram construir suas próprias casas.""",
          imageDescription:
              """Os três porquinhos, sorrindo, acenando debaixo de uma árvore grande e frondosa. No fundo, um campo verde ensolarado e um caminho.""",
        ),
        StoryPage(
          pageNumber: 2,
          text:
              """"O Porquinho Cícero era o mais preguiçoso. Ele não queria ter muito trabalho e escolheu construir sua casa de palha.""",
          imageDescription:
              """O Porquinho Cícero (magro, talvez com um chapéu engraçado) está empilhando rapidamente um monte de palha para formar uma casa. Ele parece cansado, mas aliviado por terminar logo.""",
        ),
        StoryPage(
          pageNumber: 3,
          text:
              """O Porquinho Heitor era um pouco mais cuidadoso. Ele resolveu fazer a sua casa de madeira, pois era mais forte que a de palha.""",
          imageDescription:
              """O Porquinho Heitor (de tamanho médio, talvez com óculos de segurança) está martelando tábuas de madeira para construir sua casa. Ele parece concentrado.""",
        ),
        StoryPage(
          pageNumber: 4,
          text:
              """O Porquinho Prático, o mais velho, era o mais esperto. Ele sabia que precisava de uma casa muito forte. Ele escolheu construir sua casa de tijolos.""",
          imageDescription:
              """O Porquinho Prático (mais robusto, talvez usando um avental de pedreiro) está assentando tijolos com argamassa. A casa de tijolos está começando a tomar forma e parece muito sólida.""",
        ),
        StoryPage(
          pageNumber: 5,
          text:
              """Os três porquinhos estavam felizes em suas casas novas. Mas, na floresta, vivia o Lobo Mau.""",
          imageDescription:
              """O Lobo Mau (grande, de dentes afiados, com um olhar astuto) aparece espiando por trás de uma árvore escura. Ele está olhando para as três casas no campo.""",
        ),
        StoryPage(
          pageNumber: 6,
          text:
              """O Lobo Mau chegou primeiro na casa de palha de Cícero. Ele bateu na porta.""",
          imageDescription:
              """O Lobo Mau está em frente à pequena e frágil casa de palha. O Porquinho Cícero está olhando assustado pela janela.""",
        ),
        StoryPage(
          pageNumber: 7,
          text:
              """ "Abra a porta! Se não abrir, eu vou soprar e a sua casa vou derrubar!" O lobo encheu os pulmões e... PFFFF! """,
          imageDescription:
              """O Lobo Mau está soprando com força, bochechas infladas. A casa de palha está sendo levantada pelo vento forte, com pedaços de palha voando.""",
        ),
        StoryPage(
          pageNumber: 8,
          text:
              """A casa de palha voou para longe! Cícero saiu correndo, morrendo de medo, e foi se esconder na casa de madeira de Heitor.""",
          imageDescription:
              """O Porquinho Cícero correndo desesperado em direção à casa de madeira. A casa de palha está em ruínas no chão. """,
        ),
        StoryPage(
          pageNumber: 9,
          text:
              """O Lobo Mau foi atrás deles e chegou à casa de madeira. "Abram a porta, seus porquinhos!" """,
          imageDescription:
              """O Lobo Mau está em frente à casa de madeira. Os dois porquinhos (Cícero e Heitor) estão juntos e assustados, olhando pela janela.""",
        ),
        StoryPage(
          pageNumber: 10,
          text:
              """O Lobo soprou e soprou de novo. PFFFF! PFFFF! A casa de madeira balançou muito!.""",
          imageDescription:
              """O Lobo Mau soprando novamente, com mais esforço. A casa de madeira está tremendo, mas ainda de pé. Algumas tábuas podem estar se soltando.""",
        ),
        StoryPage(
          pageNumber: 11,
          text:
              """Mas a casa de madeira era um pouco mais forte. Depois de muito esforço, ela também caiu. Os dois porquinhos fugiram para a casa de tijolos.""",
          imageDescription:
              """A casa de madeira desmoronando em pedaços. Os dois porquinhos correndo muito rápido em direção à casa de tijolos.""",
        ),
        StoryPage(
          pageNumber: 12,
          text:
              """Agora, os três irmãos estavam juntos na casa de tijolos de Prático. "Podem vir, seu lobo bobo! """,
          imageDescription:
              """Os três porquinhos olhando confiantes pela janela da sólida casa de tijolos. A casa é robusta e tem uma chaminé.""",
        ),
        StoryPage(
          pageNumber: 13,
          text:
              """O Lobo chegou na casa de tijolos. Ele soprou com toda sua força! PFFFFFFFFF!!""",
          imageDescription:
              """O Lobo Mau soprando o máximo que pode. Ele está vermelho de esforço. A casa de tijolos está imóvel, talvez com um pouco de poeira levantando.""",
        ),
        StoryPage(
          pageNumber: 14,
          text:
              """ Ele soprou mais uma vez. E mais uma vez. Mas a casa de tijolos não se mexeu. Ela era muito forte!""",
          imageDescription:
              """O Lobo Mau agora está exausto, deitado no chão, ofegando. Os três porquinhos estão rindo da janela.""",
        ),
        StoryPage(
          pageNumber: 15,
          text:
              """O Lobo Mau teve uma ideia: ele subiria na chaminé! Mas o Porquinho Prático estava esperando por ele.""",
          imageDescription:
              """O Lobo Mau tentando escalar o telhado para chegar à chaminé. O Porquinho Prático está dentro da casa, acendendo um fogo na lareira e colocando um caldeirão de água para ferver.""",
        ),
        StoryPage(
          pageNumber: 16,
          text:
              """O lobo escorregou pela chaminé e CAIU direto no caldeirão de água quente!""",
          imageDescription:
              """O Lobo Mau caindo na água quente, gritando. O caldeirão está fumegante. Os três porquinhos estão pulando de alegria.""",
        ),
        StoryPage(
          pageNumber: 17,
          text:
              """O Lobo Mau saiu correndo, assustado, e nunca mais voltou para incomodar os três porquinhos.""",
          imageDescription:
              """O Lobo Mau correndo o mais rápido que pode para longe, com o bumbum vermelho e quente. Ele está com uma expressão de dor e terror.""",
        ),
        StoryPage(
          pageNumber: 18,
          text:
              """E assim, os três porquinhos viveram felizes e aprenderam uma lição: vale a pena se esforçar para fazer as coisas bem-feitas!""",
          imageDescription:
              """Os três porquinhos juntos na frente da sólida casa de tijolos, felizes e abraçados. O sol está brilhando.""",
        ),
        StoryPage(
          pageNumber: 19,
          text: """Te aguardo novamente. Até logo.""",
          imageDescription: """Os três porquinhos se despedem dos amigos.""",
        ),
      ],
    );
  }

  static StoryConfig _es() {
    return StoryConfig(
      title: 'Chapeuzinho Vermelho',
      storyId: 'red_hat',
      primaryColor: Colors.red.shade600,
      accentColor: Colors.red.shade700,
      audioBasePath: 'sounds/pt/redHat',
      imageBasePath: 'assets/images/redHat',
      pages: [
        StoryPage(
          pageNumber: 1,
          text:
              """Era uma vez, três porquinhos irmãos que decidiram construir suas próprias casas.""",
          imageDescription:
              """Os três porquinhos, sorrindo, acenando debaixo de uma árvore grande e frondosa. No fundo, um campo verde ensolarado e um caminho.""",
        ),
        StoryPage(
          pageNumber: 2,
          text:
              """"O Porquinho Cícero era o mais preguiçoso. Ele não queria ter muito trabalho e escolheu construir sua casa de palha.""",
          imageDescription:
              """O Porquinho Cícero (magro, talvez com um chapéu engraçado) está empilhando rapidamente um monte de palha para formar uma casa. Ele parece cansado, mas aliviado por terminar logo.""",
        ),
        StoryPage(
          pageNumber: 3,
          text:
              """O Porquinho Heitor era um pouco mais cuidadoso. Ele resolveu fazer a sua casa de madeira, pois era mais forte que a de palha.""",
          imageDescription:
              """O Porquinho Heitor (de tamanho médio, talvez com óculos de segurança) está martelando tábuas de madeira para construir sua casa. Ele parece concentrado.""",
        ),
        StoryPage(
          pageNumber: 4,
          text:
              """O Porquinho Prático, o mais velho, era o mais esperto. Ele sabia que precisava de uma casa muito forte. Ele escolheu construir sua casa de tijolos.""",
          imageDescription:
              """O Porquinho Prático (mais robusto, talvez usando um avental de pedreiro) está assentando tijolos com argamassa. A casa de tijolos está começando a tomar forma e parece muito sólida.""",
        ),
        StoryPage(
          pageNumber: 5,
          text:
              """Os três porquinhos estavam felizes em suas casas novas. Mas, na floresta, vivia o Lobo Mau.""",
          imageDescription:
              """O Lobo Mau (grande, de dentes afiados, com um olhar astuto) aparece espiando por trás de uma árvore escura. Ele está olhando para as três casas no campo.""",
        ),
        StoryPage(
          pageNumber: 6,
          text:
              """O Lobo Mau chegou primeiro na casa de palha de Cícero. Ele bateu na porta.""",
          imageDescription:
              """O Lobo Mau está em frente à pequena e frágil casa de palha. O Porquinho Cícero está olhando assustado pela janela.""",
        ),
        StoryPage(
          pageNumber: 7,
          text:
              """ "Abra a porta! Se não abrir, eu vou soprar e a sua casa vou derrubar!" O lobo encheu os pulmões e... PFFFF! """,
          imageDescription:
              """O Lobo Mau está soprando com força, bochechas infladas. A casa de palha está sendo levantada pelo vento forte, com pedaços de palha voando.""",
        ),
        StoryPage(
          pageNumber: 8,
          text:
              """A casa de palha voou para longe! Cícero saiu correndo, morrendo de medo, e foi se esconder na casa de madeira de Heitor.""",
          imageDescription:
              """O Porquinho Cícero correndo desesperado em direção à casa de madeira. A casa de palha está em ruínas no chão. """,
        ),
        StoryPage(
          pageNumber: 9,
          text:
              """O Lobo Mau foi atrás deles e chegou à casa de madeira. "Abram a porta, seus porquinhos!" """,
          imageDescription:
              """O Lobo Mau está em frente à casa de madeira. Os dois porquinhos (Cícero e Heitor) estão juntos e assustados, olhando pela janela.""",
        ),
        StoryPage(
          pageNumber: 10,
          text:
              """O Lobo soprou e soprou de novo. PFFFF! PFFFF! A casa de madeira balançou muito!.""",
          imageDescription:
              """O Lobo Mau soprando novamente, com mais esforço. A casa de madeira está tremendo, mas ainda de pé. Algumas tábuas podem estar se soltando.""",
        ),
        StoryPage(
          pageNumber: 11,
          text:
              """Mas a casa de madeira era um pouco mais forte. Depois de muito esforço, ela também caiu. Os dois porquinhos fugiram para a casa de tijolos.""",
          imageDescription:
              """A casa de madeira desmoronando em pedaços. Os dois porquinhos correndo muito rápido em direção à casa de tijolos.""",
        ),
        StoryPage(
          pageNumber: 12,
          text:
              """Agora, os três irmãos estavam juntos na casa de tijolos de Prático. "Podem vir, seu lobo bobo! """,
          imageDescription:
              """Os três porquinhos olhando confiantes pela janela da sólida casa de tijolos. A casa é robusta e tem uma chaminé.""",
        ),
        StoryPage(
          pageNumber: 13,
          text:
              """O Lobo chegou na casa de tijolos. Ele soprou com toda sua força! PFFFFFFFFF!!""",
          imageDescription:
              """O Lobo Mau soprando o máximo que pode. Ele está vermelho de esforço. A casa de tijolos está imóvel, talvez com um pouco de poeira levantando.""",
        ),
        StoryPage(
          pageNumber: 14,
          text:
              """ Ele soprou mais uma vez. E mais uma vez. Mas a casa de tijolos não se mexeu. Ela era muito forte!""",
          imageDescription:
              """O Lobo Mau agora está exausto, deitado no chão, ofegando. Os três porquinhos estão rindo da janela.""",
        ),
        StoryPage(
          pageNumber: 15,
          text:
              """O Lobo Mau teve uma ideia: ele subiria na chaminé! Mas o Porquinho Prático estava esperando por ele.""",
          imageDescription:
              """O Lobo Mau tentando escalar o telhado para chegar à chaminé. O Porquinho Prático está dentro da casa, acendendo um fogo na lareira e colocando um caldeirão de água para ferver.""",
        ),
        StoryPage(
          pageNumber: 16,
          text:
              """O lobo escorregou pela chaminé e CAIU direto no caldeirão de água quente!""",
          imageDescription:
              """O Lobo Mau caindo na água quente, gritando. O caldeirão está fumegante. Os três porquinhos estão pulando de alegria.""",
        ),
        StoryPage(
          pageNumber: 17,
          text:
              """O Lobo Mau saiu correndo, assustado, e nunca mais voltou para incomodar os três porquinhos.""",
          imageDescription:
              """O Lobo Mau correndo o mais rápido que pode para longe, com o bumbum vermelho e quente. Ele está com uma expressão de dor e terror.""",
        ),
        StoryPage(
          pageNumber: 18,
          text:
              """E assim, os três porquinhos viveram felizes e aprenderam uma lição: vale a pena se esforçar para fazer as coisas bem-feitas!""",
          imageDescription:
              """Os três porquinhos juntos na frente da sólida casa de tijolos, felizes e abraçados. O sol está brilhando.""",
        ),
        StoryPage(
          pageNumber: 19,
          text: """Te aguardo novamente. Até logo.""",
          imageDescription: """Os três porquinhos se despedem dos amigos.""",
        ),
      ],
    );
  }
}
