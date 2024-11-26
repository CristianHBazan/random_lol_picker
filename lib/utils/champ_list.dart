import 'package:random_lol_picker/models/champion.dart';
class Utils{

  static List<Champion> getChamps(){

    return champions;
  }

  static void allPickable(bool condition){

    for(int i=0; i<champions.length; i++){

      champions[i].isPickable=condition;
    }
  }

  static List<Champion> champions = [
    Champion(1, "Aatrox"),
    Champion(2, "Ahri"),
    Champion(3, "Akali"),
    Champion(4, "Akshan"),
    Champion(5, "Alistar"),
    Champion(6, "Ambessa"),
    Champion(7, "Amumu"),
    Champion(8, "Anivia"),
    Champion(9, "Annie"),
    Champion(10, "Aphelios"),
    Champion(11, "Ashe"),
    Champion(12, "Aurelion Sol"),
    Champion(13, "Aurora"),
    Champion(14, "Azir"),
    Champion(15, "Bardo"),
    Champion(16, "Bel'Veth"),
    Champion(17, "Blitzcrank"),
    Champion(18, "Brand"),
    Champion(19, "Braum"),
    Champion(20, "Briar"),
    Champion(21, "Caitlyn"),
    Champion(22, "Camille"),
    Champion(23, "Cassiopeia"),
    Champion(24, "Cho’Gath"),
    Champion(25, "Corki"),
    Champion(26, "Darius"),
    Champion(27, "Diana"),
    Champion(28, "Dr. Mundo"),
    Champion(29, "Draven"),
    Champion(30, "Ekko"),
    Champion(31, "Elise"),
    Champion(32, "Evelynn"),
    Champion(33, "Ezreal"),
    Champion(34, "Fiddlesticks"),
    Champion(35, "Fiora"),
    Champion(36, "Fizz"),
    Champion(37, "Galio"),
    Champion(38, "Gangplank"),
    Champion(39, "Garen"),
    Champion(40, "Gnar"),
    Champion(41, "Gragas"),
    Champion(42, "Graves"),
    Champion(43, "Gwen"),
    Champion(44, "Hecarim"),
    Champion(45, "Heimerdinger"),
    Champion(46, "Hwei"),
    Champion(47, "Illaoi"),
    Champion(48, "Irelia"),
    Champion(49, "Ivern"),
    Champion(50, "Janna"),
    Champion(51, "Jarvan IV"),
    Champion(52, "Jax"),
    Champion(53, "Jayce"),
    Champion(54, "Jhin"),
    Champion(55, "Jinx"),
    Champion(56, "Kai’Sa"),
    Champion(57, "Kalista"),
    Champion(58, "Karma"),
    Champion(59, "Karthus"),
    Champion(60, "Kassadin"),
    Champion(61, "Katarina"),
    Champion(62, "Kayle"),
    Champion(63, "Kayn"),
    Champion(64, "Kennen"),
    Champion(65, "Kha’Zix"),
    Champion(66, "Kindred"),
    Champion(67, "Kled"),
    Champion(68, "Kog’Maw"),
    Champion(69, "K'Sante"),
    Champion(70, "LeBlanc"),
    Champion(71, "Lee Sin"),
    Champion(72, "Leona"),
    Champion(73, "Lillia"),
    Champion(74, "Lissandra"),
    Champion(75, "Lucian"),
    Champion(76, "Lulu"),
    Champion(77, "Lux"),
    Champion(78, "Maestro Yi"),
    Champion(79, "Malphite"),
    Champion(80, "Malzahar"),
    Champion(81, "Maokai"),
    Champion(82, "Milio"),
    Champion(83, "Miss Fortune"),
    Champion(84, "Mordekaiser"),
    Champion(85, "Morgana"),
    Champion(86, "Naafiri"),
    Champion(87, "Nami"),
    Champion(88, "Nasus"),
    Champion(89, "Nautilus"),
    Champion(90, "Neeko"),
    Champion(91, "Nidalee"),
    Champion(92, "Nilah"),
    Champion(93, "Nocturne"),
    Champion(94, "Nunu"),
    Champion(95, "Olaf"),
    Champion(96, "Orianna"),
    Champion(97, "Ornn"),
    Champion(98, "Pantheon"),
    Champion(99, "Poppy"),
    Champion(100, "Pyke"),
    Champion(101, "Qiyana"),
    Champion(102, "Quinn"),
    Champion(103, "Rakan"),
    Champion(104, "Rammus"),
    Champion(105, "Rek’Sai"),
    Champion(106, "Rell"),
    Champion(107, "Renata Glasc"),
    Champion(108, "Renekton"),
    Champion(109, "Rengar"),
    Champion(110, "Riven"),
    Champion(111, "Rumble"),
    Champion(112, "Ryze"),
    Champion(113, "Samira"),
    Champion(114, "Sejuani"),
    Champion(115, "Senna"),
    Champion(116, "Seraphine"),
    Champion(117, "Sett"),
    Champion(118, "Shaco"),
    Champion(119, "Shen"),
    Champion(120, "Shyvana"),
    Champion(121, "Singed"),
    Champion(122, "Sion"),
    Champion(123, "Sivir"),
    Champion(124, "Skarner"),
    Champion(125, "Smolder"),
    Champion(126, "Sona"),
    Champion(127, "Soraka"),
    Champion(128, "Swain"),
    Champion(129, "Sylas"),
    Champion(130, "Syndra"),
    Champion(131, "Tahm Kench"),
    Champion(132, "Taliyah"),
    Champion(133, "Talon"),
    Champion(134, "Taric"),
    Champion(135, "Teemo"),
    Champion(136, "Thresh"),
    Champion(137, "Tristana"),
    Champion(138, "Trundle"),
    Champion(139, "Tryndamere"),
    Champion(140, "Twisted Fate"),
    Champion(141, "Twitch"),
    Champion(142, "Udyr"),
    Champion(143, "Urgot"),
    Champion(144, "Varus"),
    Champion(145, "Vayne"),
    Champion(146, "Veigar"),
    Champion(147, "Vel’Koz"),
    Champion(148, "Vex"),
    Champion(149, "Vi"),
    Champion(150, "Viego"),
    Champion(151, "Viktor"),
    Champion(152, "Vladimir"),
    Champion(153, "Volibear"),
    Champion(154, "Warwick"),
    Champion(155, "Wukong"),
    Champion(156, "Xayah"),
    Champion(157, "Xerath"),
    Champion(158, "Xin Zhao"),
    Champion(159, "Yasuo"),
    Champion(160, "Yone"),
    Champion(161, "Yorick"),
    Champion(162, "Yuumi"),
    Champion(163, "Zac"),
    Champion(164, "Zed"),
    Champion(165, "Zeri"),
    Champion(166, "Ziggs"),
    Champion(167, "Zilean"),
    Champion(168, "Zoe"),
    Champion(169, "Zyra"),
  ];
}
