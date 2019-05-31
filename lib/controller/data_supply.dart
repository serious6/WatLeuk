import 'dart:collection';

import 'package:watleuk/model/translation.dart';

class DataSupplyController {
  Queue<Translation> buildData() {
    final Queue<Translation> _translations = new Queue();
    _translations.add(new Translation("Kom rein!", "Kom binnen!"));
    _translations.add(new Translation("Hallo", "Hoi"));
    _translations.add(new Translation("heißen", "heeten"));
    _translations.add(new Translation("essen", "eeten"));
    _translations.add(new Translation("radfahren", "fietsen"));
    _translations.add(new Translation("kochen", "koken"));
    _translations.add(new Translation("Stockwerk", "verdieping"));
    _translations.add(new Translation("es regnet", "het regent"));
    _translations.add(new Translation("Bis bald! ", "tot ziens!"));
    _translations.add(new Translation("Silberzwiebeln", "zilveruitjes"));
    _translations.add(new Translation("Kühlschrank ", "koelkast"));
    _translations.add(new Translation("Nicht-Raucher", "niet-roker"));
    _translations.add(new Translation("Gouda ", "Gouda"));
    _translations.add(new Translation("Gemüse", "Groente"));
    _translations.add(new Translation("Stauballergie", "Stofallergie"));
    _translations.add(new Translation("Hochzeit", "Bruiloft"));
    _translations.add(new Translation("treffen ", "ontmoeten"));
    _translations.add(new Translation("herrlich ", "heerlijke"));
    _translations.add(new Translation("Frühstück ", "ontbijt"));
    _translations.add(new Translation("einkaufen ", "winkelen"));
    _translations.add(new Translation("Fußball spielen ", "voetballen"));
    _translations.add(
        new Translation("Computerspiele spielen", "computerspelletjes spelen"));
    _translations.add(new Translation("und", "en"));
    _translations.add(new Translation("oder", "of"));
    _translations.add(new Translation("warum ", "waarom"));
    _translations.add(new Translation("wann ", "wanneer"));
    _translations.add(new Translation("wie ", "hou"));
    _translations.add(new Translation("was ", "wat"));
    _translations.add(new Translation("wer ", "wie"));
    _translations.add(new Translation("aber ", "maar"));
    _translations.add(new Translation("wie schön!", "wat leuk!"));
    _translations.add(new Translation("Das stimmt", "Dat klopt"));
    _translations.add(new Translation("Ich spreche ein bisschen Niederländisch",
        "Ik spreek en beetje Nederlands"));
    _translations.add(new Translation("gar nicht", "helemal niet"));
    _translations.add(new Translation("sehr gut", "heel goed"));
    _translations.add(new Translation("bitte", "alsjeblieft"));
    _translations.add(new Translation("Burnout", "Overspannung"));
    return _translations;
  }
}