import 'package:who_goes_first/game.dart';
import 'package:who_goes_first/rule.dart';
import "dart:math";

class Rules {
  static final Random _random = Random();

  static Rule random() {
    if (availableRules?.isEmpty ?? true) {
      availableRules = rules;
    }
    var i = _random.nextInt(availableRules?.length ?? 1);
    var result = availableRules?[i] ?? rules[0];
    availableRules?.removeAt(i);
    return result;
  }

  static List<Rule>? availableRules;

  static List<Rule> rules = [
    Rule(
      rule: "Who has the pointiest ears?",
      games: [
        Game("Small World"),
      ],
    ),
    Rule(
      rule: "Who owns the biggest house?",
      games: [
        Game("For Sale"),
      ],
    ),
    Rule(
      rule: "Who has had the worst day?",
      games: [
        Game("Gloom"),
      ],
    ),
    Rule(
      rule: "Who is the most well traveled?",
      games: [
        Game("Ticket to Ride", link: Uri.parse("https://www.daysofwonder.com/ticket-to-ride/")),
      ],
    ),
    Rule(
      rule: "Who is wearing the most colorful clothes?",
      games: [
        Game("Hanabi"),
        Game("Flowerpower"),
        Game("Match of the Penguins"),
      ],
    ),
    Rule(
      rule: "Who has the longest beard?",
      games: [
        Game("Once Upon a Time"),
        Game("Dwarven Dig!"),
      ],
    ),
    Rule(
      rule: "Who does the youngest player choose?",
      games: [
        Game("Carcassonne", link: Uri.parse("https://zmangames.com/en/games/carcassone/")),
      ],
    ),
    Rule(
      rule: "Who can stand on one leg the longest?",
      games: [
        Game("Animal upon Animal"),
      ],
    ),
    Rule(
      rule: "Who is the cattiest player?",
      games: [
        Game("Kittens in a Blender"),
      ],
    ),
    Rule(
      rule: "Who is the thirstiest?",
      games: [
        Game("Forbidden Desert", link: Uri.parse("https://gamewright.com/product/Forbidden-Desert")),
      ],
    ),
    Rule(
      rule: "Who last visited an island?",
      games: [
        Game("Forbidden Island", link: Uri.parse("https://gamewright.com/product/Forbidden-Island")),
        Game("Maka Baka"),
      ],
    ),
    Rule(
      rule: "Who got up the earliest this morning?",
      games: [
        Game("Smash Up!"),
      ],
    ),
    Rule(
      rule: "Who most recently went on a date?",
      games: [
        Game("Love Letter"),
      ],
    ),
    Rule(
      rule: "Who has the best maniacal laugh?",
      games: [
        Game("Mad Scientist University"),
        Game("IGOR: The Mad Scientist’s Lament"),
      ],
    ),
    Rule(
      rule: "Who is wearing the most green?",
      games: [
        Game("Kodama: The Tree Spirits"),
        Game("Batt'l Kha'os"),
      ],
    ),
    Rule(
      rule: "Who has the longest hair?",
      games: [
        Game("Monkeys on the Moon"),
        Game("Aquarius"),
      ],
    ),
    Rule(
      rule: "Who dug a garden last?",
      games: [
        Game("Terra Mystica"),
      ],
    ),
    Rule(
      rule: "Who looks most like a pirate?",
      games: [
        Game("Cartagena"),
        Game("Pirates vs Dinosaurs"),
        Game("Oath of the Brotherhood"),
      ],
    ),
    Rule(
      rule: "Who owns the game?",
      games: [
        Game("Sucking Vacuum"),
        Game("Junta"),
        Game("Neuroshima Hex!"),
      ],
    ),
    Rule(
      rule: "Who is the nicest?",
      games: [
        Game("Dungeon Lords"),
      ],
    ),
    Rule(
      rule: "Who has read the most sci-fi?",
      games: [
        Game("Android"),
      ],
    ),
    Rule(
      rule: "Who looks most like a monster?",
      games: [
        Game("Fearsome Floors"),
      ],
    ),
    Rule(
      rule: "Who has the best story about being stranded?",
      games: [
        Game("Lift Off: Get Me Off This Planet"),
      ],
    ),
    Rule(
      rule: "Who has most recently been on a boat?",
      games: [
        Game("Harbour"),
      ],
    ),
    Rule(
      rule: "Who is the hungriest?",
      games: [
        Game("Mamma Mia!"),
        Game("Guts of Glory"),
      ],
    ),
    Rule(
      rule: "Who can do the best monkey impression?",
      games: [
        Game("Too Many Monkeys"),
        Game("Coco Crazy"),
      ],
    ),
    Rule(
      rule: "Who has the nicest jewelry?",
      games: [
        Game("Queen's Necklace"),
      ],
    ),
    Rule(
      rule: "Who is the tallest?",
      games: [
        Game("Takenoko"),
        Game("Campanile"),
      ],
    ),
    Rule(
      rule: "Without looking at a clock, who can guess what time it is?",
      games: [
        Game("Chrononauts"),
      ],
    ),
    Rule(
      rule: "Who has the most cash on them?",
      games: [
        Game("Corporate America"),
        Game("Sheriff of Nottingham"),
        Game("Martian 12s"),
      ],
    ),
    Rule(
      rule: "Who has most recently visited London?",
      games: [
        Game("Great Fire of London 1666"),
        Game("Portobello Market"),
      ],
    ),
    Rule(
      rule: "Who has most recently been on a train?",
      games: [
        Game("Trains"),
      ],
    ),
    Rule(
      rule: "Who has most recently visited another city?",
      games: [
        Game("Lords of Waterdeep"),
      ],
    ),
    Rule(
      rule: "Who has most recently flipped a table?",
      games: [
        Game("Flip City"),
      ],
    ),
    Rule(
      rule: "Who has most recently bought or sold something?",
      games: [
        Game("Mercante"),
      ],
    ),
    Rule(
      rule: "Who has most recently visited a forest?",
      games: [
        Game("Lagoon"),
      ],
    ),
    Rule(
      rule: "Who lives closest to water?",
      games: [
        Game("Le Havre"),
      ],
    ),
    Rule(
      rule: "Who last visited a mountain?",
      games: [
        Game("K2"),
      ],
    ),
    Rule(
      rule: "Who looks the shiftiest?",
      games: [
        Game("Spyfall"),
      ],
    ),
    Rule(
      rule: "Who last went on a cruise?",
      games: [
        Game("Atlantic Star"),
      ],
    ),
    Rule(
      rule: "Who has most recently traded stock?",
      games: [
        Game("The Motley Fool's: Buy Low Sell High"),
      ],
    ),
    Rule(
      rule: "Who was the last person to have a haircut?",
      games: [
        Game("Shear Panic!"),
      ],
    ),
    Rule(
      rule: "Who is the shortest?",
      games: [
        Game("The Conquest of Space"),
      ],
    ),
    Rule(
      rule: "Who has the snazziest pants?",
      games: [
        Game("Who Stole Ed’s Pants?"),
      ],
    ),
    Rule(
      rule: "Who is the last person to laugh?",
      games: [
        Game("Gheos"),
      ],
    ),
    Rule(
      rule: "Who is ready to go first and takes the starting action?",
      games: [
        Game("Fluxx"),
        Game("Dixit"),
        Game("Dixit Odyssey"),
        Game("Galaxy Truckers"),
      ],
    ),
    Rule(
      rule: "Who broke the law most recently?",
      games: [
        Game("Grifters"),
      ],
    ),
    Rule(
      rule: "Who most recently bought justice to the world?",
      games: [
        Game("Love Letter: Batman"),
      ],
    ),
    Rule(
      rule: "Who made tea most recently?",
      games: [
        Game("Hanamikoji"),
      ],
    ),
    Rule(
      rule: "Who looks most like a zombie?",
      games: [
        Game("City of Horror"),
      ],
    ),
    Rule(
      rule: "Who has the squarest shaped head?",
      games: [
        Game("Cube Quest"),
      ],
    ),
    Rule(
      rule: "Who has eaten nuts most recently?",
      games: [
        Game("Nuts!"),
      ],
    ),
    Rule(
      rule: "Who can say 'brraaains' with the most zombie-like feeling?",
      games: [
        Game("Zombie Dice"),
      ],
    ),
    Rule(
      rule: "Who has brought the most snacks?",
      games: [
        Game("Dragon Farkle"),
      ],
    ),
    Rule(
      rule: "Who last watered a plant?",
      games: [
        Game("Arboretum"),
      ],
    ),
    Rule(
      rule: "Who can cackle the most like a vile and greedy medieval pardoner?",
      games: [
        Game("The Road to Canterbury"),
      ],
    ),
    Rule(
      rule: "Who has the most tattoos?",
      games: [
        Game("Camp Grizzly"),
      ],
    ),
    Rule(
      rule: "Who most recently read a novel?",
      games: [
        Game("Paperback"),
      ],
    ),
    Rule(
      rule: "Who visited a cathedral most recently?",
      games: [
        Game("The Pillars of the Earth"),
      ],
    ),
    Rule(
      rule: "Who last played a train game?",
      games: [
        Game("Cleopatra’s Caboose"),
      ],
    ),
    Rule(
      rule: "Who looks most like an alien?",
      games: [
        Game("Andromeda"),
      ],
    ),
    Rule(
      rule: "Who most recently put their feet in sand?",
      games: [
        Game("Archaeology: The New Expedition"),
      ],
    ),
    Rule(
      rule: "Who last ate mushrooms?",
      games: [
        Game("Morels"),
      ],
    ),
    Rule(
      rule: "Who has the longest whiskers?",
      games: [
        Game("Hot Tin Roof"),
      ],
    ),
    Rule(
      rule: "Who has the watch furthest backwards in time?",
      games: [
        Game("Legacy: Gears of Time"),
      ],
    ),
    Rule(
      rule: "Who is the wisest?",
      games: [
        Game("Himalaya"),
        Game("The Bridges of Shangri-La"),
      ],
    ),
    Rule(
      rule: "Who is the hairiest?",
      games: [
        Game("Mammoth Hunters"),
        Game("Monkey Arena"),
      ],
    ),
    Rule(
      rule: "Who has been deepest down in the sea?",
      games: [
        Game("Nautilus"),
      ],
    ),
    Rule(
      rule: "Who can shout “Olé!” the loudest?",
      games: [
        Game("Salamanca"),
      ],
    ),
    Rule(
      rule: "Who can do the best penguin impression?",
      games: [
        Game("Penguin Soccer"),
      ],
    ),
    Rule(
      rule: "Who suggested the game?",
      games: [
        Game("GUBS: A Game of Wit and Luck"),
        Game("Roads and Boats"),
      ],
    ),
    Rule(
      rule: "Who is wearing the most black?",
      games: [
        Game("Ice Pirates of Harbour Grace"),
      ],
    ),
    Rule(
      rule: "Who is the least wise?",
      games: [],
    ),
    Rule(
      rule: "Who has the tiniest teeth?",
      games: [
        Game("Mäuse-Rallye"),
      ],
    ),
    Rule(
      rule: "Who can hold a high C note for the longest?",
      games: [
        Game("Maestro"),
      ],
    ),
    Rule(
      rule: "Who is most in need of a shave?",
      games: [
        Game("Goldrush-City"),
      ],
    ),
    Rule(
      rule: "Who has the largest cowboy boots?",
      games: [
        Game("Abilene"),
      ],
    ),
    Rule(
      rule: "Who is the dirtiest?",
      games: [
        Game("Neolithibum"),
      ],
    ),
    Rule(
      rule: "Who can hold their breath underwater for the longest?",
      games: [
        Game("The Reef"),
      ],
    ),
    Rule(
      rule: "Who most recently visited Italy?",
      games: [
        Game("La Cittá"),
      ],
    ),
    Rule(
      rule: "Who has the hardest look in their eyes?",
      games: [
        Game("Saloon"),
      ],
    ),
    Rule(
      rule: "Who is wearing the most jewelry?",
      games: [
        Game("Das Kollier"),
      ],
    ),
    Rule(
      rule: "Who has their alarm set for the earliest time?",
      games: [
        Game("Counting Zzzzs"),
      ],
    ),
    Rule(
      rule: "Who is the quickest person to wave the highest denomination banknote or who bought a welding torch?",
      games: [
        Game("Safeknacker"),
      ],
    ),
    Rule(
      rule: "Who can jump the highest?",
      games: [
        Game("Dancing Eggs"),
      ],
    ),
    Rule(
      rule: "Who most recently ate Greek food?",
      games: [
        Game("Hera and Zeus"),
      ],
    ),
    Rule(
      rule: "Who can point to the North the fastest?",
      games: [
        Game("Discovery"),
      ],
    ),
    Rule(
      rule: "Who owns the most railway games?",
      games: [
        Game("Railroad Dice: The First Rails"),
      ],
    ),
    Rule(
      rule: "Who has seen the most Kim Possible episodes?",
      games: [
        Game("Kim Possible Game"),
      ],
    ),
    Rule(
      rule: "Who last saw a mammoth?",
      games: [
        Game("Stone Age"),
      ],
    ),
    Rule(
      rule: "Who lives closest to Venice?",
      games: [
        Game("Oltre Mare"),
      ],
    ),
    Rule(
      rule: "Who is the most afraid of water?",
      games: [
        Game("Niagara"),
      ],
    ),
    Rule(
      rule: "Who bought the oldest object with them?",
      games: [
        Game("Jenseits von Theben"),
      ],
    ),
    Rule(
      rule: "Who has the biggest hands?",
      games: [
        Game("The Mole in the Hole"),
      ],
    ),
    Rule(
      rule: "Who is the most sea-worthy player?",
      games: [
        Game("Tonga Bongo"),
      ],
    ),
    Rule(
      rule: "Who has most recently stroked a sheep?",
      games: [
        Game("Herd the Sheep"),
      ],
    ),
    Rule(
      rule: "Who thinks they know the most about Australia?",
      games: [
        Game("Australia"),
      ],
    ),
    Rule(
      rule: "Who got up the latest today?",
      games: [
        Game("Dawn Under"),
      ],
    ),
    Rule(
      rule: "Who most recently achieved a waypoint in life?",
      games: [
        Game("Tempus"),
      ],
    ),
    Rule(
      rule: "Who has most recently visited a real Castle?",
      games: [
        Game("Château Roquefort"),
      ],
    ),
    Rule(
      rule: "Who has the longest ears?",
      games: [
        Game("Hoppladi, Hopplada!"),
      ],
    ),
    Rule(
      rule: "Who has the longest neck?",
      games: [
        Game("Savannah Tails"),
      ],
    ),
    Rule(
      rule: "Who can 'moo' the loudest?",
      games: [
        Game("Black Sheep"),
      ],
    ),
    Rule(
      rule: "Who looks most like a moose?",
      games: [
        Game("Bunny Bunny Moose Moose"),
      ],
    ),
    Rule(
      rule: "Who has the freshest breath?",
      games: [
        Game("Mint Works"),
      ],
    ),
    Rule(
      rule: "Who has their birthday next?",
      games: [
        Game("Seasons: The Calendar Rummy Game"),
        Game("The Stars are Right"),
      ],
    ),
    Rule(
      rule: "Who can laugh the most like a coyote?",
      games: [
        Game("Coyote"),
      ],
    ),
    Rule(
      rule: "Who has the biggest shoes?",
      games: [
        Game("H2Olland"),
      ],
    ),
    Rule(
      rule: "Who is the oldest?",
      games: [
        Game("Settlers of Catan (Beginner's version)"),
        Game("Citadels"),
        Game("Bohnanza"),
        Game("Village"),
      ],
    ),
    Rule(
      rule: "Who can hum the highest note?",
      games: [
        Game("Humm Bug"),
      ],
    ),
    Rule(
      rule: "Who is the most like a Viking?",
      games: [
        Game("Fire & Axe: A Viking Saga"),
      ],
    ),
    Rule(
      rule: "Who has the longest mustache?",
      games: [
        Game("Asterix and Obelix"),
      ],
    ),
    Rule(
      rule: "Who has been to the most European countries?",
      games: [
        Game("Ticket to Ride: Europe"),
      ],
    ),
    Rule(
      rule: "Who has the most money?",
      games: [
        Game("Alhambra"),
      ],
    ),
    Rule(
      rule: "Who has the huskiest voice?",
      games: [
        Game("Snow Tails"),
      ],
    ),
    Rule(
      rule: "Who looks the most like a goblin?",
      games: [
        Game("Kragmortha"),
      ],
    ),
    Rule(
      rule: "Who was the last person to eat pineapple?",
      games: [
        Game("Tiki Topple"),
      ],
    ),
    Rule(
      rule: "Who has most recently ridden on a magic carpet?",
      games: [
        Game("1001 Karawane"),
      ],
    ),
    Rule(
      rule: "Who has the biggest sombrero?",
      games: [
        Game("Time's Up!"),
      ],
    ),
    Rule(
      rule: "Who can give the best polar bear impression?",
      games: [
        Game("Ice Flow"),
      ],
    ),
    Rule(
      rule: "Who daydreams the most?",
      games: [
        Game("Pocket Rockets"),
      ],
    ),
    Rule(
      rule: "Who can tell the most romantic love story?",
      games: [
        Game("Genji"),
      ],
    ),
    Rule(
      rule: "Who is the youngest?",
      games: [
        Game("Parade"),
        Game("Arkadia"),
      ],
    ),
    Rule(
      rule: "Who has the most facial hair?",
      games: [
        Game("Dig In!"),
      ],
    ),
    Rule(
      rule: "Who has traveled the furthest in the last year?",
      games: [
        Game("Vasco da Gama"),
      ],
    ),
    Rule(
      rule: "Who most recently built something?",
      games: [
        Game("World Without End"),
      ],
    ),
    Rule(
      rule: "Who has most recently visited Ireland?",
      games: [
        Game("Keltis"),
      ],
    ),
    Rule(
      rule: "Who last fed a duck?",
      games: [
        Game("Duck, Duck, Bruce"),
      ],
    ),
    Rule(
      rule: "Who most recently visited a farm?",
      games: [
        Game("Farmageddon"),
      ],
    ),
    Rule(
      rule: "Who has spent the least time on planet Terra in the Sol system?",
      games: [
        Game("Eclipse"),
      ],
    ),
    Rule(
      rule: "Who has the least hair?",
      games: [
        Game("Dweebies"),
      ],
    ),
    Rule(
      rule: "Who can do the best mammoth impression?",
      games: [
        Game("Ouga Bouga"),
      ],
    ),
    Rule(
      rule: "Who has most recently used a wok?",
      games: [
        Game("We Will Wok You"),
      ],
    ),
    Rule(
      rule: "Who visited Hamburg most recently?",
      games: [
        Game("The Speicherstadt"),
      ],
    ),
    Rule(
      rule: "Who looks most like an ant?",
      games: [
        Game("Myrmes"),
      ],
    ),
    Rule(
      rule: "Who can name the most moons of Jupiter?",
      games: [
        Game("Exoplanets"),
      ],
    ),
    Rule(
      rule: "Who most recently read a history book?",
      games: [
        Game("Troyes"),
      ],
    ),
  ];
}
