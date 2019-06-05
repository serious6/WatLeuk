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
    _translations.add(new Translation("fünfte", "vijfde"));
    _translations.add(new Translation("viele große Handtücher", "veel grote handdoeken"));
    _translations.add(new Translation("guter Preis/Kauf", "goed koop"));
    _translations.add(new Translation("zentral", "centraal"));
    _translations.add(new Translation("Sauberes Zimmer", "schöne Kammer"));
    _translations.add(new Translation("nicht zu teuer", "niet te duur"));
    _translations.add(new Translation("nachts ruhig", "nachts rustig"));
    _translations.add(new Translation("großes gemütliches Bett", "groot comfortabel bed"));
    _translations.add(new Translation("gute Bewertung", "goede waardering"));
    _translations.add(new Translation("keine Biester", "geen beestjes"));
    _translations.add(new Translation("lange Öffnungszeiten", "lange openingstijder"));
    _translations.add(new Translation("ausgiebiges Frühstück", "uitgebreid ontbijt"));
    _translations.add(new Translation("Durchzug", "docht"));
    _translations.add(new Translation("wieviel", "hoeveel"));
    _translations.add(new Translation("woher", "waar vandan"));
    _translations.add(new Translation("zum Beispiel", "bijvoorbeeld"));
    _translations.add(new Translation("Was passiert heute?", "Wat gebeurt er vandaag?"));
    _translations.add(new Translation("ein Fass", "en vat"));
    _translations.add(new Translation("das riecht herrlich", "dat ruikt heerlijk"));
    _translations.add(new Translation("dumm von mir", "dom van mij"));
    _translations.add(new Translation("Mitbewohner/in", "huisgenoot"));
    _translations.add(new Translation("Gestern bin ich nach hause gelaufen (perfekt)", "Gisteren ben ik naar huis gelopen"));
    _translations.add(new Translation("Gestern lief ich nach hause (Präteritum)", "Gisteren liep ik naar huis"));
    _translations.add(new Translation("immer", "altijd"));
    _translations.add(new Translation("Zwiebeln", "uien"));
    _translations.add(new Translation("nie", "nooit"));
    _translations.add(new Translation("Glück", "geloek"));
    _translations.add(new Translation("Einkaufsliste", "boodschappenlijst"));
    _translations.add(new Translation("Was essen wir?", "War eten we?"));
    _translations.add(new Translation("Wer macht was?", "Wie doet wat?"));
    _translations.add(new Translation("Ich soll das nicht essen", "Ik mag het niet eten. "));
    _translations.add(new Translation("gegen sechs Uhr", "om een uur of zes/ rund zes uur"));
    _translations.add(new Translation("Eine Verabredung zum Essen", "een eet afspraak"));
    _translations.add(new Translation("viel Schlaf", "veel slaap"));
    _translations.add(new Translation("Grüße", "groetjes"));
    _translations.add(new Translation("der Regen", "de regen"));
    _translations.add(new Translation("die Wolken", "de wolken"));
    _translations.add(new Translation("die Sonne", "de zon"));
    _translations.add(new Translation("der Schnee", "de sneeuw"));
    _translations.add(new Translation("der Wind", "de wind"));
    _translations.add(new Translation("das Unwetter", "het onweer"));
    _translations.add(new Translation("die Sonne scheint", "de zon schijnt"));
    _translations.add(new Translation("es weht", "het waait"));
    _translations.add(new Translation("es unwettert", "het ontweert"));
    _translations.add(new Translation("es schneit", "het sneeuwt"));
    _translations.add(new Translation("es ist bewölkt", "het is bewolkt"));
    _translations.add(new Translation("der Tresor", "de kluis"));
    _translations.add(new Translation("das Zimmer", "de kamer"));
    _translations.add(new Translation("erste", "eerste"));
    _translations.add(new Translation("zweite", "tweede"));
    _translations.add(new Translation("dritte", "derde"));
    _translations.add(new Translation("vierte", "vierde"));
    _translations.add(new Translation("fünfte", "vijfde"));
    _translations.add(new Translation("sechste", "zesde"));
    _translations.add(new Translation("siebte", "zevende"));
    _translations.add(new Translation("achte", "achtste"));
    _translations.add(new Translation("neunte", "negende"));
    _translations.add(new Translation("zehnte", "tiende"));
    _translations.add(new Translation("elfte ", "elfde"));
    _translations.add(new Translation("zwölfte", "twaalfde"));
    _translations.add(new Translation("zwanzigste", "twintigste"));
    _translations.add(new Translation("einundzwanzigste", "eenentwintigste"));
    _translations.add(new Translation("zweiuzndzwanzigste", "tweeëntwintigste"));
    _translations.add(new Translation("dreißigste", "dertigste"));
    _translations.add(new Translation("vierzigste", "veertigste"));
    _translations.add(new Translation("fünfzigste", "vijftigste"));
    _translations.add(new Translation("sechszigste", "zestigste"));
    _translations.add(new Translation("siebzigste", "zevendigste"));
    _translations.add(new Translation("achzigste", "tachstigste"));
    _translations.add(new Translation("neunzigste", "negentigste"));
    _translations.add(new Translation("hundertste", "hondertste"));
    _translations.add(new Translation("tausendste", "duizendste"));
    _translations.add(new Translation("millionste", "miljoenste"));
    _translations.add(new Translation("verantwortlich", "verantwoordelijk"));
    _translations.add(new Translation("Verkauf", "verkoop"));
    _translations.add(new Translation("Wasser", "water"));
    _translations.add(new Translation("Durst", "dorst"));
    _translations.add(new Translation("beinhalten", "bevatten"));
    _translations.add(new Translation("rand(voll)", "boord(evol)"));
    _translations.add(new Translation("fortan", "voortaan"));
    _translations.add(new Translation("anstelle von ", "in plaats von"));
    _translations.add(new Translation("Milchpuder", "melkpoeder"));
    _translations.add(new Translation("Insulinmengen", "insulinehoeveelheden"));
    _translations.add(new Translation("Fisch", "vis"));
    _translations.add(new Translation("Huhn", "kip"));
    _translations.add(new Translation("Karrotten", "wortels"));
    _translations.add(new Translation("Sellerie", "selderie"));
    _translations.add(new Translation("Petersilie", "petersilie"));
    _translations.add(new Translation("Eier", "eieren"));
    _translations.add(new Translation("Reis", "rijst"));
    _translations.add(new Translation("Es freut mich sie kennen zu lernen!", "Prettig met u kennis te maken!"));
    _translations.add(new Translation("Es freut mich dich kennen zu lernen!", "Leuk je te leren kennen!"));
    _translations.add(new Translation("Wie spreche ich das aus? ", "Hoe spreek je dat uit?"));
    _translations.add(new Translation("Bis morgen", "Tot morgen"));
    _translations.add(new Translation("Tag!", "Doei!"));
    _translations.add(new Translation("Im Zug", "in de trein"));
    _translations.add(new Translation("Auf der Terasse ", "op een terras"));
    _translations.add(new Translation("Ist hier noch frei?", "Is het hier nog vrij?"));
    _translations.add(new Translation("der Platz", "de plaats"));
    _translations.add(new Translation("Woher kommen Sie?", "Waar komt u vandaan?"));
    _translations.add(new Translation("Woher kommst du?", "Waar kom je vandaan?"));
    _translations.add(new Translation("Kennst du dich in Utrecht aus?", "Ben je bekend in Utrecht?"));
    _translations.add(new Translation("Natürlich!", "Natuurlijk!"));
    _translations.add(new Translation("Ich komme aus..", "Ik kom uit.."));
    _translations.add(new Translation("Und wo in Hamburg wohnst du?", "En waar in Hamburg woon je?"));
    _translations.add(new Translation("Ich wohne in..", "Ik woon in.."));
    _translations.add(new Translation("gar kein", "helemaal geen"));
    _translations.add(new Translation("richtig gut", "redelijk goed"));
    _translations.add(new Translation("sehr gut", "heel goed"));
    _translations.add(new Translation("die Sprache", "de taal"));
    _translations.add(new Translation("Deutsch", "Duits"));
    _translations.add(new Translation("Englisch", "Engels"));
    _translations.add(new Translation("Französisch", "Frans"));
    _translations.add(new Translation("Spanisch", "Spaans"));
    _translations.add(new Translation("Niederländisch", "Nederlands"));
    _translations.add(new Translation("Schweizer Deutsch", "Zwitser-Duits"));
    _translations.add(new Translation("Italienisch", "Italiaans"));
    _translations.add(new Translation("Aber Sie sprechen manchmal ?", "Maar u spreekt .., of niet soms?"));
    _translations.add(new Translation("Angenehm", "Aangenaam"));
    _translations.add(new Translation("Was bedeutet ..?", "Wat betekent ..?"));
    _translations.add(new Translation("noch", "nog"));
    _translations.add(new Translation("ungefähr", "ongeveer"));
    _translations.add(new Translation("Was arbeitest du?", "Waar werk je?"));
    _translations.add(new Translation("Kannst du das bitte wiederholen?", "Kun je dat alsjeblieft herhalen?"));
    _translations.add(new Translation("und du?", "en jij?"));
    _translations.add(new Translation("Kannst du etwas langsamer sprechen?", "Kann je iets langzamer praten?"));
    _translations.add(new Translation("Meine Freundin", "mijn vriendin"));
    _translations.add(new Translation("Kannst du das buchstabieren? ", "Kun je dat even spellen?"));
    _translations.add(new Translation("eins", "een"));
    _translations.add(new Translation("zwei", "twee"));
    _translations.add(new Translation("drei", "drie"));
    _translations.add(new Translation("vier", "vier"));
    _translations.add(new Translation("fünf", "vijf"));
    _translations.add(new Translation("sechs", "zes"));
    _translations.add(new Translation("sieben", "zeven"));
    _translations.add(new Translation("acht", "acht"));
    _translations.add(new Translation("neun", "negen"));
    _translations.add(new Translation("zehn", "tien"));
    _translations.add(new Translation("elf", "elf"));
    _translations.add(new Translation("zwölf", "twaalf"));
    _translations.add(new Translation("null", "nul"));
    _translations.add(new Translation("@", "apenstaartje"));
    _translations.add(new Translation("Bindestrich", "streepje"));
    _translations.add(new Translation("Unterstrich", "underscore"));
    _translations.add(new Translation("Schrägstrich", "Slash"));
    _translations.add(new Translation("eine Liste", "een list"));
    _translations.add(new Translation("für einander", "voor elkar"));
    _translations.add(new Translation("ein Spiel", "een speel"));
    _translations.add(new Translation("eine Untersuchung/Studie", "een onderzoek"));
    _translations.add(new Translation("Einwohner", "inwoners"));
    _translations.add(new Translation("aber", "maar"));
    _translations.add(new Translation("Warum ist das so?", "Waarom is dat zo?"));
    _translations.add(new Translation("deutlich besser", "duidelijk beter"));
    _translations.add(new Translation("Wohnst du schon immer in Köln?", "Woon je al lang in Köln?"));
    _translations.add(new Translation("finden", "vinden"));
    _translations.add(new Translation("sein", "zijn"));
    _translations.add(new Translation("radfahren", "fietsen"));
    _translations.add(new Translation("tun", "doen"));
    _translations.add(new Translation("Schlittschuh laufen", "schaatsen"));
    _translations.add(new Translation("schwimmen", "zwemmen"));
    _translations.add(new Translation("rennen", "rennen"));
    _translations.add(new Translation("buchstabieren", "spelen"));
    _translations.add(new Translation("gehen", "gaan"));
    _translations.add(new Translation("schreiben", "schrijven"));
    _translations.add(new Translation("lesen", "lezen"));
    _translations.add(new Translation("das Kino", "de bioscoop"));
    _translations.add(new Translation("Theater", "toneelvorstelling"));
    _translations.add(new Translation("Buch", "boek"));
    _translations.add(new Translation("die Zeitung", "de krant"));
    _translations.add(new Translation("Städte","steden"));
    _translations.add(new Translation("Windmühlen","molen"));
    _translations.add(new Translation("Himmelfahrt","Hemelvaart"));
    _translations.add(new Translation("Pfingsten","Pinksteren"));
    _translations.add(new Translation("Gastfreundschaft","de gastvrijheid"));
    _translations.add(new Translation("auf dem Land","op het platteland"));
    _translations.add(new Translation("umgekehrt","omgekeerde"));
    _translations.add(new Translation("endlos","eindeloos"));
    _translations.add(new Translation("laufen ","lopen"));
    _translations.add(new Translation("von","van"));
    _translations.add(new Translation("entwickeln","ontwikkelen"));
    _translations.add(new Translation("wenn","als"));
    _translations.add(new Translation("Knopf","de knop"));
    _translations.add(new Translation("reisen","reizen"));
    _translations.add(new Translation("tauschen","ruilen"));
    _translations.add(new Translation("überrascht","verbaast"));
    _translations.add(new Translation("zu schnell","te snel"));
    _translations.add(new Translation("zu langsam","te langzaam"));
    _translations.add(new Translation("Ferien","de vakantie"));
    _translations.add(new Translation("witzig","geestig"));
    _translations.add(new Translation("lustig","grappig"));
    _translations.add(new Translation("Wettervorhersage","de weersvoorspelling"));
    _translations.add(new Translation("Januar","januari"));
    _translations.add(new Translation("Februar","februari"));
    _translations.add(new Translation("März","maart"));
    _translations.add(new Translation("April","april"));
    _translations.add(new Translation("Mai","mei"));
    _translations.add(new Translation("Juni","juni"));
    _translations.add(new Translation("Juli","juli"));
    _translations.add(new Translation("August","augustus"));
    _translations.add(new Translation("September","september"));
    _translations.add(new Translation("Oktober","oktober"));
    _translations.add(new Translation("November","november"));
    _translations.add(new Translation("Dezember","december"));
    _translations.add(new Translation("Montag","maandag"));
    _translations.add(new Translation("Dienstag","dinsdag"));
    _translations.add(new Translation("Mittwoch","woensdag"));
    _translations.add(new Translation("Donnerstag","donderdag"));
    _translations.add(new Translation("Freitag","vrijdag"));
    _translations.add(new Translation("Samstag","zaterdag"));
    _translations.add(new Translation("Sonntag","zondag"));
    _translations.add(new Translation("laut","lawaaierig"));
    _translations.add(new Translation("verschütten","morsen"));
    _translations.add(new Translation("Sorry, ich habe Wein verschüttet","Sorry, ik heb wijn gemorst"));
    _translations.add(new Translation("Kissen","het kussen"));
    _translations.add(new Translation("Kissenbezug","sloop"));
    _translations.add(new Translation("Bettdecke","dekbed"));
    _translations.add(new Translation("Bettdeckenbezug","dekbedhoes"));
    _translations.add(new Translation("Spannbetttuch","spannlaken"));
    _translations.add(new Translation("Unterlaken","onderlaken"));
    _translations.add(new Translation("Pyjama","pyjama"));
    _translations.add(new Translation("Handtuch","de handdoek"));
    _translations.add(new Translation("danach","daarna/erachteraan"));
    _translations.add(new Translation("Nimm es mir nicht übel","Neem me niet kwalijk"));
    _translations.add(new Translation("Es tut mir leid","Het spijt me"));
    _translations.add(new Translation("Welches Datum ist heute?","Welke datum is het vandaag?"));
    _translations.add(new Translation("Heute ist der fünfste Juni","Vandaag is het vijf juni"));
    _translations.add(new Translation("Entspannung","de ontspanning"));
    _translations.add(new Translation("am Strand","op de strand"));
    _translations.add(new Translation("das Gleiche","hetzelfde"));
    _translations.add(new Translation("geeignet","geschikt"));
    _translations.add(new Translation("bestimmen/festlegen","bepaalen"));
    _translations.add(new Translation("empfangen","ontvangen"));
    _translations.add(new Translation("stattfinden","plaaatsvinden"));
    _translations.add(new Translation("einzigartig","uniek"));
    _translations.add(new Translation("Wohnungstausch","huizenruil"));
    _translations.add(new Translation("kostenlos","kosteloos"));
    _translations.add(new Translation("Paar","de koppel"));
    _translations.add(new Translation("weltweit","wereldwijd"));
    _translations.add(new Translation("Alleinreisende","de alleenreizende"));
    _translations.add(new Translation("sowohl","zowel"));
    return _translations;
  }
}
