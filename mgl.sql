-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Mrz 2022 um 20:44
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mgl`
--
CREATE DATABASE IF NOT EXISTS `mgl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mgl`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `consoletype`
--

CREATE TABLE `consoletype` (
  `ctNo` int(11) NOT NULL,
  `description` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `consoletype`
--

INSERT INTO `consoletype` (`ctNo`, `description`) VALUES
(1, 'stationäre Heimkonsole'),
(2, 'handheld Spielekonsole'),
(3, 'hybride Spielekonsole'),
(4, 'Internet-Videospiel-Vertriebsplattform');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `developer`
--

CREATE TABLE `developer` (
  `devNo` int(11) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `developer`
--

INSERT INTO `developer` (`devNo`, `name`) VALUES
(1, 'Nintendo IRD'),
(2, 'Nintendo R&D'),
(3, 'Nintendo PTD'),
(4, 'Nintendo EAD'),
(5, 'Grezzo'),
(6, 'GAME FREAK'),
(7, 'ILCA'),
(8, 'Nintendo EPD'),
(9, 'MercurySteam'),
(10, 'Capcom'),
(11, 'Monolith Soft'),
(13, 'Square'),
(14, '1-UP Studio'),
(15, 'Intelligent Systems'),
(17, 'TOSE Software Co.'),
(18, 'Good-Feel'),
(19, 'Sony Computer Entertainment'),
(20, 'Valve'),
(21, 'Ubisoft'),
(22, 'Microsoft');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game`
--

CREATE TABLE `game` (
  `gNo` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `orgPlatform` int(11) DEFAULT NULL,
  `pagePath` tinytext DEFAULT NULL,
  `imgCover` tinytext DEFAULT NULL,
  `imgLogo` tinytext DEFAULT NULL,
  `metaScore` int(3) DEFAULT NULL,
  `orgTitle` tinytext DEFAULT NULL,
  `synTitle` tinytext DEFAULT NULL,
  `refSeries` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `synopsis` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `game`
--

INSERT INTO `game` (`gNo`, `title`, `orgPlatform`, `pagePath`, `imgCover`, `imgLogo`, `metaScore`, `orgTitle`, `synTitle`, `refSeries`, `releaseDate`, `synopsis`) VALUES
(1, 'The Legend of Zelda: Majora\'s Mask', 1, 'game0001.php', '../img/game_covers/game0001_cover.png', NULL, 95, 'ゼルダの伝説 ムジュラの仮面', 'TLoZ:MM', 1, '2000-04-27', 'Auf der Suche nach Navi, seiner Fee aus Ocarina of Time, reitet Link mit seinem Stutfohlen Epona tief in die Verlorenen Wälder. Dort wird er vom Horror Kid, einem kindlichen Dämon, der Link bereits aus den verlorenen Wäldern kennt, überfallen und seiner Okarina beraubt. Das Horror Kid trägt Majoras Maske, ein beseeltes, böswilliges Objekt, welches die Handlungen seines Trägers beeinflusst. Bei der Verfolgung des Diebs gerät Link in eine Welt namens Termina. Das Horror Kid verwandelt ihn in ein kleines Deku-Kind, ein humanoides Pflanzenwesen. Link findet sich kurze Zeit später innerhalb eines Uhrturms in Unruhstadt wieder, einer zentral in Termina gelegenen Ortschaft. Hier trifft er auf einen reisenden Maskenhändler, der sich als eigentlicher Besitzer von Majoras Maske zu erkennen gibt und Link anbietet, ihm im Tausch gegen seine gestohlene Maske in seine ursprüngliche Gestalt zu verhelfen. Der Maskenhändler gewährt für diese Aufgabe einen Zeitraum von drei Tagen.'),
(2, 'The Legend of Zelda: Majora\'s Mask 3D', 2, 'game0002.php', '../img/game_covers/game0002_cover.jpg', NULL, 89, 'ゼルダの伝説 ムジュラの仮面 3D', 'TLoZ:MM3D', 1, '2015-02-13', 'Auf der Suche nach Navi, seiner Fee aus Ocarina of Time, reitet Link mit seinem Stutfohlen Epona tief in die Verlorenen Wälder. Dort wird er vom Horror Kid, einem kindlichen Dämon, der Link bereits aus den verlorenen Wäldern kennt, überfallen und seiner Okarina beraubt. Das Horror Kid trägt Majoras Maske, ein beseeltes, böswilliges Objekt, welches die Handlungen seines Trägers beeinflusst. Bei der Verfolgung des Diebs gerät Link in eine Welt namens Termina. Das Horror Kid verwandelt ihn in ein kleines Deku-Kind, ein humanoides Pflanzenwesen. Link findet sich kurze Zeit später innerhalb eines Uhrturms in Unruhstadt wieder, einer zentral in Termina gelegenen Ortschaft. Hier trifft er auf einen reisenden Maskenhändler, der sich als eigentlicher Besitzer von Majoras Maske zu erkennen gibt und Link anbietet, ihm im Tausch gegen seine gestohlene Maske in seine ursprüngliche Gestalt zu verhelfen. Der Maskenhändler gewährt für diese Aufgabe einen Zeitraum von drei Tagen.'),
(3, 'The Legend of Zelda: Ocarina of Time', 1, 'game0003.php', '../img/game_covers/game0003_cover.png', NULL, 99, 'ゼルダの伝説 時のオカリナ', 'TLoZ:OoT', 1, '1998-11-21', 'Im Alter von neun Jahren wird Link zum Wächter des Volkes geschickt, dem Deku-Baum – einem fabelhaften Wesen in Gestalt eines Baumes. Der Deku-Baum weist Link eine Fee namens Navi als Begleiterin zu und offenbart dem Jungen eine Bedrohung durch Ganondorf, den Anführer des Wüstenvolkes der Gerudo. Kurz darauf stirbt der Deku-Baum an den Folgen eines Fluches. Dessen letzten Worten folgend reist Link zum Schloss Hyrule und trifft dort Prinzessin Zelda. Diese misstraut Ganondorf, da sie in einem Traum von dessen bösen Absichten erfuhr. Obwohl Ganondorf dem König von Hyrule seine Treue schwört, begehrt er das Triforce, ein göttliches Relikt unendlicher Macht, das sich in Hyrule befinden soll. Weil Zelda verhindern möchte, dass Ganondorf das Triforce erhält, weiht sie Link in einen Plan ein, das Heiligtum vor Ganondorf zu beschützen. Das Triforce befindet sich im Heiligen Reich, für dessen Zugang als Schlüssel die drei heiligen Steine benötigt werden.'),
(4, 'Pokémon Diamant-Edition', 4, 'game0004.php', '../img/game_covers/game0004_cover.jpg', NULL, 85, 'ポケットモンスター ダイヤモンド', 'Pokemon DPPt', 2, '2006-09-28', 'Durch die Einführung des Nintendo DS, der zwei Bildschirme aufweist, wurden sowohl Aufbau der Kämpfe als auch Menüführung überarbeitet, um das Spielerlebnis an die Steuerung per Stylus anzupassen. Das Kampfsystem selbst wurde ebenfalls überarbeitet; beispielsweise wird die Schadensklasse nicht länger durch den Typ einer Attacke bestimmt, was heißt, dass jede Attacke individuell einer Schadensklasse zugeteilt wurde. Diese Einteilung der Attacken in physisch und spezial wird auch in nachfolgenden Spielen genutzt.'),
(5, 'Wii Sports', 5, 'game0005.php', '../img/game_covers/game0005_cover.png', NULL, 76, 'Wii スポーツ', NULL, 3, '2006-11-19', 'Wii Sports ist eine Sportsimulation für die Wii-Spielkonsole und war in den USA und Europa oftmals im Lieferumfang der Konsole enthalten. Die Spiele innerhalb von Wii Sports entstanden ursprünglich aus einzelnen Technikdemos, die angefertigt wurden, um den Fortschritt bei der Entwicklung der Wii-Fernbedienung zu testen. Auf Initiative von Shigeru Miyamoto wurden die einzelnen Spiele in Wii Sports zusammengefasst. Die Nachfolger von Wii Sports sind Wii Sports Resort und Wii Sports Club für die Wii U.'),
(6, 'Pokémon-Legenden: Arceus', 6, 'game0006.php', '../img/game_covers/game0006_cover.png', NULL, 83, 'Pokémon LEGENDS アルセウス', 'PLA', 2, '2022-01-28', 'Der Protagonist wird im Laufe seines Abenteuers als Mitglied der Galaktik-Expedition den ersten Hisui-Pokédex erstellen, der zeitgleich der erste Pokédex aller Zeiten ist. Dazu stehen ihm in der wilden und unerforschten Region Basislager der Expedition zur Verfügung. Weiterhin gerät der Spieler an ein ArceusPhone, ein geheimnisvolles Gerät, das an das mysteriöse Pokémon Arceus erinnert. Zudem bekommt der Protagonist im Laufe des Spieles die Elysien-Flöte, welche es dem Protagonisten ermöglicht auf Pokémon zu reiten, fliegen oder mit ihnen steile Wände hinaufzuklettern, was bislang nur mit Hilfe von TM möglich war.'),
(7, 'Kirby und das Vergessene Land', 6, 'game0007.php', '../img/game_covers/game0007_cover.jpg', NULL, NULL, '星のカービィ ディスカバリー', NULL, 7, '2022-03-25', 'Kirby and the Forgotten Land is the first 3D action platformer in the main series; it appears to control similarly to Kirby\'s other 3D entries, such as Kirby Air Ride and other games following the sub-game Kirby 3D Rumble. Unlike most previous forays into 3D, however, this game features fully functional Copy Abilities. The game still follows the formula of reaching the goal location to free a Waddle Dee, instead of being an open world entry. The game\'s environmental design appears to take cues from Kirby GCN and Kirby: Planet Robobot.'),
(8, 'Pokémon Strahlender Diamant', 6, 'game0008.php', '../img/game_covers/game0008_cover.png', NULL, 73, 'ポケットモンスター ブリリアントダイヤモンド', 'Pokemon SDLP^Pokemon BDSP', 2, '2021-11-19', 'Zu Beginn von Pokémon Strahlender Diamant und Leuchtende Perle treffen die Protagonistin Lucia oder – je nach gewähltem Geschlecht – der Protagonist Lucius gemeinsam mit seinem Freund und späteren Rivalen Barry auf Professor Eibe mit seinem Assistenten (den Protagonisten, den man nicht gewählt hat). Während der Professor die beiden Rivalen in seine Forschung von Pokémon-Entwicklungen einbindet, treffen diese auch vermehrt auf Team Galaktik und deren Boss Zyrus, welcher seine eigenen Ziele verfolgt.'),
(9, 'Metroid Dread', 6, 'game0009.php', '../img/game_covers/game0009_cover.jpg', NULL, 88, 'METROID DREAD', NULL, 4, '2021-10-08', 'Samus, die Protagonistin der Spielserie, erhält den Auftrag einen Planeten namens ZDR zu erforschen, nachdem die Galaktische Föderation Hinweise darauf erhalten hat, dass sich hier X-Parasiten aus Metroid Fusion aufhalten, die zunächst als ausgelöscht galten. Hier stellt sich ihr auch einer der zuvor von der Galaktischen Föderation zur Erkundung entsandten E.M.M.I.-Roboter („Extraplanetary Multiform Mobile Identifiers“) in den Weg. Die Roboter wurden auf dem Planeten von einer unbekannten Macht gehackt und sind immun gegen Samus’ Bewaffnung, sodass sie diesen ausweichen muss um ihre Ziele zu erreichen.'),
(10, 'The Legend of Zelda', 8, 'game0010.php', '../img/game_covers/game0010_cover.png', NULL, 84, 'THE HYRULE FANTASY ゼルダの伝説\nゼルダの伝説', 'TLoZ^Zelda 1^Zelda I', 1, '1986-02-21', 'Ganon – ehemals Gannon geschrieben –, Fürst der Dunkelheit, dringt in das Königreich Hyrule ein und raubt das Triforce-Fragment der Kraft. Um zu verhindern, dass Ganon ein weiteres Fragment erringen und somit weiter an Macht gewinnen kann, zerbricht Prinzessin Zelda das Triforce-Fragment der Weisheit in acht Teile und verteilt diese über das ganze Land, bevor Ganon sie in einen Kerker einsperrt. Der junge Link muss alle acht Triforce-Teile finden und vereinen, um mit dessen Macht die Prinzessin zu befreien.'),
(11, 'The Legend of Zelda: Ocarina of Time 3D', 2, 'game0011.php', '../img/game_covers/game0011_cover.jpg', NULL, 94, 'ゼルダの伝説 時のオカリナ 3D', 'TLoZ:OoT3D', 1, '2011-06-16', 'Im Alter von neun Jahren wird Link zum Wächter des Volkes geschickt, dem Deku-Baum – einem fabelhaften Wesen in Gestalt eines Baumes. Der Deku-Baum weist Link eine Fee namens Navi als Begleiterin zu und offenbart dem Jungen eine Bedrohung durch Ganondorf, den Anführer des Wüstenvolkes der Gerudo. Kurz darauf stirbt der Deku-Baum an den Folgen eines Fluches. Dessen letzten Worten folgend reist Link zum Schloss Hyrule und trifft dort Prinzessin Zelda. Diese misstraut Ganondorf, da sie in einem Traum von dessen bösen Absichten erfuhr. Obwohl Ganondorf dem König von Hyrule seine Treue schwört, begehrt er das Triforce, ein göttliches Relikt unendlicher Macht, das sich in Hyrule befinden soll. Weil Zelda verhindern möchte, dass Ganondorf das Triforce erhält, weiht sie Link in einen Plan ein, das Heiligtum vor Ganondorf zu beschützen. Das Triforce befindet sich im Heiligen Reich, für dessen Zugang als Schlüssel die drei heiligen Steine benötigt werden.'),
(12, 'Zelda II: The Adventure of Link', 8, 'game0012.php', '../img/game_covers/game0012_cover.png', NULL, 73, 'リンクの冒険', 'Zelda 2', 1, '1987-01-14', 'Die Ereignisse von The Legend of Zelda liegen lange zurück. Nachdem Link den König der Bösewichte, Ganon, besiegt hatte, kehrte wieder Ruhe und Frieden im Königreich Hyrule ein. Der inzwischen fast 16-jährige Link bemerkt eines Tages auf der Außenfläche seiner linken Hand ein merkwürdiges Zeichen, welches genauso aussieht wie das Wappen von Hyrule. Besorgt wendet er sich an Impa, das Kindermädchen von Prinzessin Zelda. Sie nimmt ihn daraufhin mit zum Nordschloss, in dem eine Tür seit langer Zeit magisch versiegelt ist. Impa drückt Links linke Hand gegen die Tür und diese öffnet sich. In der Mitte des Raumes liegt eine schlafende Frau. Impa erzählt Link, dass es sich hierbei um Prinzessin Zelda handelt.'),
(13, 'The Legend of Zelda: A Link to the Past', 7, 'game0013.php', '../img/game_covers/game0013_cover.png', NULL, 95, 'ゼルダの伝説 神々のトライフォース', 'TLoZ:ALttP', 1, '1992-04-13', 'Der böse Ganon, in Gestalt des Zauberers Agahnim, versucht das Siegel zu brechen, welches ihn in der Schattenwelt, dem ehemaligen Goldenen Land, gefangen hält. Dazu schließt er die Nachfahren der Weisen, die einst das Siegel schufen, darunter auch Prinzessin Zelda, in Kristalle ein und hält sie in der Schattenwelt gefangen. Link muss zunächst drei Amulette, das Masterschwert und eine Mondperle in den Tempeln Hyrules finden, um schließlich alle sieben Mädchen aus der Schattenwelt zu befreien. Zusammen mit den Weisen macht er sich auf, Ganon zu besiegen und das heilige Triforce zurückzugewinnen.'),
(14, 'The Legend of Zelda: Link\'s Awakening', 12, 'game0014.php', '../img/game_covers/game0014_cover.png', NULL, 91, 'ゼルダの伝説 夢をみる島', 'TLoZ:LA', 1, '1993-08-06', 'Nachdem der Protagonist Link[A 1] am Ende von The Legend of Zelda: Oracle of Ages/Oracle of Seasons[A 2] den Serienantagonisten Ganon besiegt hat, unternimmt er eine Trainingsreise, die ihn über das Meer führt. Als er nach monatelanger Reise zurück zum Königreich Hyrule segelt, gerät er in ein Unwetter und erleidet Schiffbruch. Am Strand der Insel Cocolint[A 3] bewusstlos angespült, wird er von der Einheimischen Marin gefunden.[A 4] Link möchte die Insel verlassen, um seine Reise fortsetzen zu können; die Einwohner jedoch behaupten, dass es außerhalb der Insel nichts als Wasser gebe.'),
(15, 'The Legend of Zelda: Link\'s Awakening DX', 11, 'game0015.php', '../img/game_covers/game0015_cover.png', NULL, 91, 'ゼルダの伝説 夢をみる島 DX', 'TLoZ:LADX', 1, '1998-12-12', 'Nachdem der Protagonist Link[A 1] am Ende von The Legend of Zelda: Oracle of Ages/Oracle of Seasons[A 2] den Serienantagonisten Ganon besiegt hat, unternimmt er eine Trainingsreise, die ihn über das Meer führt. Als er nach monatelanger Reise zurück zum Königreich Hyrule segelt, gerät er in ein Unwetter und erleidet Schiffbruch. Am Strand der Insel Cocolint[A 3] bewusstlos angespült, wird er von der Einheimischen Marin gefunden.[A 4] Link möchte die Insel verlassen, um seine Reise fortsetzen zu können; die Einwohner jedoch behaupten, dass es außerhalb der Insel nichts als Wasser gebe.'),
(16, 'The Legend of Zelda: Link\'s Awakening (Switch)', 6, 'game0016.php', '../img/game_covers/game0016_cover.png', NULL, 87, 'ゼルダの伝説 夢をみる島', 'TLoZ:LA', 1, '2019-09-20', 'Nachdem der Protagonist Link[A 1] am Ende von The Legend of Zelda: Oracle of Ages/Oracle of Seasons[A 2] den Serienantagonisten Ganon besiegt hat, unternimmt er eine Trainingsreise, die ihn über das Meer führt. Als er nach monatelanger Reise zurück zum Königreich Hyrule segelt, gerät er in ein Unwetter und erleidet Schiffbruch. Am Strand der Insel Cocolint[A 3] bewusstlos angespült, wird er von der Einheimischen Marin gefunden.[A 4] Link möchte die Insel verlassen, um seine Reise fortsetzen zu können; die Einwohner jedoch behaupten, dass es außerhalb der Insel nichts als Wasser gebe.'),
(17, 'The Legend of Zelda: Oracle of Seasons', 11, 'game0017.php', '../img/game_covers/game0017_cover.png', NULL, 92, 'ゼルダの伝説 ふしぎの木の実 大地の章', 'TLoZ:OoS', 1, '2001-05-14', 'Der niederträchtige General Onox entführt das „Orakel der Jahreszeiten“, die Tänzerin Din, und verbannt den Tempel der Jahreszeiten und den dort aufbewahrten Stab der vier Jahreszeiten in eine andere Welt. Ohne Din und den Stab gerät das Wetter im Land Holodrum völlig durcheinander, und Link macht sich zur Rettung auf. Dazu muss er die acht „Essenzen der Natur“ finden, um dem mächtigen Maku-Baum zu alter Stärke zu verhelfen.<br>Beim Durchspielen eines der beiden Teile erhält der Spieler ein 20-stelliges Passwort. Dieses kann er zu Beginn des zweiten Teils eingeben, und so das Abenteuer mit dem alten Spielstand in der anderen Welt fortsetzen. Ein auf diese Weise gestartetes Spiel weist einige Veränderungen gegenüber dem normalen Spiel auf, zum Beispiel liegen einige Gegenstände an anderen Orten. Zusätzlich wird die Handlung um einen zusätzlichen Strang erweitert, der die Geschehnisse der beiden Spiele miteinander verbindet. So erfährt der Spieler, dass die Hauptantagonisten der beiden Teile, die Zauberin Veran und General Onox, in Wahrheit dem Ziel dienen, ein Ungeheuer namens Ganon zu erwecken. Der Charakter Ganon ist der Oberbösewicht in zahlreichen anderen Spielen der Zelda-Reihe und gilt als Erzfeind des Helden Link. Auch Prinzessin Zelda, von der die gesamte The-Legend-of-Zelda-Serie ihren Namen hat, taucht nur im passwortverbundenen Spiel auf.'),
(18, 'The Legend of Zelda: Oracle of Ages', 11, 'game0018.php', '../img/game_covers/game0018_cover.png', NULL, 92, 'ゼルダの伝説 ふしぎの木の実 時空の章', 'TLoZ:OoA', 1, '2001-05-14', 'Die böse Zauberin Veran nimmt das „Orakel der Zeit“, die Sängerin Nayru, gefangen. Mit ihrer Hilfe will sie die Vergangenheit ändern, um auf ewig die Macht über das Land Labrynna zu erlangen. Link – Protagonist des Spiels – muss die acht „Essenzen der Zeit“ finden, um mit Hilfe des Maku-Baumes Nayru und Labrynna zu retten.<br>Beim Durchspielen eines der beiden Teile erhält der Spieler ein 20-stelliges Passwort. Dieses kann er zu Beginn des zweiten Teils eingeben, und so das Abenteuer mit dem alten Spielstand in der anderen Welt fortsetzen. Ein auf diese Weise gestartetes Spiel weist einige Veränderungen gegenüber dem normalen Spiel auf, zum Beispiel liegen einige Gegenstände an anderen Orten. Zusätzlich wird die Handlung um einen zusätzlichen Strang erweitert, der die Geschehnisse der beiden Spiele miteinander verbindet. So erfährt der Spieler, dass die Hauptantagonisten der beiden Teile, die Zauberin Veran und General Onox, in Wahrheit dem Ziel dienen, ein Ungeheuer namens Ganon zu erwecken. Der Charakter Ganon ist der Oberbösewicht in zahlreichen anderen Spielen der Zelda-Reihe und gilt als Erzfeind des Helden Link. Auch Prinzessin Zelda, von der die gesamte The-Legend-of-Zelda-Serie ihren Namen hat, taucht nur im passwortverbundenen Spiel auf.'),
(19, 'The Legend of Zelda: Four Swords', 10, 'game0019.php', '../img/game_covers/game0019_cover.png', NULL, 85, 'ゼルダの伝説 4つの剣', 'TLoZ:FS', 1, '2002-12-02', 'Die Geschichte handelt von dem Windmagier Vaati, der im Schwert der Vier (englisch\': Four Sword) eingeschlossen war. Durch das Brechen des Siegels kann Vaati entkommen und entführt Zelda, um sie zu heiraten. Um sie zu retten, nimmt Link das Schwert der Vier an sich, woraufhin sich das Schwert mit Link in vier verschiedene Links teilt. Jede Spielfigur ist dabei einer der Farben Grün, Rot, Blau oder Lila zugeordnet. Gemeinsam müssen diese nun die Fee des Waldes, die Fee des Eises und die Fee des Feuers aufsuchen, damit diese dem vervierfachten Helden die Schlüssel zu Vaatis Palast geben, um dem Finsterling das Handwerk zu legen.'),
(20, 'The Legend of Zelda: The Wind Waker', 3, 'game0020.php', '../img/game_covers/game0020_cover.png', NULL, 96, 'ゼルダの伝説 風のタクト', 'TLoZ:WW', 1, '2002-12-13', 'Nach den Ereignissen von Ocarina of Time sandte die damalige Prinzessin Zelda den Helden der Zeit (jap. 時の勇者, Toki no Yūsha) zurück in die Vergangenheit. Durch diesen Schritt entstanden zwei Zeitlinien, die voneinander getrennt waren: In einer Zeitlinie kehrte der Held der Zeit zurück, um Ganondorf zu stoppen, noch bevor dieser das Triforce der Götter berühren konnte. In der anderen Zeitlinie fanden die Ereignisse von Ocarina of Time wirklich statt, und Zelda schickte Link in die andere Zeitlinie.<br>The Wind Waker spielt in der letzteren Zeitlinie: Der Held der Zeit verschwand durch Zeldas Wirken. Als Ganondorf zurückkehrte, um Hyrule erneut zu terrorisieren, gab es daher niemanden, der ihn stoppen konnte. Schließlich griffen die Göttinnen von Hyrule ein: Din, Nayru und Farore befahlen einigen Bewohnern Hyrules, Zuflucht auf den höchsten Bergspitzen zu suchen. Anschließend versteinerten sie das Königreich, umgaben es mit einem Kraftfeld und ließen es in einer Sintflut von einem Meer bedecken. Die Bergspitzen Hyrules wurden dadurch zu Inseln in einem Meer, auf denen das Volk weiterleben konnte. Ganondorf wurde mit Hyrule zusammen gebannt.'),
(21, 'The Legend of Zelda: The Wind Waker HD', 9, 'game0021.php', '../img/game_covers/game0021_cover.png', NULL, 90, 'ゼルダの伝説 風のタクトHD', 'TLoZ:WWHD', 1, '2013-09-26', 'Nach den Ereignissen von Ocarina of Time sandte die damalige Prinzessin Zelda den Helden der Zeit (jap. 時の勇者, Toki no Yūsha) zurück in die Vergangenheit. Durch diesen Schritt entstanden zwei Zeitlinien, die voneinander getrennt waren: In einer Zeitlinie kehrte der Held der Zeit zurück, um Ganondorf zu stoppen, noch bevor dieser das Triforce der Götter berühren konnte. In der anderen Zeitlinie fanden die Ereignisse von Ocarina of Time wirklich statt, und Zelda schickte Link in die andere Zeitlinie.<br>The Wind Waker spielt in der letzteren Zeitlinie: Der Held der Zeit verschwand durch Zeldas Wirken. Als Ganondorf zurückkehrte, um Hyrule erneut zu terrorisieren, gab es daher niemanden, der ihn stoppen konnte. Schließlich griffen die Göttinnen von Hyrule ein: Din, Nayru und Farore befahlen einigen Bewohnern Hyrules, Zuflucht auf den höchsten Bergspitzen zu suchen. Anschließend versteinerten sie das Königreich, umgaben es mit einem Kraftfeld und ließen es in einer Sintflut von einem Meer bedecken. Die Bergspitzen Hyrules wurden dadurch zu Inseln in einem Meer, auf denen das Volk weiterleben konnte. Ganondorf wurde mit Hyrule zusammen gebannt.'),
(22, 'The Legend of Zelda: Four Swords Adventures', 3, 'game0022.php', '../img/game_covers/game0022_cover.png', NULL, 86, 'ゼルダの伝説 4つの剣+', 'TLoZ:FSA', 1, '2004-03-18', 'Um dem bösen Hexer Vaati Einhalt zu gebieten, muss Link sich das Schwert der Vier zunutze machen, das ihn in vier Links teilt, die zum Bestehen des Abenteuers kooperieren müssen.'),
(23, 'The Legend of Zelda: The Minish Cap', 10, 'game0023.php', '../img/game_covers/game0023_cover.png', NULL, 89, 'ゼルダの伝説 ふしぎのぼうし', 'TLoZ:MC', 1, '2005-11-04', 'Prinzessin Zelda wird von Vaati, einem bösen Dämon, versteinert, welcher das Force sucht. Link macht sich abermals auf, sie zu retten und findet im Verlauf seiner Reise die sprechende Zipfelmütze Ezelo, welche die magische Fähigkeit besitzt, ihren Träger schrumpfen zu lassen. Ezelo ist in Wirklichkeit ein Zauberer und Vaatis Lehrer. Er wurde von seinem Schüler in diese Mützenform verhext, als er ihn beim Stehlen der Mütze der Wünsche erwischte. Sie erfüllt ihrem Träger jeden Wunsch, weshalb Vaati zu einem Hexer wurde. In miniaturisierter Form stößt Link daraufhin auf das Volk der Minish, welches ihn fortan auf seiner Reise unterstützt. Außerdem kann er Fragmente (in Form von in zwei Hälften geteilten Münzen) vereinen, mit denen man verschiedene Ereignisse hervorrufen kann. Das eigentliche Ziel ist aber, das heilige Schwert der Minish mit Hilfe der vier Elemente wiederherzustellen, nachdem Vaati es zerstört hatte.'),
(24, 'The Legend of Zelda: Twilight Princess', 3, 'game0024.php', '../img/game_covers/game0024_cover.png', NULL, 96, 'ゼルダの伝説 トワイライトプリンセス', 'TLoZ:TP', 1, '2006-12-02', 'Das Spiel beginnt mit dem Auftreten der Hauptperson namens Link – der Name ist im Spiel jedoch frei wählbar –, der sich in einem kleinen Dorf namens Ordon als Ziegenhirte verdingt. Neben dem Zusammentreiben der Ziegen und kleineren Hilfsdiensten genießt Link die Ruhe und Abgeschiedenheit des kleinen Örtchens, als sein Freund, der Schwertkämpfer Moe, ihn beauftragt, ein von Moe geschmiedetes Schwert an den Königshof nach Schloss Hyrule zu bringen. Jedoch kommen auf Link einige Probleme zu, da die Kinder in den Wald rennen, um einen Affen zu jagen. Während der Suche nach Taro, einem der Kinder, trifft Link auf Coro, dem Verwalter des Gebietes Phirone. Von ihm erhält Link eines der ersten wichtigen Items.<br>Bevor Link den Auftrag ausführen kann, wird er von Monster in Begleitung von König Bulblin niedergeschlagen, die sowohl die Tochter des Bürgermeisters, als auch die anderen Kinder aus dem Dorf entführen. Nachdem Link wieder zu sich gekommen ist, versucht er, die Spur der Übeltäter aufzunehmen und steht schließlich vor einer riesigen, fluoreszierenden Wand – dem Eingang zum Schattenreich. Unerwartet wird er blitzartig in das Schattenreich hineingezogen. Dort macht Link eine merkwürdige Metamorphose durch und nimmt die Gestalt eines Wolfes an. Er wird gefangen genommen und nach Schloss Hyrule gebracht. Im dortigen Verlies trifft er auf eine ungewöhnliche, schwebende Kreatur namens Midna, mit deren Hilfe es ihm gelingt, aus dem Verlies zu entkommen.<br>Anschließend begegnen Link und Midna Prinzessin Zelda, die berichtet, wie es zu der seltsamen Verwandlung von Hyrule kam. Der selbsternannte König der Schattenwelt Zanto stellte sie vor die Wahl zu kapitulieren und Hyrule den Schatten zu übergeben oder alle Bewohner Zantos Wut und somit dem sicheren Tod preiszugeben. Zelda kapitulierte und Hyrule fiel in die Schatten, in denen die Menschen nur als geisterhafte Wesen existieren. Von Schuldgefühlen zerfressen versteckt sich Zelda in einem Turm und schickte Midna aus, um etwas zu unternehmen. Diese fand Link, der sich in den Schatten nicht in einen Geist, sondern „nur“ in einen Wolf verwandelt und erkannte ihn als Auserwählten, dem die Macht innewohnte Hyrule zu retten (und Midnas eigenen Wünschen zu entsprechen). Midna und Link fliehen aus dem Schloss Hyrule. Die Schattenwelt hat sich mittlerweile fast bis zum Dorf Ordon ausgedehnt. An einer heilenden Quelle nahe dem Dorf trifft Link auf den Lichtgeist Latoan, der ihm von den anderen Lichtgeistern berichtet, die über Hyrule wachen. Latoan berichtet, dass Zanto ihnen das Licht nahm, um ihre Gebiete in den Schatten zu stürzen.<br>Links erste „richtige“ Aufgabe ist es nun, den anderen drei Lichtgeistern (Phirone, Eldin und Ranelle) wieder auf die Bildfläche zu verhelfen. In den jeweiligen Regionen müssen zuerst Schattenkäfer gefunden und ausgeschaltet werden, um ein magisches Artefakt namens „Tiegel des Lichts“ zu füllen. Im Anschluss daran muss Link jeweils ein Labyrinth erkunden. Der erste Dungeon ist der Waldschrein von Phirone, der in einem dichten und unbewohnten Wald liegt. Dort trifft er wieder auf den Affen, den Taro zu Beginn des Spiels verfolgte. Dieser hilft Link, aber er muss dafür dem Affen helfen die anderen Tiere zu befreien und gegen den \"Boss der Affen\" Ook anzukämpfen. Dieser hilft Link letztendlich auch beim Kampf gegen den Endboss des Schreins. Der zweite Dungeon liegt im Todesberg verborgen, einem großen Vulkan und Heimat der Goronen. Sie sind ein Volk von Kreaturen, die man am ehesten als Felsengolems bezeichnen kann. Link hilft den Goronen ihr Oberhaupt Grogor zu befreien. Der dritte Dungeon ist ein Schrein, der tief unter dem Hylia-See liegt, dem größten See Hyrules. Er wird von den Zoras bewacht, einem Volk von Fischmenschen. Midna, die Link dabei begleitet, ist derweil auf der Suche nach einer Waffe, mit der sie Zanto vernichten und ihr Schattenreich retten kann.'),
(25, 'The Legend of Zelda: Twilight Princess HD', 9, 'game0025.php', '../img/game_covers/game0025_cover.png', NULL, 86, 'ゼルダの伝説 トワイライトプリンセス HD', 'TLoZ:TPHD', 1, '2016-03-04', 'Das Spiel beginnt mit dem Auftreten der Hauptperson namens Link – der Name ist im Spiel jedoch frei wählbar –, der sich in einem kleinen Dorf namens Ordon als Ziegenhirte verdingt. Neben dem Zusammentreiben der Ziegen und kleineren Hilfsdiensten genießt Link die Ruhe und Abgeschiedenheit des kleinen Örtchens, als sein Freund, der Schwertkämpfer Moe, ihn beauftragt, ein von Moe geschmiedetes Schwert an den Königshof nach Schloss Hyrule zu bringen. Jedoch kommen auf Link einige Probleme zu, da die Kinder in den Wald rennen, um einen Affen zu jagen. Während der Suche nach Taro, einem der Kinder, trifft Link auf Coro, dem Verwalter des Gebietes Phirone. Von ihm erhält Link eines der ersten wichtigen Items.<br>Bevor Link den Auftrag ausführen kann, wird er von Monster in Begleitung von König Bulblin niedergeschlagen, die sowohl die Tochter des Bürgermeisters, als auch die anderen Kinder aus dem Dorf entführen. Nachdem Link wieder zu sich gekommen ist, versucht er, die Spur der Übeltäter aufzunehmen und steht schließlich vor einer riesigen, fluoreszierenden Wand – dem Eingang zum Schattenreich. Unerwartet wird er blitzartig in das Schattenreich hineingezogen. Dort macht Link eine merkwürdige Metamorphose durch und nimmt die Gestalt eines Wolfes an. Er wird gefangen genommen und nach Schloss Hyrule gebracht. Im dortigen Verlies trifft er auf eine ungewöhnliche, schwebende Kreatur namens Midna, mit deren Hilfe es ihm gelingt, aus dem Verlies zu entkommen.<br>Anschließend begegnen Link und Midna Prinzessin Zelda, die berichtet, wie es zu der seltsamen Verwandlung von Hyrule kam. Der selbsternannte König der Schattenwelt Zanto stellte sie vor die Wahl zu kapitulieren und Hyrule den Schatten zu übergeben oder alle Bewohner Zantos Wut und somit dem sicheren Tod preiszugeben. Zelda kapitulierte und Hyrule fiel in die Schatten, in denen die Menschen nur als geisterhafte Wesen existieren. Von Schuldgefühlen zerfressen versteckt sich Zelda in einem Turm und schickte Midna aus, um etwas zu unternehmen. Diese fand Link, der sich in den Schatten nicht in einen Geist, sondern „nur“ in einen Wolf verwandelt und erkannte ihn als Auserwählten, dem die Macht innewohnte Hyrule zu retten (und Midnas eigenen Wünschen zu entsprechen). Midna und Link fliehen aus dem Schloss Hyrule. Die Schattenwelt hat sich mittlerweile fast bis zum Dorf Ordon ausgedehnt. An einer heilenden Quelle nahe dem Dorf trifft Link auf den Lichtgeist Latoan, der ihm von den anderen Lichtgeistern berichtet, die über Hyrule wachen. Latoan berichtet, dass Zanto ihnen das Licht nahm, um ihre Gebiete in den Schatten zu stürzen.<br>Links erste „richtige“ Aufgabe ist es nun, den anderen drei Lichtgeistern (Phirone, Eldin und Ranelle) wieder auf die Bildfläche zu verhelfen. In den jeweiligen Regionen müssen zuerst Schattenkäfer gefunden und ausgeschaltet werden, um ein magisches Artefakt namens „Tiegel des Lichts“ zu füllen. Im Anschluss daran muss Link jeweils ein Labyrinth erkunden. Der erste Dungeon ist der Waldschrein von Phirone, der in einem dichten und unbewohnten Wald liegt. Dort trifft er wieder auf den Affen, den Taro zu Beginn des Spiels verfolgte. Dieser hilft Link, aber er muss dafür dem Affen helfen die anderen Tiere zu befreien und gegen den \"Boss der Affen\" Ook anzukämpfen. Dieser hilft Link letztendlich auch beim Kampf gegen den Endboss des Schreins. Der zweite Dungeon liegt im Todesberg verborgen, einem großen Vulkan und Heimat der Goronen. Sie sind ein Volk von Kreaturen, die man am ehesten als Felsengolems bezeichnen kann. Link hilft den Goronen ihr Oberhaupt Grogor zu befreien. Der dritte Dungeon ist ein Schrein, der tief unter dem Hylia-See liegt, dem größten See Hyrules. Er wird von den Zoras bewacht, einem Volk von Fischmenschen. Midna, die Link dabei begleitet, ist derweil auf der Suche nach einer Waffe, mit der sie Zanto vernichten und ihr Schattenreich retten kann.'),
(26, 'The Legend of Zelda: Phantom Hourglass', 4, 'game0026.php', '../img/game_covers/game0026_cover.png', NULL, 90, 'ゼルダの伝説 夢幻の砂時計', 'TLoZ:PH', 1, '2007-06-23', 'Die Handlung ist nach den Ereignissen in The Wind Waker angesiedelt. Der Protagonist Link (der Name ist frei wählbar) ist mit dem weiblichen Piraten-Kapitän Tetra (später Prinzessin Zelda) und ihrer Mannschaft auf hoher See unterwegs. Auf ihrer Reise geraten sie in einen Nebel und treffen auf ein Geisterschiff. Tetra sieht sich das Schiff genauer an und wird entführt. Als Link ihr auf das Schiff folgt, um sie zu retten, fällt er jedoch ins Meer. Als er auf einer Insel wieder erwacht, wird er dort von der Fee Ciela und ihrem Großvater gefunden. Von ihm erfährt Link, dass er die drei Lichtgeister des Meereskönigs und zwar die der Kraft, der Weisheit und des Mutes finden muss, um Tetra zu befreien.'),
(27, 'The Legend of Zelda: Spirit Tracks', 4, 'game0027.php', '../img/game_covers/game0027_cover.png', NULL, 87, 'ゼルダの伝説 大地の汽笛', 'TLoZ:ST', 1, '2009-12-07', 'Link begibt sich mit seinem Ausbilder nach Schloss Hyrule, da er dort sein Lokomotivführer-Diplom überreicht bekommt. Dort wird ihm von Prinzessin Zelda ein Brief zugesteckt, in dem sie um ein Treffen in ihren privaten Gemächern bittet. Er begibt sich dorthin und wird von Prinzessin Zelda bereits erwartet. Sie teilt ihm mit, dass die Schienen der Götter nach und nach verschwinden. Deshalb soll er mit ihr zum Turm der Götter gehen, um dort die „weise Shiene“ zu treffen. Auf dem Weg dorthin werden Link, die Prinzessin und Links Ausbilder, der mit ihnen kommt, angegriffen und Zeldas Körper von Bösewichten entführt, wobei ihr Geist jedoch entkommen kann. Link und sein Ausbilder werden ohnmächtig von der Wache zurück nach Schloss Hyrule gebracht, wo Link nach dem Aufwachen der Geist Prinzessin Zeldas erscheint und dieser ihn fortan begleitet. Die beiden machen sich erneut auf den Weg zum Turm und kommen schließlich bei Shiene an. Diese erzählt den beiden, dass der finstere Dämonenkönig langsam aus seinem Gefängnis im Turm ausbricht. Dies kann nur verhindert werden, wenn Link die Schienen der Götter ausfindig machen und reaktivieren kann.'),
(28, 'The Legend of Zelda: Skyward Sword', 5, 'game0028.php', '../img/game_covers/game0028_cover.png', NULL, 93, 'ゼルダの伝説 スカイウォードソード', 'TLoZ:SS', 1, '2011-11-18', 'Eine alte Legende erzählt vom Ursprung alles Bösen, dem Todbringer. Er beginnt eine grausame Schlacht, um das Triforce zu erlangen – die unendliche Kraft, die ihrem Besitzer sämtliche Wünsche erfüllt. Die Göttin Hylia erhebt ein Stück aus der Erde in den Himmel, um dort das Triforce zu verstecken und so vor dem Bösen zu schützen. Den überlebenden Menschen gibt sie auf dieser Himmelsinsel Sicherheit. Anschließend zieht sie mit ihren übrigen Anhängern in die finale Schlacht gegen den Todbringer und kann ihn verbannen.<br>Jahrhunderte später beginnt die eigentliche Handlung auf der Insel über den Wolken, dem sogenannten Wolkenhort, der im Wolkenmeer liegt, durch das die Menschen auf riesigen Vögeln reiten. Die Handlung dreht sich um den Jungen Link,[A 3] der die Ritterschule besucht und mit Zelda befreundet ist, der Tochter des Schulleiters. Zelda wird eines Tages von einem Wirbelsturm in das Land unterhalb der Wolken gezogen. Daraufhin wird Link von einem Geschöpf namens Phai in die Statue der Göttin geführt. Dort erhält er das Schwert der Göttin, dem sie innewohnt.'),
(29, 'The Legend of Zelda: Skyward Sword HD', 6, 'game0029.php', '../img/game_covers/game0029_cover.png', NULL, 81, 'ゼルダの伝説 スカイウォードソード HD', 'TLoZ:SSHD', 1, '2021-07-16', 'Eine alte Legende erzählt vom Ursprung alles Bösen, dem Todbringer. Er beginnt eine grausame Schlacht, um das Triforce zu erlangen – die unendliche Kraft, die ihrem Besitzer sämtliche Wünsche erfüllt. Die Göttin Hylia erhebt ein Stück aus der Erde in den Himmel, um dort das Triforce zu verstecken und so vor dem Bösen zu schützen. Den überlebenden Menschen gibt sie auf dieser Himmelsinsel Sicherheit. Anschließend zieht sie mit ihren übrigen Anhängern in die finale Schlacht gegen den Todbringer und kann ihn verbannen.<br>Jahrhunderte später beginnt die eigentliche Handlung auf der Insel über den Wolken, dem sogenannten Wolkenhort, der im Wolkenmeer liegt, durch das die Menschen auf riesigen Vögeln reiten. Die Handlung dreht sich um den Jungen Link,[A 3] der die Ritterschule besucht und mit Zelda befreundet ist, der Tochter des Schulleiters. Zelda wird eines Tages von einem Wirbelsturm in das Land unterhalb der Wolken gezogen. Daraufhin wird Link von einem Geschöpf namens Phai in die Statue der Göttin geführt. Dort erhält er das Schwert der Göttin, dem sie innewohnt.'),
(30, 'The Legend of Zelda: A Link Between Worlds', 2, 'game0030.php', '../img/game_covers/game0030_cover.png', NULL, 91, 'ゼルダの伝説 神々のトライフォース2', 'TLoZ:ALBW', 1, '2013-12-22', 'Zu Beginn der Handlung wird der im Königreich Hyrule als Lehrling des Schmieds lebende Protagonist Link[A 1] Zeuge, wie ein Magier namens Yuga sein Unwesen treibt und Menschen in Porträts verwandelt. Sahasrahla befürchtet, dass Yuga die Nachfahren der Sieben Weisen aufspüren möchte, die vor langer Zeit den bösen Ganon verbannt hatten, um mit ihrer Kraft den Dämon wieder zum Leben zu erwecken. Daher trägt sie Link auf, den Magier aufzuhalten. Unterstützt wird Link bei seiner Mission von einem fahrenden Händler im Hasenkostüm namens Ravio, der in sein Haus einzieht und ihm im Gegenzug nützliche Ausrüstungsgegenstände ausleiht sowie ihm einen Armreif schenkt.'),
(31, 'The Legend of Zelda: Breath of the Wild', 6, 'game0031.php', '../img/game_covers/game0031_cover.png', NULL, 97, 'ゼルダの伝説 ブレス オブ ザ ワイルド', 'TLoZ:BotW', 1, '2017-03-03', 'Nachdem die Verheerung Ganon in ihren Reinkarnationen immer wieder das Land Hyrule angreift, kann 10.000 Jahre vor Einsetzen der Handlung von Breath of the Wild der Zyklus durch die Konstruktion von vier Maschinen, den sogenannte Titanen, und zahlreichen kleineren Maschinen, den Wächtern, unterbrochen werden. 100 Jahre vor den Ereignissen des Spiels rüstet sich das Königreich Hyrule aufgrund einer Prophezeiung, die von der Rückkehr Ganons kündet, für eine erneute Verteidigung und unternimmt umfangreiche archäologische Expeditionen, bei denen die Titanen und Wächter wiederentdeckt und allmählich nutzbar gemacht werden. Die Titanen werden – in Anlehnung an die Ereignisse vor 10.000 Jahren – von Recken der verschiedenen Völker kontrolliert. Ein fünfter Recke, der junge Mann Link, führt das Masterschwert, eine legendäre Klinge, der die Kraft innewohnt, das Böse zu versiegeln. Die Prinzessin Hyrules, Zelda, soll als Erbin der Prinzessin aus der Legende zudem über eine magische Siegelkraft verfügen, doch zunächst gelingt es ihr nicht, auf diese zuzugreifen.<br>Schließlich kehrt Ganon zurück und die Recken versuchen ihn zurückzuschlagen, doch es gelingt ihm, Wächter und Titanen unter seine Kontrolle zu bringen und gegen die Armeen Hyrules zu richten. Mit ihrer Hilfe verwüstet er das Land und verwundet den mit der Prinzessin in das Dorf Hateno fliehenden Protagonisten Link, sodass Zelda ihn in den sogenannten Schrein des Lebens bringen lässt, wo er in einem hundertjährigen Schlaf regeneriert. Zeitgleich wird Ganon unter Prinzessin Zeldas Kontrolle im Schloss Hyrule versiegelt; ihre magischen Kräfte waren erwacht, als sie den verwundeten Link auf der Flucht vor den Wächtern verteidigte.'),
(32, 'Secret of Mana', 7, 'game0032.php', '../img/game_covers/game0032_cover.png', NULL, 80, '聖剣伝説2', NULL, 5, '1993-08-06', 'Drei Jungen aus dem Quelldorf brechen die Anordnungen des Dorfältesten und gehen zum nahen Wasserfall, von dem gesagt wird, dass dort ein Schatz aufbewahrt wird. Randi, einer der drei, stolpert und fällt den Wasserfall hinunter. Dort findet er ein altes, rostiges Schwert, das in einem Stein steckt. Eine ihm unbekannte Stimme sagt, dass er es herausziehen und befreien sollte. Als er das Schwert befreit hat, tauchen überall Monster in Quelldorf und der näheren Umgebung auf. Die Dorfbewohner sehen die Entfernung des Schwertes als schlechtes Zeichen und verbannen Randi für immer aus Quelldorf. Ein älterer Ritter mit Namen Gemma erkennt das Schwert kurz darauf als das legendäre Mana-Schwert und treibt Randi dazu an, die acht Manatempel zu besuchen, um die Kraft des Schwertes zu reaktivieren. Auf seinen Reisen lernt er schließlich Prim und Popoi kennen, die ihn begleiten. Popoi versucht zunächst, Randi um sein Geld zu erleichtern, sieht in ihm jedoch eine Möglichkeit, sein Gedächtnis zurückzuerlangen. Prim hingegen möchte ihre große Liebe Dulac finden, der vor einigen Monaten verschollen ist.'),
(33, 'The Legend of Zelda: Tri Force Heroes', 2, 'game0033.php', '../img/game_covers/game0033_cover.png', NULL, 73, 'ゼルダの伝説 トライフォース3銃士', 'TLoZ:TFH', 1, '2015-10-22', 'Tri Force Heroes handelt in der offiziellen Zeitlinie der Zelda-Serie einige Zeit nach den Ereignissen aus The Legend of Zelda: A Link Between Worlds und spielt sich in dem fiktiven modeorientierten Land Textilia ab. Der Spieler erlebt die Geschichte aus der Sicht eines der drei Protagonisten des Spiels, die gemeinsam auf Abenteuer gehen, um einen Fluch zu brechen. Bei der vom Spieler gesteuerten Figur handelt es sich um Link[A 1] aus dem Vorgängerspiel, die anderen beiden sind unbekannten Ursprungs.[8][9] Alternativ kann Link alleine mit zwei puppenartigen Doppelgängern von sich aufbrechen.'),
(34, 'Pokémon Rote Edition', 12, 'game0034.php', '../img/game_covers/game0034_cover.jpg', NULL, 89, 'ポケットモンスター 赤', 'Pokemon RBG^Pokemon RBY', 2, '1996-02-27', 'Das Spiel beginnt in Alabastia, einem kleinen Dorf im Südwesten Kantos. Die Spielfigur und dessen Kindheitsfreund übernehmen die Rollen des Protagonisten und des Rivalen, als sie am selben Tag zu einer großen Reise aufbrechen.<br>Der Protagonist wird von Professor Eich zurückgerufen, als er das hohe Gras betreten will. Im Labor des Professors werden dem Protagonisten und dem Rivalen drei Pokébälle, in denen sich die Starter-Pokémon befinden, gezeigt. Nachdem der Protagonist eines von ihnen gewählt hat, sucht sich der Rivale das taktisch überlegene Pokémon aus und fordert den Protagonisten sofort zu einem Kampf heraus. Nach diesem Kampf bittet der Professor den Protagonisten um einen Gefallen. Dieser reist daraufhin nach Vertania City, wo er ein Paket für den Professor abholen soll. Auf dem Weg in diese Stadt bestreitet er erste Kämpfe gegen Trainer und wilde Pokémon. Wieder zurück in Alabastia überreicht Professor Eich den beiden rivalisierenden Protagonisten den Pokédex, eine Maschine, mit der man Daten sämtlicher Pokémon registrieren kann. Nun ist der Protagonist bereit für das Abenteuer, in dem er viele Kämpfe bestreiten, den Pokédex durch das Fangen von Pokémon füllen und natürlich Freundschaft zu seinen Pokémon aufbauen wird.'),
(35, 'Pokémon Blaue Edition', 12, 'game0035.php', '../img/game_covers/game0035_cover.jpg', NULL, 89, 'ポケットモンスター 青', 'Pokemon RBG^Pokemon RBY', 2, '1996-02-27', 'Das Spiel beginnt in Alabastia, einem kleinen Dorf im Südwesten Kantos. Die Spielfigur und dessen Kindheitsfreund übernehmen die Rollen des Protagonisten und des Rivalen, als sie am selben Tag zu einer großen Reise aufbrechen.<br>Der Protagonist wird von Professor Eich zurückgerufen, als er das hohe Gras betreten will. Im Labor des Professors werden dem Protagonisten und dem Rivalen drei Pokébälle, in denen sich die Starter-Pokémon befinden, gezeigt. Nachdem der Protagonist eines von ihnen gewählt hat, sucht sich der Rivale das taktisch überlegene Pokémon aus und fordert den Protagonisten sofort zu einem Kampf heraus. Nach diesem Kampf bittet der Professor den Protagonisten um einen Gefallen. Dieser reist daraufhin nach Vertania City, wo er ein Paket für den Professor abholen soll. Auf dem Weg in diese Stadt bestreitet er erste Kämpfe gegen Trainer und wilde Pokémon. Wieder zurück in Alabastia überreicht Professor Eich den beiden rivalisierenden Protagonisten den Pokédex, eine Maschine, mit der man Daten sämtlicher Pokémon registrieren kann. Nun ist der Protagonist bereit für das Abenteuer, in dem er viele Kämpfe bestreiten, den Pokédex durch das Fangen von Pokémon füllen und natürlich Freundschaft zu seinen Pokémon aufbauen wird.'),
(36, 'Pokémon Gelbe Edition: Special Pikachu Edition', 12, 'game0036.php', '../img/game_covers/game0036_cover.jpg', NULL, 87, 'ポケットモンスター ピカチュウ', 'Pokemon RBG^Pokemon RBY', 2, '1998-09-12', 'Das Spiel beginnt in Alabastia, einem kleinen Dorf im Südwesten Kantos. Die Spielfigur und dessen Kindheitsfreund übernehmen die Rollen des Protagonisten und des Rivalen, als sie am selben Tag zu einer großen Reise aufbrechen.<br>Der Protagonist wird von Professor Eich zurückgerufen, als er das hohe Gras betreten will. Sie werden jedoch von einem wilden Pikachu überrascht, welches vom Professor Eich gefangen wird. Im Labor des Professors werden dem Protagonisten und dem Rivalen ein Pokéball, in dem sich Evoli befindet, gezeigt. Nachdem der Protagonist zu diesem Pokéball hin geht, rempelt der Rivale den Protagonisten weg, damit er sich das Pokémon schnappen kann. Der Protagonist bekommt als Trost das Pikachu, welches vorher von Professor Eich gefangen wurde. Der Rivale fordert den Protagonisten sofort zu einem Kampf heraus. Das Pikachu will nicht im Ball bleiben, weshalb es dem Protagonisten von diesem Moment an hinterher läuft. Nach diesem Kampf bittet der Professor den Protagonisten um einen Gefallen. Dieser reist daraufhin nach Vertania City, wo er ein Paket für den Professor abholen soll. Auf dem Weg in die Stadt bestreitet er erste Kämpfe gegen Trainer und wilde Pokémon. Wieder zurück in Alabastia überreicht Professor Eich den beiden rivalisierenden Protagonisten den Pokédex, eine Maschine, mit der man Daten sämtlicher Pokémon registrieren kann. Nun ist der Protagonist bereit für das Abenteuer, in dem er viele Kämpfe bestreiten, den Pokédex durch das Fangen von Pokémon füllen und natürlich Freundschaft zu seinen Pokémon aufbauen wird.'),
(37, 'Pokémon Goldene Edition', 11, 'game0037.php', '../img/game_covers/game0037_cover.jpg', NULL, 88, 'ポケットモンスター 金', 'Pokemon GSK^Pokemon GSC', 2, '1999-11-21', 'Das Spiel beginnt in Neuborkia, einem kleinen Dorf im Südosten Johtos. In jenem Dorf lebt die Spielfigur Gold, die die Rolle des Protagonisten übernimmt. Eines Tages wird der Protagonist zu Professor Lind gerufen, einem Wissenschaftler, der sich vor allem mit der Entwicklung und der Zucht von Pokémon beschäftigt. Der Professor hat eine wichtige Aufgabe für den Protagonisten; dieser soll Mr. Pokémon, der Lind zuvor anrief und völlig aufgeregt klang, einen Besuch abstatten. Als Unterstützung erhält der Protagonist eines von drei Pokémon, welches ihn vor anderen Trainern und wilden Pokémon beschützen soll.<br>Auf dem Weg zu Mr. Pokémon bestreitet der Protagonist seine ersten Kämpfe gegen wilde Pokémon und eifrige Trainer, und er freundet sich nach und nach mit seinem Pokémon-Partner an. Bei Mr. Pokémon angekommen, stellt sich heraus, dass dieser im Besitz eines Pokémon-Eis ist und es von Professor Lind untersuchen lassen will. Der Protagonist kehrt nach Neuborkia zurück, findet dort aber einen rothaarigen Jungen vor, der sich verdächtig verhält. Er hat zuvor eines der Pokémon aus Professor Linds Labor gestohlen und fordert den Protagonisten zu einem Kampf heraus. Nachdem der rothaarige Junge, der später erneut auf den Protagonisten trifft und als sein Rivale bezeichnet wird, verliert, flüchtet er. Anschließend überreicht der Protagonist Professor Lind das Ei, und dieser lässt den Protagonisten seinen Pokémon-Partner behalten. Als nun offizieller Pokémon-Trainer bricht der Protagonist von Zuhause auf, um stärker zu werden und mit seinen Pokémon Abenteuer erleben zu können.'),
(38, 'Pokémon Silberne Edition', 11, 'game0038.php', '../img/game_covers/game0038_cover.jpg', NULL, 88, 'ポケットモンスター 銀', 'Pokemon GSK^Pokemon GSC', 2, '1999-11-21', 'Das Spiel beginnt in Neuborkia, einem kleinen Dorf im Südosten Johtos. In jenem Dorf lebt die Spielfigur Gold, die die Rolle des Protagonisten übernimmt. Eines Tages wird der Protagonist zu Professor Lind gerufen, einem Wissenschaftler, der sich vor allem mit der Entwicklung und der Zucht von Pokémon beschäftigt. Der Professor hat eine wichtige Aufgabe für den Protagonisten; dieser soll Mr. Pokémon, der Lind zuvor anrief und völlig aufgeregt klang, einen Besuch abstatten. Als Unterstützung erhält der Protagonist eines von drei Pokémon, welches ihn vor anderen Trainern und wilden Pokémon beschützen soll.<br>Auf dem Weg zu Mr. Pokémon bestreitet der Protagonist seine ersten Kämpfe gegen wilde Pokémon und eifrige Trainer, und er freundet sich nach und nach mit seinem Pokémon-Partner an. Bei Mr. Pokémon angekommen, stellt sich heraus, dass dieser im Besitz eines Pokémon-Eis ist und es von Professor Lind untersuchen lassen will. Der Protagonist kehrt nach Neuborkia zurück, findet dort aber einen rothaarigen Jungen vor, der sich verdächtig verhält. Er hat zuvor eines der Pokémon aus Professor Linds Labor gestohlen und fordert den Protagonisten zu einem Kampf heraus. Nachdem der rothaarige Junge, der später erneut auf den Protagonisten trifft und als sein Rivale bezeichnet wird, verliert, flüchtet er. Anschließend überreicht der Protagonist Professor Lind das Ei, und dieser lässt den Protagonisten seinen Pokémon-Partner behalten. Als nun offizieller Pokémon-Trainer bricht der Protagonist von Zuhause auf, um stärker zu werden und mit seinen Pokémon Abenteuer erleben zu können.'),
(39, 'Pokémon Kristall-Edition', 11, 'game0039.php', '../img/game_covers/game0039_cover.jpg', NULL, 87, 'ポケットモンスター クリスタルバージョン', 'Pokemon GSK^Pokemon GSC', 2, '2000-12-14', 'Die Handlung ist beinahe mit der der Editionen Gold und Silber identisch und spielt drei Jahre nach den Ereignissen der Vorgänger Pokémon Rot und Blau. Auch in Kristall sind die Ziele einerseits der stärkste Pokémon-Trainer zu werden und andererseits alle Pokémon, von denen es nun 251 verschiedene Exemplare gibt, im Pokédex zu registrieren. Diese Wesen können gefangen, entwickelt, getauscht und erstmals auch gezüchtet werden. Mit ihnen kann der Spieler Wettkämpfe bestreiten, um sie Erfahrung sammeln zu lassen und mit ihnen gemeinsam stärker zu werden. Nach dem Erhalt von acht Orden kann der Spieler gegen die Top Vier antreten und der neue Champ werden.'),
(40, 'Pokémon Rubin-Edition', 10, 'game0040.php', '../img/game_covers/game0040_cover.jpg', NULL, 82, 'ポケットモンスター ルビー', 'Pokemon RuSaSm^PokemonRSE', 2, '2002-11-21', 'Mit Pokémon Rubin und Saphir wird die dritte Generation eingeführt. Das Abenteuer findet dieses Mal in der Hoenn-Region statt, wo der Spieler die Machenschaften von Team Aqua und Team Magma verhindern muss. Die Spiele glänzen mit 135 neuen Pokémon. Somit gibt es insgesamt 386 Pokémon, von denen 202 Pokémon dem Hoenn-Dex angehören. Wie bisher gibt es wieder drei Starter-Pokémon, von denen sich der Spieler eines aussuchen kann und anschließend in die Welt der Pokémon aufbricht, um einerseits der beste Pokémon-Trainer aller Zeiten zu werden und andererseits alle Pokémon zu fangen und den Pokédex zu vervollständigen.'),
(41, 'Pokémon Saphir-Edition', 10, 'game0041.php', '../img/game_covers/game0041_cover.jpg', NULL, 82, 'ポケットモンスター サファイア', 'Pokemon RuSaSm^PokemonRSE', 2, '2002-11-21', 'Mit Pokémon Rubin und Saphir wird die dritte Generation eingeführt. Das Abenteuer findet dieses Mal in der Hoenn-Region statt, wo der Spieler die Machenschaften von Team Aqua und Team Magma verhindern muss. Die Spiele glänzen mit 135 neuen Pokémon. Somit gibt es insgesamt 386 Pokémon, von denen 202 Pokémon dem Hoenn-Dex angehören. Wie bisher gibt es wieder drei Starter-Pokémon, von denen sich der Spieler eines aussuchen kann und anschließend in die Welt der Pokémon aufbricht, um einerseits der beste Pokémon-Trainer aller Zeiten zu werden und andererseits alle Pokémon zu fangen und den Pokédex zu vervollständigen.');
INSERT INTO `game` (`gNo`, `title`, `orgPlatform`, `pagePath`, `imgCover`, `imgLogo`, `metaScore`, `orgTitle`, `synTitle`, `refSeries`, `releaseDate`, `synopsis`) VALUES
(42, 'Pokémon Feuerrote Edition', 10, 'game0042.php', '../img/game_covers/game0042_cover.jpg', NULL, 81, 'ポケットモンスター ファイアレッド', 'Pokemon FRBG^Pokemon FRLG', 2, '2004-01-29', 'Die Handlung von Pokémon Feuerrot und Blattgrün ist eine minimal veränderte der ursprünglichen Pokémon-Editionen Blau und Rot. Der Spieler tritt ein Abenteuer in der Region Kanto an, um mit Pokémon eine Freundschaft aufzubauen und Kämpfe zu bestreiten, um stärker zu werden. Die Spielziele sind zum einen der Sieg über die Top Vier der Pokémon-Liga und über den Champ, zum anderen das Komplettieren des Pokédex, also das Fangen einer jeden Pokémon-Art.'),
(43, 'Pokémon Blattgrüne Edition', 10, 'game0043.php', '../img/game_covers/game0043_cover.jpg', NULL, 81, 'ポケットモンスター リーフグリーン', 'Pokemon FRBG^Pokemon FRLG', 2, '2004-01-29', 'Die Handlung von Pokémon Feuerrot und Blattgrün ist eine minimal veränderte der ursprünglichen Pokémon-Editionen Blau und Rot. Der Spieler tritt ein Abenteuer in der Region Kanto an, um mit Pokémon eine Freundschaft aufzubauen und Kämpfe zu bestreiten, um stärker zu werden. Die Spielziele sind zum einen der Sieg über die Top Vier der Pokémon-Liga und über den Champ, zum anderen das Komplettieren des Pokédex, also das Fangen einer jeden Pokémon-Art.'),
(44, 'Pokémon Smaragd-Edition', 10, 'game0044.php', '../img/game_covers/game0044_cover.jpg', NULL, 76, 'ポケットモンスター エメラルド', 'Pokemon RuSaSm^PokemonRSE', 2, '2004-09-16', 'Pokémon Smaragd ist eine leicht geänderte Variante von Pokémon Rubin und Saphir, was heißt, dass einige neue Funktionen programmiert wurden, die zusätzlichen Spielspaß garantieren sollen. So sind es nicht nur die Legendären Pokémon des Landes und des Wassers, Groudon und Kyogre, die eine wichtige Rolle in der Handlung spielen, sondern auch das Himmelhoch-Pokémon Rayquaza. Dieses wird nun als Verbindungsglied näher beleuchtet und kann bereits vor dem Kampf gegen die Top Vier im Himmelturm gefangen werden. Zusätzlich kämpft man nun nicht nur gegen eine der beiden Verbrecherorganisationen aus Hoenn (Team Magma und Team Aqua), sondern gegen beide.'),
(45, 'Pokémon Perl-Edition', 4, 'game0045.php', '../img/game_covers/game0045_cover.jpg', NULL, 85, 'ポケットモンスター パール', 'Pokemon DPPt', 2, '2006-09-28', 'Durch die Einführung des Nintendo DS, der zwei Bildschirme aufweist, wurden sowohl Aufbau der Kämpfe als auch Menüführung überarbeitet, um das Spielerlebnis an die Steuerung per Stylus anzupassen. Das Kampfsystem selbst wurde ebenfalls überarbeitet; beispielsweise wird die Schadensklasse nicht länger durch den Typ einer Attacke bestimmt, was heißt, dass jede Attacke individuell einer Schadensklasse zugeteilt wurde. Diese Einteilung der Attacken in physisch und spezial wird auch in nachfolgenden Spielen genutzt.'),
(46, 'Pokémon Platin-Edition', 4, 'game0046.php', '../img/game_covers/game0046_cover.jpg', NULL, 83, 'ポケットモンスター プラチナ', 'Pokemon DPPt', 2, '2008-09-13', 'Die Geschichte spielt in der fiktiven Region Sinnoh. Der aus dem idyllischen Zweiblattdorf stammende Protagonist begibt sich wie auch sein Rivale aus der Nachbarschaft auf eine unvergessliche Reise quer durch das ganze Land, um seinen von Prof. Eibe erhaltenen Pokédex zu vervollständigen und zum Champ der Pokémon Liga zu werden.<br>Die Geschichte beginnt damit, dass der Protagonist und sein Rivale den See der Wahrheit nach einem roten Garados absuchen möchten, nachdem sie eine Fernsehreportage über es gesehen haben. Dort angekommen, fällt dem Rivalen ein, dass dummerweise weder er noch der Protagonist im Besitz eines Pokémon sind und sich daher im Notfall nicht zur Wehr setzen, geschweige denn das Garados fangen können. Auf dem Rückweg in die Siedlung kreuzen sich ihre Wege mit dem erst gerade aus der Kanto-Region in seine Heimat zurückgekehrten Prof. Eibe und dessen Assistenten Lucia bzw. Lucius (abhängig vom Geschlecht des Protagonisten). Ein kurzer Blick in die Augen der beiden Jugendlichen reicht aus, um ihr Potenzial zu erkennen. Und da sie dieses eben mitbringen, ist der Lektor bereit, ihnen zwei seiner aus Kanto mitgebrachten Pokémon zu überlassen, in der Hoffnung, dass sie so mehr über den Umgang mit Pokémon erfahren und sie eine innige Beziehung zu ihren Partnern aufbauen werden. Nachdem er diesbezüglich in einem intensiven Gespräch mit seiner Mutter bei dieser auf Zuspruch gestoßen ist und sich ihre Erlaubnis eingeholt hat, steht für den Protagonisten fest, dass er und sein Pokémon hinaus in die weite Welt ziehen wollen.'),
(47, 'Pokémon Goldene Edition HeartGold', 4, 'game0047.php', '../img/game_covers/game0047_cover.jpg', NULL, 87, 'ポケットモンスター ハートゴールド', 'Pokemon HGSS', 2, '2009-09-12', 'Die Handlungen der Spiele basieren fast ausschließlich auf denen der Goldenen und Silbernen Editionen mit einigen Elementen aus der Kristall-Edition und völlig neuen Inhalten.<br>Zu Beginn findet sich der Spieler in dem kleinen Städtchen Neuborkia wieder, in welchem er sein Abenteuer mit seinem ersten Pokémon beginnt. In der Johto-Region stehen ihm oder ihr die Starter-Pokémon Endivie, Feurigel und Karnimani zur Auswahl, von denen man eines von Prof. Lind erhält. Dieser schickt den Protagonisten zu Mr. Pokémon, um für den Professor einen Botengang zu erledigen. Dort angekommen trifft man auf Prof. Eich, welcher einem einen Pokédex schenkt. Nach dessen Erhalt kann man mit allen anderen Editionen der vierten Generation Pokémon tauschen. Auf der Rückreise nach Neuborkia gerät man in Konflikt mit einer mysteriösen Person, die sich als Silber herausstellt, der Rivale des Protagonisten. Zurück im Labor erfährt man, dass eben jener ein Pokémon gestohlen haben soll.<br>Von nun an beginnt erst die Reise des Spielers durch die Region. Eine Reise die ihn quer durch das Land führt, um Rätsel zu lösen, Kämpfe zu bestreiten, Ruinen zu erkunden und durch das erringen von Orden und den Sieg in der Pokémon-Liga ein Pokémon-Meister zu werden. Dabei trifft der Protagonist unter anderem auf den ehrgeizigen Mystiker Eusin und auf das kriminelle Team Rocket, das versucht ihren alten Anführer, Giovanni, wiederzufinden und die Kontrolle über die Pokémon-Welt zu erlangen.<br>Mit der Kanto-Region steht dem Spieler zudem die Möglichkeit offen, noch mehr Orden zu gewinnen und noch mehr von der Welt der Pokémon zu erleben.'),
(48, 'Pokémon Silberne Edition SoulSilver', 4, 'game0048.php', '../img/game_covers/game0048_cover.jpg', NULL, 87, 'ポケットモンスター ソウルシルバー', 'Pokemon HGSS', 2, '2009-09-12', 'Die Handlungen der Spiele basieren fast ausschließlich auf denen der Goldenen und Silbernen Editionen mit einigen Elementen aus der Kristall-Edition und völlig neuen Inhalten.<br>Zu Beginn findet sich der Spieler in dem kleinen Städtchen Neuborkia wieder, in welchem er sein Abenteuer mit seinem ersten Pokémon beginnt. In der Johto-Region stehen ihm oder ihr die Starter-Pokémon Endivie, Feurigel und Karnimani zur Auswahl, von denen man eines von Prof. Lind erhält. Dieser schickt den Protagonisten zu Mr. Pokémon, um für den Professor einen Botengang zu erledigen. Dort angekommen trifft man auf Prof. Eich, welcher einem einen Pokédex schenkt. Nach dessen Erhalt kann man mit allen anderen Editionen der vierten Generation Pokémon tauschen. Auf der Rückreise nach Neuborkia gerät man in Konflikt mit einer mysteriösen Person, die sich als Silber herausstellt, der Rivale des Protagonisten. Zurück im Labor erfährt man, dass eben jener ein Pokémon gestohlen haben soll.<br>Von nun an beginnt erst die Reise des Spielers durch die Region. Eine Reise die ihn quer durch das Land führt, um Rätsel zu lösen, Kämpfe zu bestreiten, Ruinen zu erkunden und durch das erringen von Orden und den Sieg in der Pokémon-Liga ein Pokémon-Meister zu werden. Dabei trifft der Protagonist unter anderem auf den ehrgeizigen Mystiker Eusin und auf das kriminelle Team Rocket, das versucht ihren alten Anführer, Giovanni, wiederzufinden und die Kontrolle über die Pokémon-Welt zu erlangen.<br>Mit der Kanto-Region steht dem Spieler zudem die Möglichkeit offen, noch mehr Orden zu gewinnen und noch mehr von der Welt der Pokémon zu erleben.'),
(49, 'Pokémon Schwarze Edition', 4, 'game0049.php', '../img/game_covers/game0049_cover.jpg', NULL, 87, 'ポケットモンスター ブラック', 'Pokemon SW^Pokemon BW', 2, '2010-09-18', 'Das Spiel startet in Avenitia, in dem Raum des Protagonisten. In dem Raum befindet sich außerdem Cheren, ein Freund des Protagonisten. Professor Esche hat für die drei Freunde ein Geschenk hinterlassen. In dem Paket befinden sich alle drei Starter-Pokémon. Nachdem man sich für eines der drei entschieden hat, kämpft man nun gegen Bell. Nachdem man diesen Kampf erfolgreich für sich entscheiden konnte, ist im Raum ein totales Chaos ausgebrochen. Cheren heilt nun die Pokémon des Protagonisten als auch von Bell, danach startet ein Kampf zwischen dem Protagonisten und dem Rivalen Cheren. Die drei gehen anschließend nach unten, daraufhin verlassen Cheren und Bell das Haus des Protagonisten. Er führt nun ein kleines Gespräch zwischen der Mutter und dem Protagonisten.<br>Der Spieler besucht nach dem kurzen Gespräch das Haus von Bell. Dort bekommt er mit, wie sich Bell und ihr Vater streiten. Bell rennt aus dem Haus raus und folgt dem Spieler zu dem Labor von Professor Esche, wo Cheren schon geduldig wartet. In dem Labor hat der Spieler nun die Möglichkeit dem gewählten Start-Pokémon einen Spitznamen zu geben. Außerdem erhält jeder von den dreien jeweils einen Pokédex. Nachdem alle das Labor verlassen haben, kommt die Mutter des Protagonisten angerannt und gibt jedem der Freunde eine Karte.'),
(50, 'Pokémon Weiße Edition', 4, 'game0050.php', '../img/game_covers/game0050_cover.jpg', NULL, 87, 'ポケットモンスター ホワイト', 'Pokemon SW^Pokemon BW', 2, '2010-09-18', 'Das Spiel startet in Avenitia, in dem Raum des Protagonisten. In dem Raum befindet sich außerdem Cheren, ein Freund des Protagonisten. Professor Esche hat für die drei Freunde ein Geschenk hinterlassen. In dem Paket befinden sich alle drei Starter-Pokémon. Nachdem man sich für eines der drei entschieden hat, kämpft man nun gegen Bell. Nachdem man diesen Kampf erfolgreich für sich entscheiden konnte, ist im Raum ein totales Chaos ausgebrochen. Cheren heilt nun die Pokémon des Protagonisten als auch von Bell, danach startet ein Kampf zwischen dem Protagonisten und dem Rivalen Cheren. Die drei gehen anschließend nach unten, daraufhin verlassen Cheren und Bell das Haus des Protagonisten. Er führt nun ein kleines Gespräch zwischen der Mutter und dem Protagonisten.<br>Der Spieler besucht nach dem kurzen Gespräch das Haus von Bell. Dort bekommt er mit, wie sich Bell und ihr Vater streiten. Bell rennt aus dem Haus raus und folgt dem Spieler zu dem Labor von Professor Esche, wo Cheren schon geduldig wartet. In dem Labor hat der Spieler nun die Möglichkeit dem gewählten Start-Pokémon einen Spitznamen zu geben. Außerdem erhält jeder von den dreien jeweils einen Pokédex. Nachdem alle das Labor verlassen haben, kommt die Mutter des Protagonisten angerannt und gibt jedem der Freunde eine Karte.'),
(51, 'Pokémon Schwarze Edition 2', 4, 'game0051.php', '../img/game_covers/game0051_cover.jpg', NULL, 80, 'ポケットモンスター ブラック２', 'Pokemon S2W21^Pokemon B2W2', 2, '2012-06-23', 'Zum zweiten Mal nach der Pokémon Smaragd-Edition haben Pokémon Schwarze Edition 2 und Weiße Edition 2 eine völlig andere Handlung als die zugehörige Hauptedition. Die Handlung findet zwei Jahre nach der Haupthandlung der Originalspiele statt. Hierbei nimmt G-Cis als neuer Vorsitzender von Team Plasma die Rolle des Hauptantagonisten an Stelle von N ein. Das Spiel startet dieses Mal in der neu hinzugekommenen Stadt Eventura City, wo der neue Protagonist und dessen Freund und Rivale leben. Der Spieler bricht dabei auf die Pokémon-Reise auf, um ein Pokémon zurückzubekommen, welches Team Plasma seiner Schwester gestohlen hat.'),
(52, 'Pokémon Weiße Edition 2', 4, 'game0052.php', '../img/game_covers/game0052_cover.jpg', NULL, 80, 'ポケットモンスター ホワイト２', 'Pokemon S2W21^Pokemon B2W2', 2, '2012-06-23', 'Zum zweiten Mal nach der Pokémon Smaragd-Edition haben Pokémon Schwarze Edition 2 und Weiße Edition 2 eine völlig andere Handlung als die zugehörige Hauptedition. Die Handlung findet zwei Jahre nach der Haupthandlung der Originalspiele statt. Hierbei nimmt G-Cis als neuer Vorsitzender von Team Plasma die Rolle des Hauptantagonisten an Stelle von N ein. Das Spiel startet dieses Mal in der neu hinzugekommenen Stadt Eventura City, wo der neue Protagonist und dessen Freund und Rivale leben. Der Spieler bricht dabei auf die Pokémon-Reise auf, um ein Pokémon zurückzubekommen, welches Team Plasma seiner Schwester gestohlen hat.'),
(53, 'Pokémon X', 2, 'game0053.php', '../img/game_covers/game0053_cover.jpg', NULL, 87, 'ポケットモンスター Ｘ', 'Pokemon XY', 2, '2013-10-12', 'Pokémon X und Y spielen in der sternförmigen Kalos-Region, die auf Frankreich basiert. Viele Elemente wie zum Beispiel der Eiffelturm wurden in das Spiel übernommen. Die größte Stadt der Region, Illumina City, basiert hierbei auf Paris. Es ist das erste Mal, dass ein Spiel der Pokémon-Hauptserie in einer an Europa orientierten Region spielt.'),
(54, 'Pokémon Y', 2, 'game0054.php', '../img/game_covers/game0054_cover.jpg', NULL, 87, 'ポケットモンスター Ｙ', 'Pokemon XY', 2, '2013-10-12', 'Pokémon X und Y spielen in der sternförmigen Kalos-Region, die auf Frankreich basiert. Viele Elemente wie zum Beispiel der Eiffelturm wurden in das Spiel übernommen. Die größte Stadt der Region, Illumina City, basiert hierbei auf Paris. Es ist das erste Mal, dass ein Spiel der Pokémon-Hauptserie in einer an Europa orientierten Region spielt.'),
(55, 'Pokémon Omega Rubin', 2, 'game0055.php', '../img/game_covers/game0055_cover.jpg', NULL, 83, 'ポケットモンスターオメガルビー', 'Pokemon ORAS', 2, '2014-11-21', 'Pokémon Omega Rubin und Alpha Saphir spielen in der Region Hoenn, welche in der realen Welt der Umgebung Kyūshū entspricht, wobei die Karte hier um 90° gedreht wurde. Auch der Schlotberg im Herzen Hoenns wurde dem größten Vulkan Japans, dem AsoWikipedia-Icon, nachempfunden. Der Spieler startet in Wurzelheim, einem kleinen Ort im Südwesten des Landes, und bereist im Verlauf des Spiels die gesamte Region mit dem Ziel, Prachtpolis City zu erreichen und dort in der Pokémon-Liga den Titel des Champs dieser Region zu erringen. Das Routensystem Hoenns knüpft nicht an dem von Johto an und beginnt auch nicht mit einer Neuzählung wie in Einall oder Kalos, sondern startet mit der Route 101. Im Folgenden wird auf die wichtigsten Orte eingegangen, die entweder storytechnisch eine große Rolle spielen oder sich gegenüber den Vorgängern massiv verändert haben, bspw. Malvenfroh City.'),
(56, 'Pokémon Alpha Saphir', 2, 'game0056.php', '../img/game_covers/game0056_cover.jpg', NULL, 83, 'ポケットモンスターアルファサファイア', 'Pokemon ORAS', 2, '2014-11-21', 'Pokémon Omega Rubin und Alpha Saphir spielen in der Region Hoenn, welche in der realen Welt der Umgebung Kyūshū entspricht, wobei die Karte hier um 90° gedreht wurde. Auch der Schlotberg im Herzen Hoenns wurde dem größten Vulkan Japans, dem AsoWikipedia-Icon, nachempfunden. Der Spieler startet in Wurzelheim, einem kleinen Ort im Südwesten des Landes, und bereist im Verlauf des Spiels die gesamte Region mit dem Ziel, Prachtpolis City zu erreichen und dort in der Pokémon-Liga den Titel des Champs dieser Region zu erringen. Das Routensystem Hoenns knüpft nicht an dem von Johto an und beginnt auch nicht mit einer Neuzählung wie in Einall oder Kalos, sondern startet mit der Route 101. Im Folgenden wird auf die wichtigsten Orte eingegangen, die entweder storytechnisch eine große Rolle spielen oder sich gegenüber den Vorgängern massiv verändert haben, bspw. Malvenfroh City.'),
(57, 'Pokémon Sonne', 2, 'game0057.php', '../img/game_covers/game0057_cover.jpg', NULL, 87, 'ポケットモンスター サン', 'Pokemon SM', 2, '2016-11-18', 'Zu Beginn der Handlung zieht der Protagonist mit seiner Mutter aus der Kanto-Region in die Alola-Region. Von Professor Kukui erhält er eines der drei Starter-Pokémon Bauz, Flamiau und Robball, während sein Rivale Tali daraufhin eines der beiden übrig gebliebenen Starter-Pokémon wählt. Nachdem er von der Inselwanderschaft erfährt, beginnen die beiden ihr Abenteuer und stellen sich den Prüfungen der Captains und Inselkönige.'),
(58, 'Pokémon Mond', 2, 'game0058.php', '../img/game_covers/game0058_cover.jpg', NULL, 87, 'ポケットモンスター ムーン', 'Pokemon SM', 2, '2016-11-18', 'Zu Beginn der Handlung zieht der Protagonist mit seiner Mutter aus der Kanto-Region in die Alola-Region. Von Professor Kukui erhält er eines der drei Starter-Pokémon Bauz, Flamiau und Robball, während sein Rivale Tali daraufhin eines der beiden übrig gebliebenen Starter-Pokémon wählt. Nachdem er von der Inselwanderschaft erfährt, beginnen die beiden ihr Abenteuer und stellen sich den Prüfungen der Captains und Inselkönige.'),
(59, 'Pokémon Ultrasonne', 2, 'game0059.php', '../img/game_covers/game0059_cover.jpg', NULL, 84, 'ポケットモンスター ウルトラサン', 'Pokemon USUM', 2, '2017-11-17', 'Die Handlung dieser Zusatzeditionen ist stark an die von Pokémon Sonne und Mond angelehnt. Der Protagonist ist gerade mit seiner Mutter aus der Kanto-Region zur Alola-Region gezogen. Von Professor Kukui erhält er eines der drei Starter-Pokémon Bauz, Flamiau, Robball. Sein Rivale Tali wählt daraufhin einen der beiden übrig gebliebenen Starter-Pokémon. Nachdem er von der Inselwanderschaft erfährt, beginnt er sein Abenteuer und wird sich den Prüfungen der Captains und Inselkönige stellen. Auf dem Mahalo-Bergpfad nördlich von Lili’i trifft der Protagonist zum ersten Mal auf Lilly, die seine Hilfe benötigt, weil ihr Freund Wölkchen auf der Hängebrücke von wilden Habitak angegriffen wird. Als die Hängebrücke einstürzt, werden die beiden von Kapu-Riki, dem Schutzpatron von Mele-Mele, gerettet. In Hauholi City begegnet der Protagonist erstmals der Verbrecherorganisation Team Skull, die in der Alola-Region ihr Unwesen treibt. Im Anschluss kommt es zu einem Treffen mit Captain Elima und kurz darauf auch zu einem Kampf gegen ihn. Die erste Inselprüfung findet in der Vegetationshöhle statt, die die Prüfung von Elima ist. Nachdem der Protagonist diese Prüfung erfolgreich beendet, steht die erste große Inselprüfung gegen Inselkönig Hala in Lili’i an. Parallel dazu trifft der Protagonist auf das Ultraforschungsteam, die neu in der Region sind und auch mit Pokémon-Kämpfen, sowie der Inselwanderschaft noch nicht vertraut sind. Etwas hat aber ihr Interesse an der Alola-Region geweckt. Sobald der Spieler dann gegen den Inselkönig gewonnen hat, verlässt der Protagonist die Insel Mele-Mele und fährt von Hauholi City nach Kantai City auf der Insel Akala.'),
(60, 'Pokémon Ultramond', 2, 'game0060.php', '../img/game_covers/game0060_cover.jpg', NULL, 84, 'ポケットモンスター ウルトラムーン', 'Pokemon USUM', 2, '2017-11-17', 'Die Handlung dieser Zusatzeditionen ist stark an die von Pokémon Sonne und Mond angelehnt. Der Protagonist ist gerade mit seiner Mutter aus der Kanto-Region zur Alola-Region gezogen. Von Professor Kukui erhält er eines der drei Starter-Pokémon Bauz, Flamiau, Robball. Sein Rivale Tali wählt daraufhin einen der beiden übrig gebliebenen Starter-Pokémon. Nachdem er von der Inselwanderschaft erfährt, beginnt er sein Abenteuer und wird sich den Prüfungen der Captains und Inselkönige stellen. Auf dem Mahalo-Bergpfad nördlich von Lili’i trifft der Protagonist zum ersten Mal auf Lilly, die seine Hilfe benötigt, weil ihr Freund Wölkchen auf der Hängebrücke von wilden Habitak angegriffen wird. Als die Hängebrücke einstürzt, werden die beiden von Kapu-Riki, dem Schutzpatron von Mele-Mele, gerettet. In Hauholi City begegnet der Protagonist erstmals der Verbrecherorganisation Team Skull, die in der Alola-Region ihr Unwesen treibt. Im Anschluss kommt es zu einem Treffen mit Captain Elima und kurz darauf auch zu einem Kampf gegen ihn. Die erste Inselprüfung findet in der Vegetationshöhle statt, die die Prüfung von Elima ist. Nachdem der Protagonist diese Prüfung erfolgreich beendet, steht die erste große Inselprüfung gegen Inselkönig Hala in Lili’i an. Parallel dazu trifft der Protagonist auf das Ultraforschungsteam, die neu in der Region sind und auch mit Pokémon-Kämpfen, sowie der Inselwanderschaft noch nicht vertraut sind. Etwas hat aber ihr Interesse an der Alola-Region geweckt. Sobald der Spieler dann gegen den Inselkönig gewonnen hat, verlässt der Protagonist die Insel Mele-Mele und fährt von Hauholi City nach Kantai City auf der Insel Akala.'),
(61, 'Pokémon Schwert', 6, 'game0061.php', '../img/game_covers/game0061_cover.png', NULL, 80, 'ポケットモンスター ソード', 'Pokemon SwSh', 2, '2019-11-15', ' Pokémon Schwert und Schild spielen in der neuen Galar-Region, die auf GroßbritannienWikipedia-Icon basiert.[News] Diese weitläufige Region beinhaltet viele verschiedene Umgebungen, darunter Dorflandschaften, moderne Städte, weite Ebenen oder zerklüftete Berge. In der Region können sowohl neu eingeführte Pokémon der achten Generation, wie auch bisher bekannte Pokémon aus vorherigen Spielen angetroffen werden. Wie bereits in den Vorgängern Pokémon: Let’s Go, Pikachu! und Let’s Go, Evoli! sind auch in Pokémon Schwert und Schild Pokémon bereits vor Kampfbeginn im hohen Gras erkennbar, lassen sich nun jedoch wieder bekämpfen.'),
(62, 'Pokémon Schild', 6, 'game0062.php', '../img/game_covers/game0062_cover.png', NULL, 80, 'ポケットモンスター シールド', 'Pokemon SwSh', 2, '2019-11-15', ' Pokémon Schwert und Schild spielen in der neuen Galar-Region, die auf GroßbritannienWikipedia-Icon basiert.[News] Diese weitläufige Region beinhaltet viele verschiedene Umgebungen, darunter Dorflandschaften, moderne Städte, weite Ebenen oder zerklüftete Berge. In der Region können sowohl neu eingeführte Pokémon der achten Generation, wie auch bisher bekannte Pokémon aus vorherigen Spielen angetroffen werden. Wie bereits in den Vorgängern Pokémon: Let’s Go, Pikachu! und Let’s Go, Evoli! sind auch in Pokémon Schwert und Schild Pokémon bereits vor Kampfbeginn im hohen Gras erkennbar, lassen sich nun jedoch wieder bekämpfen.'),
(63, 'Pokémon Leuchtende Perle', 6, 'game0063.php', '../img/game_covers/game0063_cover.png', NULL, 73, 'ポケットモンスター シャイニングパール', 'Pokemon SDLP^Pokemon BDSP', 2, '2021-11-19', 'Zu Beginn von Pokémon Strahlender Diamant und Leuchtende Perle treffen die Protagonistin Lucia oder – je nach gewähltem Geschlecht – der Protagonist Lucius gemeinsam mit seinem Freund und späteren Rivalen Barry auf Professor Eibe mit seinem Assistenten (den Protagonisten, den man nicht gewählt hat). Während der Professor die beiden Rivalen in seine Forschung von Pokémon-Entwicklungen einbindet, treffen diese auch vermehrt auf Team Galaktik und deren Boss Zyrus, welcher seine eigenen Ziele verfolgt.'),
(64, 'WarioWare, Inc.: Mega Microgame$!', 10, 'game0064.php', '../img/game_covers/game0064_cover.jpg', NULL, 89, 'メイド イン ワリオ', NULL, 6, '2003-03-21', 'WarioWare, Inc.: Minigame Mania ist der erste Teil der WarioWare-Serie. Dieses Spiel besteht aus 215 Mikrospielen, die aber meistens nur 5 Sekunden dauern.<br>Wario sieht am Anfang des Spiels eine Werbung im Fernsehen, in der für ein Spiel Werbung gemacht wird. Während er die Werbung sieht kommt er auf die Idee selber ein Spiel zu machen. Daraufhin heuert er seine Freunde an die ihm helfen sollen.'),
(65, 'WarioWare, Inc.: Mega Party Game$!', 3, 'game0065.php', '../img/game_covers/game0065_cover.jpg', NULL, 76, 'あつまれ!!メイド イン ワリオ', NULL, 6, '2003-10-17', 'WarioWare, Inc.: Mega Party Games$! wurde am 3. September 2004 in Europa und Australien auf den Markt gebracht. Dieses Spiel ist der Nachfolger von dem GBA-Klassiker WarioWare, Inc.: Minigame Mania und der Vorgänger von WarioWare: Twisted!, ebenfalls für den GBA. Es stellt das zweite Spiel der WarioWare-Serie dar.'),
(66, 'WarioWare: Twisted!', 10, 'game0066.php', '../img/game_covers/game0066_cover.jpg', NULL, 88, 'まわるメイド イン ワリオ', NULL, 6, '2004-10-14', 'WarioWare: Twisted! ist ein nie in Europa veröffentlichtes Spiel der WarioWare-Serie. Es erschien jedoch in Japan 2004, in Australien und Nord-Amerika im Jahre 2005.<br>In diesem Spiel kann man Preise sammeln, durch erfolgreiches Abschließen eines Mikrospiels.'),
(67, 'WarioWare: Touched!', 4, 'game0067.php', '../img/game_covers/game0067_cover.png', NULL, 81, 'さわるメイド イン ワリオ', NULL, 6, '2004-12-02', 'WarioWare: Touched ist ein am 11. März 2005, für den Nintendo DS, erschienenes Videospiel und der vierte Teil der WarioWare-Serie. Im Spiel selbst muss man, ganz simpel, Mikrospiele bestehen.'),
(68, 'WarioWare: Smooth Moves', 5, 'game0068.php', '../img/game_covers/game0068_cover.png', NULL, 83, 'おどるメイド イン ワリオ', NULL, 6, '2006-12-02', 'Das am 12. Januar 2007 in Europa erschienene WarioWare: Smooth Moves ist eines der wenigen für die Nintendo Wii veröffentlichten Spiele, bei dem verschiedene Variationen von der Haltung der Fernbedienung benutzt werden. Am 20. Mai 2011 erschien das Spiel als Nintendo Select.'),
(69, 'WarioWare: Snapped!', 4, 'game0069.php', '../img/game_covers/game0069_cover.png', NULL, 53, 'うつすメイド イン ワリオ', NULL, 6, '2008-12-24', 'Das Spiel besteht darin, sich den Posen, welche gezezeigt werden, anzupassen. In diesem Spiel wird auch die Nintendo DSi Kamera benutzt. Es gibt vier verschiedene Spielmodi bzw. vier Charaktere, welche die Spiele leiten: Wario, Jimmy P., Mona und Kat und Ana. Bei jedem gibt es fünf Spiele, die es zu bestehen gibt. Auch hat jeder Charakter am Ende des Spiels ein kleines Video für den Spieler, wo man ihn normal oder in kleinen Filmen sieht. Bei Kat und Ana kann man auch zu zweit spielen.'),
(70, 'WarioWare: D.I.Y.', 4, 'game0070.php', '../img/game_covers/game0070_cover.png', NULL, 82, 'メイド イン 俺', NULL, 6, '2009-04-29', 'WarioWare: D.I.Y. (Do It Yourself) ist ein Spiel der WarioWare-Serie für den Nintendo DS. Erstmals wurde das Spiel auf einer Nintendo-Pressekonferenz am 2. Oktober 2008 erwähnt. Unter dem Namen メイド イン 俺 (Meido in Ore) ist es am 29. April 2009 in Japan erschienen, am 28. März 2010 in Nordamerika und am 30. April in Europa erschien es unter dem Namen WarioWare: D.I.Y..'),
(71, 'WarioWare: D.I.Y. Showcase', 5, 'game0071.php', '../img/game_covers/game0071_cover.webp', NULL, 73, 'あそぶメイド イン 俺', NULL, 6, '2009-04-29', 'Das Spiel WarioWare: D.I.Y. Showcase, in Japan als \"Asobu Made in Ore\" bekannt, wurde am 29. April 2009 in Japan, am 29. März 2010 in USA und am 30. April 2010 in Europa veröffentlicht. Es ist ein Spiel der WarioWare-Serie. Man kann es für 800 Wii-Points (ca. 8€) im Wii-Shop-Kanal erwerben.<br>Das Spiel dient dazu, seine über WarioWare: D.I.Y. auf dem Nintendo DS kreierten Minispiele und sonstige gebastelten Sachen - alleine oder mit anderen zusammen im Mehrspielermodues - auf der Wii zu spielen und erleben. Zusätzlich enthält das Spiel noch einige Bonusspiele und einen Zugriff auf die Nintendo Wi-Fi Connection um mit anderen Spielern die auf dem DS kreierten Werke zu tauschen. Das Spiel dient in erster Linie als Zusatz zur DS-Version, man kann es aber auch ohne die DS-Version (beschränkt) gebrauchen. In diesem Spiel muss man Aufgaben lösen, wobei das Spiel nach jedem fünften Minispiel immer schneller wird.'),
(72, 'Game & Wario', 9, 'game0072.php', '../img/game_covers/game0072_cover.png', NULL, 61, 'GAME & WARIO', NULL, 6, '2013-03-28', 'Game & Wario ist ein für die Wii U am 28. Juni 2013 erschienenes Spiel und der neueste Teil der WarioWare-Serie. Dieses Mal sind es allerdings keine Mikrospiele, sondern Minispiele.<br>Wario guckt Fernsehen in seinem Haus . Er wechselt die Kanäle, bis er eine Berichterstattung über eine neu veröffentlichten Konsole, dass einen Controller mit einem Bildschirm enthält (Parodie von Wii U) bemerkt. Um eine Menge Geld zu machen, entscheidet sich Wario, Spiele für die Konsole zu erstellen und beginnt die Arbeit an seinem Computer. Seine Freunde in Diamond City hören auch die Nachrichten über die Konsole und zeigen Interesse an der Entwicklung von Computerspielen und entwickeln ebenfalls Spiele.'),
(73, 'WarioWare Gold', 2, 'game0073.php', '../img/game_covers/game0073_cover.jpg', NULL, 78, 'メイド イン ワリオ　ゴージャス', NULL, 6, '2018-07-27', 'WarioWare Gold is an installment in the WarioWare series, released in late 2018 as the eighth entry in the series as well as the only entry in the series for the Nintendo 3DS family. The title is a compilation of microgames throughout the franchise, featuring several new ones as well. Many returning microgames have been updated to provide new control schemes, scenarios and visuals similar to Rhythm Heaven Megamix, another game developed by the same team as the WarioWare series on Nintendo 3DS. WarioWare Gold features a total of 316 microgames, the largest collection in any WarioWare game to date, a record previously held by WarioWare: Twisted! for the Game Boy Advance.'),
(74, 'WarioWare: Get It Together!', 6, 'game0074.php', '../img/game_covers/game0074_cover.png', NULL, 76, 'おすそわける　メイドインワリオ', NULL, 6, '2021-09-10', 'WarioWare: Get It Together! is the ninth installment in the WarioWare series, released worldwide on September 10, 2021 for the Nintendo Switch. As in previous WarioWare games, the main gameplay involves the player playing various microgames in succession, though in this game, the player controls one of the various characters from the series within the microgames, with each character possessing a unique trait and ability, allowing the player to approach and complete microgames in different ways. Another feature new to the series is the ability to play microgames in simultaneous multiplayer. Over 200 microgames appear in the game. Before the release of the actual game, a free demo of the game was released on the Nintendo eShop on August 19, 2021.'),
(75, 'Phoenix Wright: Ace Attorney', 10, 'game0075.php', '../img/game_covers/game0075_cover.png', NULL, 81, '逆転裁判', 'Ace Attorney 1^PW:AA', 8, '2001-10-12', 'Phoenix Wright: Ace Attorney ist das erste Spiel der Ace Attorney-Reihe der Firma Capcom, bei den fiktionale Gerichtverhandlungen simuliert werden. Ursprünglich war es ein Spiel für denn Game Boy Advance unter den Titel Ace Attorney (Gyakuten Saiban). Einen Monat später wurde es als Spiel für den Nintendo DS veröffentlicht unter seinem jetzigen Titel. Der Spieler schlüpft in die Rolle des jungen Strafverteidigers Phoenix Wright, der sein Studium vor Kurzem beendet hatte.'),
(76, 'Phoenix Wright: Ace Attorney - Justice for All', 10, 'game0076.php', '../img/game_covers/game0076_cover.png', NULL, 76, '逆転裁判 2', 'Ace Attorney 2^PW:AA-JFA', 8, '2002-10-18', 'Phoenix Wright: Ace Attorney - Justice For All (dt. \"Gerechtigkeit für Alle\") ist das zweite Spiel der Ace Attorney-Reihe und wurde 2010 auf dem Markt gebracht. Die Handlung spielt ein Jahr nach Phoenix Wright: Ace Attorney.'),
(77, 'Phoenix Wright: Ace Attorney - Trials and Tribulations', 10, 'game0077.php', '../img/game_covers/game0077_cover.png', NULL, 81, '逆転裁判 3', 'Ace Attorney 3^PW:AA-TT', 8, '2004-01-23', 'Phoenix Wright: Ace Attorney: Trials and Tribulations (dt. \"Phoenix Wright: Ass-Anwalt: Irurungen und Wirrungen\") ist das dritte Spiel der Ace Attorney-Reihe. Neben den drei Episoden, in denen Phoenix Wright dem mysteriösen neuen Staatsanwalt Godot vor Gericht gegenübersteht, beinhaltet das Spiel auch die ersten beiden Fälle von Mia Fey.'),
(78, 'Apollo Justice: Ace Attorney', 4, 'game0078.php', '../img/game_covers/game0078_cover.png', NULL, 77, '逆転裁判 4', 'Ace Attorney 4^AJ:AA', 8, '2007-04-12', 'Apollo Justice: Ace Attorney ist das vierte Spiel der Ace Attorney-Reihe und ist benannt nach seinem neuen Hauptprotagonisten Apollo Justice, ein \"frischgebackener\" Strafverteidiger. Diese Story spielt sieben Jahre nach Phoenix Wright: Ace Attorney Trials and Tribulations. '),
(79, 'Phoenix Wright: Ace Attorney - Dual Destinies', 2, 'game0079.php', '../img/game_covers/game0079_cover.png', NULL, 85, '逆転裁判 5', 'Ace Attorney 5^PW:AA-DD', 8, '2013-07-25', 'Phoenix Wright: Ace Attorney - Dual Destinies (逆転裁判 5 Gyakuten Saiban 5, dt. \"Kehrtwende im Gericht 5\") ist das fünfte Spiel der Hauptreihe von Ace Attorney und das achte Spiel des ganzen Frachises. Es ist außerdem das erste Spiel der Hauptreihe, welches auf dem Nintendo 3DS erhältlich ist.'),
(80, 'Phoenix Wright: Ace Attorney - Spirit of Justice', 2, 'game0080.php', '../img/game_covers/game0080_cover.png', NULL, 81, '逆転裁判 6', 'Ace Attorney 6^PW:AA-SoJ', 8, '2016-06-09', 'Anders als bei den vorherigen Spielen findet diese Handlung an zwei verschiedenen Schauplätzen statt: Zum Einen im Königreich von Khura\'in, wo Phoenix Wright und Maya Fey, die dort ihr Training absolviert, mit dem fremden Rechtssystem konfrontiert werden. Dieses System hat den \"Defence Culpability Act\" (dt. \"Verteidigungs-Strafbarkeits-Akt\") eingeführt, durch den der Verteidiger eines verurteilten Täters ebenfalls bestraft wird. Die Schuldigen werden durch Séancen bestimmt. Währenddessen halten Apollo Justice und Athena Cykes die Stellung in Los Angeles , die allerdings feststellen müssen, dass die Alles-Agentur Wright in einer tiefen Krise steckt.'),
(81, 'Ace Attorney Investigations: Miles Edgeworth', 4, 'game0081.php', '../img/game_covers/game0081_cover.png', NULL, 78, '逆転検事 ', NULL, 8, '2009-05-28', 'Ace Attorney Investigations: Miles Edgeworth ist das fünfte Spiel des Franchises Ace Attorney, mit Staatsanwalt Miles Edgeworth in der Hauptrolle. Es handelt sich um einen Ableger der Ace-Attorney-Hauptreihe, der Phoenix Wright weder als Haupt- noch als Nebencharakter enthält. '),
(82, 'Gyakuten Kenji 2', 4, 'game0082.php', '../img/game_covers/game0082_cover.png', NULL, 79, '逆転検事 2', 'Ace Attorney Investigations: Miles Edgeworth 2', 8, '2011-02-03', 'Gyakuten Kenji 2 (逆転検事 2 Gyakuten Kenji 2, lit. \"Turnabout Prosecutor 2\"), also referred to as Ace Attorney Investigations 2 by Capcom staff, is the sequel to Gyakuten Kenji (known as Ace Attorney Investigations: Miles Edgeworth in English) and the sixth game in the Ace Attorney series of text adventure video games. Prosecutor Miles Edgeworth, Detective Dick Gumshoe, and self-proclaimed \"Great Thief\" Kay Faraday reprise their roles as main characters in the game. Motohide Eshiro, Takeshi Yamazaki, Minae Matsukawa, and Noriyuki Iwadare also reprised their roles as producer, director, art director, and soundtrack composer, respectively.'),
(83, 'The Great Ace Attorney: Adventures', 2, 'game0083.php', '../img/game_covers/game0083_cover.png', NULL, 86, '大逆転裁判 -成歩堂龍ノ介の冒險-', NULL, 8, '2015-07-09', 'Im Gegensatz zu den anderen Spielen, welche in der Zukunft angesiedelt sind, spielt dieser Ableger zu Beginn des 20. Jahrhundert in der Meiji-Zeit in Japan. Zu dieser Zeit ist der Beruf des Strafverteidigers ein neues Konzept. Die Hauptrolle in diesem Spiel übernimmt Phoenix Wrights Vorfahre Ryunosuke Naruhodo und sein weiblicher Rechtsbeistand Susato Mikotoba. Durch ein Austauschprogramm reisen die beiden ins Vereinigte Königreich und begegnen sowohl den Meisterdetektiv Herlock Sholmes, als auch dessen Assistentin Iris Wilson.'),
(84, 'The Great Ace Attorney 2: Resolve', 2, 'game0084.php', '../img/game_covers/game0084_cover.png', NULL, 86, '大逆転裁判２ -成歩堂龍ノ介の覺悟-', NULL, 8, '2017-08-03', 'Resolve spielt kurz nach seinem Vorgänger ebenfalls in der japanischen Meiji-Periode. Susato Mikotoba, die im letzten Spiel nach Japan zurückgekehrt war, trifft in Großbritannien wieder auf Ryunosuke Naruhodo. Es wurde auch angedeutet, dass die offenen Fragen aus Adventures nun endlich beantwortet werden.'),
(85, 'Wario Land: Super Mario Land 3', 12, 'game0085.php', '../img/game_covers/game0085_cover.png', NULL, 79, 'スーパーマリオランド3 ワリオランド', 'Wario Land 1', 9, '1994-01-21', 'Wario Land: Super Mario Land 3 ist ein Jump \'n\' Run und erschien 1994 für den Game Boy. Es bildet sowohl den Abschluss der Super Mario Land-Serie als auch den Beginn der nachfolgenden Wario Land-Serie. Der Protagonist und zu steuernde Charakter ist Marios Erzrivale Wario, der erstmals überhaupt spielbar ist. Obwohl Mario nicht über einen Gastauftritt hinauskommt, trägt das Spiel den Untertitel Super Mario Land 3, was dadurch zu erklären ist, dass Wario im Vorgänger aus Marios Schloss geworfen wurde und er nun auf der Suche nach einer neuen Herberge ist.'),
(86, 'Virtual Boy Wario Land', 28, 'game0086.php', '../img/game_covers/game0086_cover.png', NULL, 0, 'バーチャルボーイワリオランド アワゾンの秘宝', 'VB Wario Land', 9, '1995-11-27', 'Virtual Boy Wario Land ist am 1. November 1995 in den USA und am 1. Dezember 1995 in Japan für den Virtual Boy erschienen. Dies ist auch eines der wenigen Spiele, das zuerst in der USA und erst später veröffentlicht wurde. Es ist der zweite der Teil der Wario Land-Serie. Eigentlich sollte das Spiel Wario Cruise genannt werden, dies jedoch wurde kurz vor der Veröffentlichung geändert.<br>Wario landet irgendwann mit seinem Flugzeug auf dem Flugplatz vom Awazonas (abgeleitet von Amazonas) und sieht wie zwei Mask-Guys (nicht Shy Guy) eine Truhe hinter einen Wasserfall befördern. Diese will er unbedingt stehlen. Später findet er sich in einem Labyrinth wieder und versucht alles um an diese Truhe zu kommen.'),
(87, 'Wario Land II', 12, 'game0087.php', '../img/game_covers/game0087_cover.png', NULL, 90, 'ワリオランド2 盗まれた財宝', 'Wario Land 2', 9, '1998-10-21', 'Wario Land II wurde, wie schon sein Vorgänger, für den Game Boy veröffentlicht, allerdings kann man es auch in Farbe auf dem Game Boy Color spielen. Wario lebt in seinem Schloss, das er sich nach seinem letztem Abenteuer (Wario Land) verdient hat.<br>Kapitän Kandis stiehlt Wario seinen Schatz, um sich für ihre Niederlage in Wario Land: Super Mario Land 3 zu rächen. Wario entdeckt den Diebstahl und macht sich auf die Verfolgungsjagd.'),
(88, 'Wario Land 3', 12, 'game0088.php', '../img/game_covers/game0088_cover.png', NULL, 91, 'ワリオランド3 不思議なオルゴール', NULL, 9, '2000-03-21', 'Wario Land 3 wurde im März 2000 für den Game Boy Color veröffentlicht. Auch hier kann Wario sich wie im Vorgänger Wario Land II in verschiedene Formen verwandeln.<br>Wario machte mit seinem Privatflugzeug einen Ausflug, bis der Motor ausfiel und die Maschine in einem Wald abstürzte. Nachdem Wario aus seiner Bewusstlosigkeit aufwachte, suchte er den ganzen Tag vergeblich nach einem Weg nach draußen. Schließlich stolperte er in eine Höhle, in der auf einem Sockel eine einsame Spieldose lag. Wario versuchte, sie wieder zum Laufen zu bringen, als er plötzlich in die Spieluhr eingesogen wurde!'),
(89, 'Wario Land 4', 10, 'game0089.php', '../img/game_covers/game0089_cover.png', NULL, 88, 'ワリオランドアドバンス ヨーキのお宝', NULL, 9, '2001-08-21', 'Bei Wario Land 4 (ワリオランドアドバンス ヨーキのお宝 Wario Rando Adobansu: Yōki no Otakara in Japan, zu deutsch Wario Land Advance: Der Schatz der Goldenen Diva) handelt es sich um ein größtenteils im Jahr 2001 für den Game Boy Advance veröffentlichtes Jump \'n\' Run. Es erschien als vierter Teil der Hauptspiele der Wario Land-Serie, was als Namensgeber des Spiels gilt, sowie als fünfter Teil der gesamten Serie, da Virtual Boy Wario Land aufgrund des mangelnden Erfolgs des Virtual Boy nicht zu den Hauptspielen gezählt wird. Der Vorgänger, Wario Land 3, erschien bereits ein Jahr zuvor, während der Nachfolger, Wario Land: The Shake Dimension, erst sieben Jahre später veröffentlicht wurde. Somit galt Wario Land 4 sieben Jahre lang als aktuellster Titel der Wario Land-Serie. Als sich gut verkaufendes und mit überwiegend positiven Kritiken belohntes Spiel, erschien zu Wario Land 4 im Jahr 2002 ein gleichnamiges Buch, das das Abenteuer des Spiels nacherzählt. Zudem wurde es im Jahre 2011 im Rahmen des Nintendo-3DS-Botschafter-Programms neben 19 weiteren Spielen zum kostenlosen Download für jenes System bereitgestellt.'),
(90, 'Wario Land: The Shake Dimension', 5, 'game0090.php', '../img/game_covers/game0090_cover.png', NULL, 78, 'ワリオランドシェイク', 'Wario Land: Shake It!', 9, '2008-07-24', 'Wario Land: The Shake Dimension (dt. Wario Land: Die Schütteldimension; sinngemäß Wario Land: Das Reich des Rüttelns; in NTSC-Regionen Wario Land: Shake It!; in Japan Wario Land Shake) ist ein in Japan im Juli 2008 und in allen anderen Ländern im September 2008 für Nintendo Wii veröffentlichtes Jump \'n\' Run. Es wurde vom japanischen Unternehmen Good-Feel[2], das von einem ehemaligen Mitarbeiter Nintendos ins Leben gerufen wurde, entwickelt und von Nintendo herausgegeben. Es erschien als sechster und bislang neuester Teil der Wario Land-Serie und ist der erste Teil der Serie, der auf einer stationären Konsole erschien. Der Vorgänger, Wario Land 4, erschien ganze sieben Jahre zuvor, weswegen lange anzunehmen war, dass die Wario Land-Serie nicht fortgeführt wird, doch die überraschende Veröffentlichung von Wario Land: The Shake Dimension belebte die Serie wieder.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_developer`
--

CREATE TABLE `game_developer` (
  `no` int(11) NOT NULL,
  `refGame` int(11) DEFAULT NULL,
  `refDeveloper` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `game_developer`
--

INSERT INTO `game_developer` (`no`, `refGame`, `refDeveloper`) VALUES
(1, 1, 4),
(2, 2, 5),
(4, 3, 4),
(5, 4, 6),
(6, 5, 4),
(7, 6, 6),
(8, 8, 7),
(9, 9, 8),
(10, 9, 9),
(11, 10, 4),
(12, 11, 5),
(13, 12, 4),
(14, 13, 4),
(15, 14, 4),
(16, 15, 4),
(17, 16, 5),
(18, 17, 10),
(19, 18, 10),
(20, 19, 10),
(21, 20, 4),
(22, 21, 4),
(23, 22, 4),
(24, 23, 10),
(25, 24, 4),
(26, 25, 4),
(27, 26, 4),
(28, 27, 4),
(29, 28, 4),
(30, 29, 4),
(31, 30, 4),
(32, 30, 11),
(33, 31, 4),
(34, 31, 11),
(35, 32, 13),
(36, 33, 4),
(37, 33, 5),
(38, 33, 14),
(39, 34, 6),
(40, 35, 6),
(41, 36, 6),
(42, 37, 6),
(43, 38, 6),
(44, 39, 6),
(45, 40, 6),
(46, 41, 6),
(47, 42, 6),
(48, 43, 6),
(49, 44, 6),
(50, 45, 6),
(51, 46, 6),
(52, 47, 6),
(53, 48, 6),
(54, 49, 6),
(55, 50, 6),
(56, 51, 6),
(57, 52, 6),
(58, 53, 6),
(59, 54, 6),
(60, 55, 6),
(61, 56, 6),
(62, 57, 6),
(63, 58, 6),
(64, 59, 6),
(65, 60, 6),
(66, 61, 6),
(67, 62, 6),
(68, 63, 7),
(69, 64, 2),
(70, 65, 2),
(71, 65, 15),
(72, 66, 15),
(74, 67, 15),
(78, 68, 15),
(79, 69, 15),
(80, 70, 15),
(81, 71, 15),
(82, 72, 15),
(83, 73, 8),
(84, 73, 15),
(85, 73, 17),
(86, 74, 15),
(87, 75, 10),
(88, 76, 10),
(89, 77, 10),
(90, 78, 10),
(91, 79, 10),
(92, 80, 10),
(93, 81, 10),
(94, 82, 10),
(95, 83, 10),
(96, 84, 10),
(97, 85, 2),
(98, 86, 2),
(99, 87, 2),
(100, 88, 2),
(101, 89, 2),
(102, 90, 18);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_genre`
--

CREATE TABLE `game_genre` (
  `no` int(11) NOT NULL,
  `refGame` int(11) DEFAULT NULL,
  `refGenre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `game_genre`
--

INSERT INTO `game_genre` (`no`, `refGame`, `refGenre`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 3),
(6, 6, 4),
(7, 8, 2),
(8, 9, 6),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 31, 5),
(33, 32, 4),
(34, 33, 1),
(35, 34, 2),
(36, 35, 2),
(37, 36, 2),
(38, 37, 2),
(39, 38, 2),
(40, 39, 2),
(41, 40, 2),
(42, 41, 2),
(43, 42, 2),
(44, 43, 2),
(45, 44, 2),
(46, 45, 2),
(47, 46, 2),
(48, 47, 2),
(49, 48, 2),
(50, 49, 2),
(51, 50, 2),
(52, 51, 2),
(53, 52, 2),
(54, 53, 2),
(55, 54, 2),
(56, 55, 2),
(57, 56, 2),
(58, 57, 2),
(59, 58, 2),
(60, 59, 2),
(61, 60, 2),
(62, 61, 2),
(63, 62, 2),
(64, 63, 2),
(65, 64, 8),
(66, 65, 8),
(67, 65, 9),
(68, 64, 10),
(69, 65, 10),
(70, 66, 10),
(71, 66, 8),
(72, 67, 8),
(73, 67, 10),
(74, 68, 8),
(75, 68, 9),
(76, 68, 10),
(77, 69, 8),
(78, 69, 10),
(79, 70, 8),
(80, 70, 10),
(81, 70, 11),
(82, 71, 8),
(83, 71, 10),
(84, 71, 11),
(85, 72, 8),
(86, 72, 10),
(87, 72, 9),
(88, 73, 8),
(89, 73, 10),
(90, 74, 8),
(91, 74, 9),
(92, 74, 10),
(93, 75, 13),
(94, 75, 12),
(95, 76, 12),
(96, 76, 13),
(97, 77, 12),
(98, 77, 13),
(99, 78, 12),
(100, 78, 13),
(101, 79, 12),
(102, 79, 13),
(103, 80, 12),
(104, 80, 13),
(105, 81, 12),
(106, 81, 13),
(107, 82, 12),
(108, 82, 13),
(109, 83, 12),
(110, 83, 13),
(111, 84, 12),
(112, 84, 13),
(113, 85, 14),
(114, 86, 14),
(115, 87, 14),
(116, 88, 14),
(118, 88, 6),
(119, 89, 14),
(120, 90, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_mode`
--

CREATE TABLE `game_mode` (
  `no` int(11) NOT NULL,
  `refGame` int(11) DEFAULT NULL,
  `refMode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `game_mode`
--

INSERT INTO `game_mode` (`no`, `refGame`, `refMode`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 4, 2),
(6, 5, 1),
(7, 5, 2),
(8, 6, 1),
(9, 8, 1),
(10, 8, 2),
(11, 9, 1),
(12, 10, 1),
(13, 11, 1),
(14, 12, 1),
(15, 13, 1),
(16, 14, 1),
(17, 15, 1),
(18, 16, 1),
(19, 17, 1),
(20, 18, 1),
(21, 19, 2),
(22, 20, 1),
(23, 21, 1),
(24, 22, 1),
(25, 22, 2),
(26, 23, 1),
(27, 24, 1),
(28, 25, 1),
(29, 26, 1),
(30, 26, 2),
(31, 27, 1),
(32, 27, 2),
(33, 28, 1),
(34, 29, 1),
(35, 30, 1),
(36, 31, 1),
(37, 32, 1),
(38, 32, 2),
(39, 33, 2),
(40, 33, 1),
(41, 34, 1),
(42, 35, 2),
(43, 36, 1),
(44, 36, 2),
(45, 37, 1),
(46, 37, 2),
(47, 38, 1),
(48, 38, 2),
(49, 39, 1),
(50, 39, 2),
(51, 40, 1),
(52, 40, 2),
(53, 41, 1),
(54, 41, 2),
(55, 42, 1),
(56, 42, 2),
(57, 43, 1),
(58, 43, 2),
(59, 44, 1),
(60, 44, 2),
(61, 45, 1),
(62, 45, 2),
(63, 46, 1),
(64, 46, 2),
(65, 47, 1),
(66, 47, 2),
(67, 48, 1),
(68, 48, 2),
(69, 49, 1),
(70, 49, 2),
(71, 50, 1),
(72, 50, 2),
(73, 51, 1),
(74, 51, 2),
(75, 52, 1),
(76, 52, 2),
(77, 53, 1),
(78, 53, 2),
(79, 54, 1),
(80, 54, 2),
(81, 55, 1),
(82, 55, 2),
(83, 56, 1),
(84, 56, 2),
(85, 57, 1),
(86, 57, 2),
(87, 58, 1),
(88, 58, 2),
(89, 59, 1),
(90, 59, 2),
(91, 60, 1),
(92, 60, 2),
(93, 61, 1),
(94, 61, 2),
(95, 62, 1),
(96, 62, 2),
(97, 63, 1),
(98, 63, 2),
(99, 64, 1),
(100, 64, 2),
(101, 65, 1),
(102, 65, 2),
(103, 66, 1),
(104, 67, 1),
(105, 68, 1),
(106, 68, 2),
(107, 69, 1),
(108, 69, 2),
(109, 70, 1),
(110, 71, 1),
(111, 71, 2),
(112, 72, 1),
(113, 72, 2),
(114, 73, 1),
(115, 74, 1),
(116, 74, 2),
(117, 75, 1),
(118, 76, 1),
(119, 77, 1),
(120, 78, 1),
(121, 79, 1),
(122, 80, 1),
(123, 81, 1),
(124, 82, 1),
(125, 83, 1),
(126, 84, 1),
(127, 85, 1),
(128, 86, 1),
(129, 87, 1),
(130, 88, 1),
(131, 89, 1),
(132, 90, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_publisher`
--

CREATE TABLE `game_publisher` (
  `no` int(11) NOT NULL,
  `refGame` int(11) DEFAULT NULL,
  `refPublisher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `game_publisher`
--

INSERT INTO `game_publisher` (`no`, `refGame`, `refPublisher`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 21, 1),
(21, 22, 1),
(22, 23, 1),
(23, 24, 1),
(24, 25, 1),
(25, 26, 1),
(26, 27, 1),
(27, 28, 1),
(28, 29, 1),
(29, 30, 1),
(30, 31, 1),
(31, 32, 1),
(32, 32, 2),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(39, 39, 1),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 1),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 1),
(53, 53, 1),
(54, 54, 1),
(61, 55, 1),
(62, 56, 1),
(63, 57, 1),
(64, 57, 3),
(65, 58, 1),
(66, 58, 3),
(67, 59, 1),
(68, 59, 3),
(69, 60, 1),
(70, 60, 3),
(71, 61, 1),
(72, 62, 1),
(73, 63, 1),
(74, 64, 1),
(75, 65, 1),
(76, 66, 1),
(77, 67, 1),
(78, 68, 1),
(79, 69, 1),
(80, 70, 1),
(81, 71, 1),
(82, 72, 1),
(83, 73, 1),
(84, 74, 1),
(85, 75, 1),
(86, 76, 1),
(87, 77, 1),
(88, 78, 1),
(89, 79, 1),
(90, 80, 1),
(91, 81, 1),
(92, 82, 1),
(93, 83, 1),
(94, 84, 1),
(95, 85, 1),
(96, 86, 1),
(97, 87, 1),
(98, 88, 1),
(99, 89, 1),
(100, 90, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `genNo` int(11) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`genNo`, `name`) VALUES
(1, 'Action-Adventure'),
(2, 'RPG'),
(3, 'Sport'),
(4, 'Action-RPG'),
(5, 'Open-World'),
(6, 'Metroid-Vania'),
(8, 'Action'),
(9, 'Party'),
(10, 'Puzzle'),
(11, 'Sandbox'),
(12, 'Adventure'),
(13, 'Visual-Novel'),
(14, '2D Platformer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `list`
--

CREATE TABLE `list` (
  `entryNo` int(11) NOT NULL,
  `refGame` int(11) NOT NULL,
  `refStatus` int(11) NOT NULL,
  `refUser` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `list`
--

INSERT INTO `list` (`entryNo`, `refGame`, `refStatus`, `refUser`, `score`) VALUES
(17, 6, 6, 1, 9),
(18, 3, 3, 1, 10),
(19, 55, 2, 1, NULL),
(20, 55, 2, 1, NULL),
(21, 40, 6, 1, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mode`
--

CREATE TABLE `mode` (
  `modeNo` int(11) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mode`
--

INSERT INTO `mode` (`modeNo`, `name`) VALUES
(1, 'Singleplayer'),
(2, 'Local-Multiplayer'),
(3, 'Online-Multiplayer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `platform`
--

CREATE TABLE `platform` (
  `pNo` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `alias` tinytext DEFAULT NULL,
  `consoleType` int(11) DEFAULT NULL,
  `developer` int(11) DEFAULT NULL,
  `generation` int(11) DEFAULT NULL,
  `imgLogo` tinytext DEFAULT NULL,
  `imgPhoto` tinytext DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `media` tinytext DEFAULT NULL,
  `millUnitsSold` double DEFAULT NULL,
  `predecessor` int(11) DEFAULT NULL,
  `successor` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `synopsis` mediumtext DEFAULT NULL,
  `pagePath` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `platform`
--

INSERT INTO `platform` (`pNo`, `name`, `alias`, `consoleType`, `developer`, `generation`, `imgLogo`, `imgPhoto`, `manufacturer`, `media`, `millUnitsSold`, `predecessor`, `successor`, `releaseDate`, `synopsis`, `pagePath`) VALUES
(1, 'Nintendo 64', 'N64', 1, 1, 5, '../img/platform_logos/platform001_logo.png', '../img/platform_photos/platform001_photo.jpg', 1, 'Nintendo 64 Game Pak', 32.93, 28, 3, '1996-06-23', 'Das[3] Nintendo 64 (Eigenschreibweise: NINTENDO64, offiziell abgekürzt als N64,[3] jap.: ニンテンドウ64, Hepburn: Nintendō Rokujūyon), benannt nach seinem 64-Bit-Hauptprozessor, ist die dritte weltweit veröffentlichte stationäre Spielkonsole von Nintendo. Sie ist der Nachfolger des Super Nintendo Entertainment System (SNES) und die erste Spielkonsole mit einer 64-Bit-Architektur. Veröffentlicht wurde sie erstmals am 23. Juni 1996 in Japan, am 29. September 1996 in Nordamerika und am 1. März 1997 in Europa. Als Spielkonsole konkurrierte sie hauptsächlich mit der PlayStation von Sony und dem Sega Saturn, konnte aber bezüglich der Verkaufszahlen jedoch nur die letztere Konsole schlagen.<br>In Deutschland kam die Konsole zu einem Preis von 399 Deutsche Mark auf den Markt, wurde jedoch nach acht Wochen auf 299 Deutsche Mark reduziert. Zum Verkaufsstart waren in Deutschland lediglich die beiden Launch-Titel Super Mario 64 und Pilotwings 64 erhältlich, wenige Wochen später folgten weitere Spiele.<br>Nintendo bewarb das Gerät zur Veröffentlichung als schnellstes Videospielsystem auf dem Markt. Besonders hervorgehoben wurde dabei die 64-Bit-Architektur des Prozessors, die Konkurrenzkonsolen PlayStation und Sega Saturn arbeiteten nur mit 32 Bit. Genutzt wurden der 64-Bit Modus in der Praxis jedoch kaum, da die Konsole nur 4 MB Arbeitsspeicher hatte (mit 32-Bit lassen sich 4 GB adressieren) und der Bus nicht breit genug war. Zudem wurde die für 3D-Grafik übliche Fließkommazahl mit 32-Bit dargestellt und Nebenwirkungen wie 8-Byte (statt 4-Byte) große Zeiger hätten die Programmierung erschwert. Der mit 93,75 MHz getaktete Prozessor konnte 125 Millionen Instruktionen pro Sekunde ausführen und war der PlayStation, die nur 30 MIPS verarbeiten konnte, überlegen.', 'platform001.php'),
(2, 'Nintendo 3DS', NULL, 2, 2, 8, '../img/platform_logos/platform002_logo.png', '../img/platform_photos/platform002_photo.png', 1, 'Nintendo 3DS Game Card', 75.94, 4, NULL, '2011-02-26', 'Wie schon sein Vorgänger (der Nintendo DS) bietet der Nintendo 3DS zwei Bildschirme. Der obere Bildschirm auf der Innenseite des Deckels bietet ein autostereoskopisches 3D-Display der Firma Sharp mit einer Diagonale von 8,97 cm (3,53 Zoll), das ohne spezielle Brille genutzt werden kann. Die Auflösung des 3D-Displays beträgt insgesamt 2 × 400 × 240 px, d. h. 400 × 240 px für jedes Auge. Die Intensität der stereoskopischen Darstellung ist über einen Schieberegler stufenlos einstellbar bis abschaltbar. 3D-Darstellungen können auf Dauer auch über ein Passwort deaktiviert werden. Nintendo empfiehlt dies ausdrücklich Eltern, die Kinder im Alter von unter sechs Jahren mit dem Gerät spielen lassen, obgleich es keine Erkenntnisse zu etwaigen Langzeitschäden durch stereoskopische Projektionen gibt.[15] Der untere Bildschirm hingegen ist ein 7,62 cm (3 Zoll) großer, druckempfindlicher Touchscreen. Die Auflösung des Touchscreens beträgt 320 × 240 px.', 'platform002.php'),
(3, 'Nintendo GameCube', 'NGC', 1, 1, 6, '../img/platform_logos/platform003_logo.png', '../img/platform_photos/platform003_photo.png', 1, 'GameCube Mini Game Disc', 21.75, 1, 5, '2001-09-14', 'Der Nintendo GameCube [\'geɪm \'kjuːb] (englisch für Spielwürfel, jap. ニンテンドー ゲームキューブ, Hepburn: Nintendō Gēmukyūbu, offiziell abgekürzt als GCN in Europa und Nordamerika und NGC in Japan, meist einfach nur GameCube oder kurz GC genannt) ist eine stationäre Spielkonsole des japanischen Konsolenherstellers und Videospielentwicklers Nintendo und Nachfolger des Nintendo 64. Er stand als Konsole in direkter Konkurrenz zu Segas Dreamcast, Sonys PlayStation 2 und Microsofts Xbox. Der Nintendo GameCube verkaufte sich weltweit etwa 21,74 Millionen Mal, bis der Verkauf im Jahre 2007 offiziell eingestellt wurde.[3] Nachfolger des Nintendo GameCube ist die im Jahr 2006 erschienene Wii, welche in ihrer ersten Ausführung abwärtskompatibel zu Nintendo-GameCube-Software und -Zubehör ist.', 'platform003.php'),
(4, 'Nintendo DS', 'NDS', 2, 2, 7, '../img/platform_logos/platform004_logo.png', '../img/platform_photos/platform004_photo.png', 1, 'Nintendo DS Game Card', 154.02, 10, 2, '2004-11-21', 'Der Nintendo DS (kurz NDS oder DS) ist eine vom japanischen Spielkonsolenhersteller Nintendo entwickelte und produzierte Handheld-Konsole und inoffizieller Nachfolger des Game Boy Advance. Der Nintendo DS verfügt über zwei Bildschirme, von denen der untere ein druckempfindlicher Touchscreen ist, sowie ein eingebautes Mikrofon. Diese sollen gegenüber früheren Konsolen eine neuartige und vereinfachte Spielsteuerung ermöglichen. Der DS spielte eine entscheidende Rolle im Durchbruch des Touchscreens und etablierte diesen im Massenmarkt.', 'platform004.php'),
(5, 'Nintendo Wii', NULL, 1, 1, 7, '../img/platform_logos/platform005_logo.png', '../img/platform_photos/platform005_photo.png', 1, 'Wii Optical Disc', 101.63, 3, 9, '2006-11-19', 'Die Wii [wiː] ist eine 2006 von dem japanischen Unternehmen Nintendo veröffentlichte stationäre Spielkonsole. Sie stellt den Nachfolger des Nintendo GameCube dar. Sie wurde erstmals in Nordamerika am 19. November 2006, dann in Japan am 2. Dezember 2006 und am 8. Dezember 2006 schließlich auch in Europa veröffentlicht. Während ihrer Lebenszeit stand sie in direkter Konkurrenz zu Sonys PlayStation 3 und Microsofts Xbox 360. Ihr wesentliches Merkmal ist der Controller, der einer herkömmlichen Fernbedienung ähnelt, allerdings über eingebaute Bewegungssensoren und Vibrationsmotoren verfügt. Diese registrieren die Lage und die Bewegungen des Controllers im Raum und setzen sie in entsprechende Bewegungen von Spielfiguren oder -elementen auf dem Bildschirm um.[3] Mussten die Nutzer bei herkömmlichen Spielsystemen Knöpfe des Controllers oder Analogsticks betätigen, so können sie die Spiele nun steuern, indem sie den Controller selbst bewegen. Das Spielsystem aus Hardware und Software misst die dreidimensionalen Bewegungen des Nutzers. Die Konsole wurde über 100 Millionen Mal verkauft[1] und ist damit eine der meistverkauften Spielkonsolen überhaupt. Der bewegungssensitive Controller der Wii sorgte aufgrund des großen Verkaufserfolgs der Konsole für einen deutlichen Verkaufsschub von bewegungsgesteuerten Spielen. Nintendos Konsole veranlasste Wettbewerber zur Veröffentlichung eigener bewegungssensitiver Hardware-Erweiterungen, Sonys PlayStation Move und Microsofts Kinect.[4] Sie etablierte Bewegungssteuerung als eine attraktive Option in der Videospielindustrie und beeinflusste die fortschreitende Entwicklung in diesem Bereich.[5] Außerdem ist sie für ihre charakteristische Musik der einzelnen Kanäle bekannt.', 'platform005.php'),
(6, 'Nintendo Switch', 'NSw', 3, 3, 8, '../img/platform_logos/platform006_logo.png', '../img/platform_photos/platform006_photo.jpg', 1, 'Nintendo Switch Game Card', 103.54, 9, NULL, '2017-03-03', 'Die Nintendo Switch (auch nur Switch) ist eine Videospielkonsole des japanischen Unternehmens Nintendo. Sie erschien am 3. März 2017 in Europa, Australien, Nordamerika und Asien[4] sowie am 15. August 2017 in Argentinien.[5] Als sogenannte hybride Konsole lässt sich der Nachfolger der Wii U sowohl als stationäre, also mit einem externen Bildschirm verbundene Konsole nutzen, wie auch als tragbare Handheld-Konsole. Die Joy-Con genannten abnehmbaren Bedienelemente ermöglichen Spiele in einer dritten Variante, dem sogenannten Tisch-Modus. Die Nintendo Switch steht in direkter Konkurrenz zu Sonys PlayStation 4 und Microsofts Xbox One. Die Nintendo Switch ist die in Verkaufszahlen bislang erfolgreichste aller stationären Nintendo-Konsolen.', 'platform006.php'),
(7, 'Super Nintendo Entertainment System', 'SNES^Super Famicom', 1, 2, 4, '../img/platform_logos/platform007_logo.png', '../img/platform_photos/platform007_photo.jpg', 1, 'SNES Game Pak', 49.1, 8, 28, '1990-11-21', 'Das Super Nintendo Entertainment System (meist abgekürzt als Super Nintendo, Super NES, Super-NES oder SNES; orig. jap. スーパーファミコン Sūpā Famikon bzw. Super Famicom, abgekürzt SFC) ist eine stationäre 16-Bit-Spielkonsole des japanischen Unternehmens Nintendo. Es ist die zweite weltweit veröffentlichte stationäre Spielkonsole des Unternehmens und sein Controller, der SNES-Controller, führte die Schultertasten ein, die fortan zum Standard aller nachfolgend erschienenen Gamepads wurden.[2][3][4] Veröffentlicht wurde das Super Nintendo Entertainment System erstmals am 21. November 1990 in Japan, dann am 23. August 1991 in Nordamerika[5] und am 11. April 1992 schließlich auch in Europa. In Deutschland war das System ab dem 15. August 1992 erhältlich. Das Super Nintendo Entertainment System ist der Vorgänger des Nintendo 64 (N64) und der Nachfolger des Nintendo Entertainment System (NES).', 'platform007.php'),
(8, 'Nintendo Entertainment System', 'NES^Famicom', 1, 2, 3, '../img/platform_logos/platform008_logo.png', '../img/platform_photos/platform008_photo.jpg', 1, 'NES Game Pak', 61.91, NULL, 7, '1983-06-15', 'Das Nintendo Entertainment System (kurz meist NES genannt) ist eine stationäre 8-Bit-Spielkonsole des japanischen Spielkonsolenherstellers Nintendo. Die Konsole erschien in Nordamerika, Brasilien, Europa, Asien und Australien. Die japanische Version wurde als Famicom (kurz für Family Computer) vermarktet. Das NES war mit über 60 Millionen verkauften Einheiten lange Zeit die meistverkaufte Konsole überhaupt. Nach dem Zusammenbruch der Videospielebranche im Jahre 1983, dem sogenannten „Video Game Crash“, belebte Nintendo den Heimkonsolenmarkt mit ihrer Konsole neu. Der Controller führte das Steuerkreuz (kurz: D-Pad für Direction-Pad) ein und definierte die grundsätzliche Tastenanordnung der Gamepads. Bekannte Spieleserien wie Super Mario Bros., The Legend of Zelda, Metroid oder Castlevania gaben auf dem NES ihr Heimkonsolen-Debüt.', 'platform008.php'),
(9, 'Nintendo Wii U', NULL, 1, 1, 8, '../img/platform_logos/platform009_logo.png', '../img/platform_photos/platform009_photo.png', 1, 'Wii U Optical Disc', 13.56, 5, 6, '2012-11-18', 'Die Wii U ist eine stationäre Spielkonsole des japanischen Unternehmens Nintendo. Sie stellt den Nachfolger der Wii dar und ist Nintendos sechste weltweit veröffentlichte Heimkonsole. In Nordamerika erschien sie am 18. November 2012, in Europa am 30. November 2012 und in Japan am 8. Dezember 2012. Die Wii U steht in direkter Konkurrenz zu Sonys PlayStation 4 und Microsofts Xbox One. Anfang 2017 stellte Nintendo die Produktion der Konsole ein. Der Nachfolger der Wii U ist die Nintendo Switch.', 'platform009.php'),
(10, 'Game Boy Advance', 'GBA', 2, 1, 6, '../img/platform_logos/platform010_logo.png', '../img/platform_photos/platform010_photo.jpg', 1, 'GBA Game Pak', 81.51, 11, 4, '2001-03-21', 'Der Game Boy Advance (kurz GBA) ist eine Handheld-Konsole und der Nachfolger des Game Boy bzw. des Game Boy Color. Es ist Nintendos erster Handheld, der nicht auf der Technik des ursprünglichen Game Boy basiert (mit Ausnahme der Game & Watch-Serie). Der Game Boy Advance hat mit dem Game Boy Advance SP eine Überarbeitung erfahren. Trotz der grundlegenden Änderung der Hardware können die beiden Vertreter der neuesten Game-Boy-Generation alle Game-Boy-Spiele verarbeiten. Alle Game-Boy-Advance-Modelle gibt es auch in vielen verschiedenen Farben.<br>Der Game Boy Advance verkaufte sich in seiner gesamten Lebensspanne etwa 81,51 Millionen Mal.', 'platform010.php'),
(11, 'Game Boy Color', 'GBC', 2, 2, 5, '../img/platform_logos/platform011_logo.png', '../img/platform_photos/platform011_photo.png', 1, 'GBC Game Pak', 118.69, 12, 10, '1998-10-21', 'Der Game Boy Color erschien 1998 als indirekter Nachfolger des Game Boy sowie des Game Boy Pocket. Er basiert technisch auf der ersten Game-Boy-Linie (Z80-Generation). Der Game Boy Color besaß als erste tragbare Nintendo-Spielkonsole einen Farbbildschirm und konnte aus einer Palette von 32.768 Farben 56 gleichzeitig darstellen. Die Vorgänger hatten noch eine Anzeige mit vier Grautönen. Diese konvertiert der Game Boy Color in eine wählbare Vierfarbpalette, weswegen der Game Boy Color auch mit allen Game-Boy-Spielen ohne Farbe kompatibel ist; diese Technik wird zur Farberzeugung bis zum Game Boy Advance angewandt.', 'platform011.php'),
(12, 'Game Boy', 'GB', 2, 2, 4, '../img/platform_logos/platform012_logo.png', '../img/platform_photos/platform012_photo.jpg', 1, 'GB Game Pak', 118.69, NULL, 11, '1989-04-21', 'Der Game Boy (jap. ゲームボーイ, Hepburn: Gēmu Bōi) ist eine 8-Bit-Handheld-Konsole, die von Gunpei Yokoi entwickelt und von Nintendo erstmals am 21. April 1989 in Japan zu einem Preis von 12500 Yen veröffentlicht wurde.[3] In Europa war die Konsole ab Herbst 1990 erhältlich und wurde in Deutschland zu einem Preis von 169 D-Mark verkauft.[4] Sie wurde 1989 erstmals der Öffentlichkeit vorgestellt. Der Game Boy ist mit mehr als 118,69 Millionen verkauften Exemplaren[1] (Game Boy Color miteinberechnet) eine der meistverkauften Spielkonsolen überhaupt und war lange Zeit die meistverkaufte Handheld-Konsole der Welt. Dieser Verkaufsrekord wurde allerdings vom Nintendo DS mit seinen rund 154,01 Millionen abgesetzten Geräten gebrochen.', 'platform012.php'),
(17, 'PlayStation', 'PS1', 1, 19, 5, '../img/platform_logos/platform017_logo.png', '../img/platform_photos/platform017_photo.png', 4, 'CD-ROM', 102.49, NULL, 18, '1994-12-03', 'Die PlayStation (jap. プレイステーション, Pureisutēshon, offizielle Abkürzung: PS, Codename: PSX, auch PS1 genannt) ist eine stationäre Spielkonsole des japanischen Unternehmens Sony, die am 3. Dezember 1994[7][8][9] erstmals in Japan verkauft und deren Herstellung nach zwölf Jahren Verkaufszeitraum, im Jahr 2006, endgültig eingestellt wurde.[8] Die PlayStation ist die erste Spielkonsole der PlayStation-Marke. Mit Ken Kutaragi als Vorsitzendem der eigens dafür gegründeten Tochtergesellschaft Sony Computer Entertainment avancierte die PlayStation zu einer der erfolgreichsten Spielkonsolen aller Zeiten (102,5 Millionen verkaufte Exemplare weltweit[10]) und stürzte im Bereich Heimkonsolen den einstigen Marktführer Nintendo vom Thron.', 'platform017.php'),
(18, 'PlayStation 2', 'PS2', 1, 19, 6, '../img/platform_logos/platform018_logo.png', '../img/platform_photos/platform018_photo.png', 4, 'CD-ROM', 157.68, 17, 19, '2000-03-04', 'Die PlayStation 2 (offizielle Abkürzung: PS2) ist eine stationäre Spielkonsole, die von Sony Computer Entertainment am 4. März 2000 in Japan veröffentlicht wurde.[2][3] Die PlayStation 2 ist die zweite Spielkonsole der PlayStation-Marke. Die Produktion wurde nach über 12 Jahren am 29. Dezember 2012 in Japan eingestellt.[4] Die PlayStation 2 stand in direkter Konkurrenz zum Nintendo GameCube, der Sega Dreamcast und Microsofts Xbox. ', 'platform018.php'),
(19, 'PlayStation 3', 'PS3', 1, 19, 7, '../img/platform_logos/platform019_logo.png', '../img/platform_photos/platform019_photo.png', 4, 'CD-ROM', 87.4, 18, 20, '2006-11-11', 'Die PlayStation 3 (offizielle Abkürzung: PS3) ist eine stationäre Spielkonsole, welche von Sony Computer Entertainment im Mai 2005 erstmals auf der Spielmesse E3 in Los Angeles als offizieller Nachfolger der PlayStation 2 vorgestellt wurde. Die PlayStation 3 ist die vierte Spielkonsole der PlayStation-Marke.', 'platform021.php'),
(20, 'PlayStation 4', 'PS4', 1, 19, 8, '../img/platform_logos/platform020_logo.png', '../img/platform_photos/platform020_photo.jpg', 4, 'CD-ROM', 115, 19, 21, '2013-11-15', 'Die PlayStation 4 (offizielle Abkürzung: PS4) ist eine stationäre Spielkonsole von Sony Interactive Entertainment LLC (bis April 2016: Sony Computer Entertainment Inc.). Sie wurde als Nachfolger der PlayStation 3 am 20. Februar 2013 auf einer Pressekonferenz von Sony vorgestellt. Die Markteinführung erfolgte am 15. November 2013 in Nordamerika und am 29. November 2013 in Europa, Südamerika und Australien. Die PlayStation 4 steht in direkter Konkurrenz zu Microsofts Xbox One sowie Nintendos Wii U und Nintendo Switch. Die PlayStation 4 ist die insgesamt sechste Spielkonsole der Marke PlayStation, ausgenommen Hardware-Revisionen. Am 8. Oktober 2019 wurde der Nachfolger PlayStation 5 angekündigt.', 'platform020.php'),
(21, 'PlayStation 5', 'PS5', 1, 19, 9, '../img/platform_logos/platform021_logo.png', '../img/platform_photos/platform021_photo.png', 4, 'CD-ROM', 13.4, 20, NULL, '2020-11-12', 'Die PlayStation 5 (offizielle Abkürzung: PS5) ist eine zur Marke PlayStation gehörende stationäre Spielkonsole des japanischen Konzerns Sony, welche am 19. November 2020 auf den europäischen Markt gekommen ist. Sie ist der Nachfolger der PlayStation 4, zu der eine Abwärtskompatibilität besteht, und steht in Konkurrenz zu Microsofts Konsole Xbox Series sowie Nintendos Switch. Bis September 2021 wurden weltweit über 13,4 Millionen Exemplare verkauft.', 'platform021.php'),
(22, 'Xbox', NULL, 1, 22, 6, '../img/platform_logos/platform022_logo.png', '../img/platform_photos/platform022_photo.png', 5, 'CD-ROM', 25, NULL, 23, '2001-11-15', 'Die Xbox ist eine von Microsoft entwickelte Spielkonsole, die größtenteils auf leicht modifizierten PC-Komponenten basiert. Der Erfolg der Spielkonsole sorgte für die Etablierung der gleichnamigen Marke Xbox. Die Xbox wurde zuerst am 15. November 2001 in den USA,[2] dann am 22. Februar 2002 in Japan und am 14. März 2002 in Europa veröffentlicht.', 'platform022.php'),
(23, 'Xbox 360', NULL, 1, 22, 7, '../img/platform_logos/platform023_logo.png', '../img/platform_photos/platform023_photo.png', 5, 'CD-ROM', 85.5, 22, 24, '2005-11-22', 'Die Xbox 360 ist eine von Microsoft entwickelte Spielkonsole und Nachfolger der ersten Xbox. Der Projektname der Konsole war Xenon. In der Presse wurde sie vor Bekanntgabe des Namens auch als Xbox 2 oder Xbox Next bezeichnet. Sie wurde Ende 2005 auf den Märkten der Vereinigten Staaten, Europas und Japans eingeführt. In Ozeanien war sie ab Ende März 2006 erhältlich. Es ist die zweite Spielkonsole der Xbox-Produktreihe und stand in Konkurrenz zur Sony PlayStation 3 und Nintendo Wii. Für die Xbox 360 gibt es einen Online-Service namens Xbox Live, der den Nutzern erlaubt, online zu spielen, Spiele herunterzuladen (Xbox Live Arcade) sowie Musik, TV-Programme und Filme durch Xbox Music und das Xbox Video Portal zu kaufen und zu streamen.', 'platform023.php'),
(24, 'Xbox One', NULL, 1, 22, 8, '../img/platform_logos/platform024_logo.png', '../img/platform_photos/platform024_photo.jpg', 5, 'CD-ROM', 48.47, 23, 25, '2013-11-22', 'Die Xbox One ist eine von Microsoft entwickelte stationäre Spielkonsole und der Nachfolger der Xbox 360. Das System wurde am 21. Mai 2013 vorgestellt und steht als Konsole in direkter Konkurrenz zu Sonys PlayStation 4 und Nintendos Wii U und Nintendo Switch.[8] Es ist die insgesamt dritte Spielkonsole der Xbox-Marke, Hardware-Revisionen ausgenommen.', 'platform024.php'),
(25, 'Xbox Series', NULL, 1, 22, 9, '../img/platform_logos/platform025_logo.png', '../img/platform_photos/platform025_photo.jpg', 5, 'CD-ROM', 6.5, 24, NULL, '2020-11-10', 'Xbox Series X und Xbox Series S sind von Microsoft entwickelte stationäre Spielkonsolen und Nachfolger der Xbox One. Die Xbox Series X wurde auf der Electronic Entertainment Expo (E3) am 9. Juni 2019 vorgestellt[2] und die Xbox Series S wurde nach einem Leak am 8. September 2020 von Microsoft über Twitter offiziell bestätigt. Die Konsolen stehen in Konkurrenz zu Sonys Konsole PlayStation 5 der aktuellen und der zur vorherigen Konsolengeneration gehörenden Nintendo Switch. Bis Januar 2022 wurden geschätzt rund 12 Millionen Konsolen ausgeliefert.', 'platform025.php'),
(26, 'Steam', NULL, 4, 20, NULL, '../img/platform_logos/platform026_logo.png', '../img/platform_photos/platform026_photo.png', 6, 'Download', NULL, NULL, NULL, '2003-09-12', 'Steam ist eine Internet-Vertriebsplattform für Computerspiele, Software, Filme, Serien und Computergeräte, die von der Valve Corporation entwickelt und betrieben wird. Sie verzeichnete laut Herstellerangaben im Jahr 2019 über eine Milliarde aktive Benutzerkonten.[1] Täglich nutzen etwa 47 Millionen Nutzer die Plattform (2018).[2] Im März 2020 wurde ein Rekord von über 20 Millionen gleichzeitigen Nutzern aufgestellt, davon über 6 Millionen aktive Spieler.', 'platform026.php'),
(27, 'Ubisoft Connect', NULL, 4, 21, NULL, '../img/platform_logos/platform027_logo.png', '../img/platform_photos/platform027_photo.webp', 7, 'Download', NULL, NULL, NULL, '2012-07-03', 'Ubisoft Connect (formerly Uplay) is a digital distribution, digital rights management, multiplayer and communications service developed by Ubisoft to provide an experience similar to the achievements/trophies offered by various other game companies. The service is provided across various platforms. Ubisoft Connect is used exclusively by first-party Ubisoft games, and although some third-party ones are sold through the Ubisoft store, they do not use the Ubisoft Connect platform.', 'platform027.php'),
(28, 'Virtual Boy', 'VB', 2, 1, 4, '../img/platform_logos/platform028_logo.png', '../img/platform_photos/platform028_photo.png', 1, 'VB Game Pak', 0.77, 7, 1, '1995-07-21', 'Der Virtual Boy (jap. バーチャルボーイ, Bācharu Bōi) ist ein stationäres Virtual-Reality-Headset von Nintendo, der 1995 in Japan und den USA veröffentlicht wurde. Der Virtual Boy ähnelt einer Tauchmaske, in die man hineinsieht. Jedes Auge nimmt dabei ein anderes, leicht versetztes Bild wahr, wodurch ein real wirkender 3D-Effekt erzeugt wird.', 'platform028.php');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `port`
--

CREATE TABLE `port` (
  `no` int(11) NOT NULL,
  `refGame` int(11) DEFAULT NULL,
  `refPlatform` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `port`
--

INSERT INTO `port` (`no`, `refGame`, `refPlatform`) VALUES
(1, 1, 3),
(2, 1, 5),
(3, 1, 9),
(4, 1, 6),
(5, 3, 3),
(6, 3, 5),
(7, 3, 9),
(8, 3, 6),
(9, 10, 10),
(10, 10, 5),
(11, 10, 2),
(12, 10, 9),
(13, 10, 6),
(14, 12, 10),
(15, 12, 5),
(16, 12, 2),
(17, 12, 9),
(18, 12, 6),
(19, 13, 10),
(20, 13, 5),
(21, 13, 2),
(22, 13, 9),
(23, 13, 6),
(24, 15, 2),
(25, 17, 2),
(26, 18, 2),
(27, 19, 4),
(28, 23, 2),
(29, 23, 9),
(30, 24, 5),
(31, 26, 9),
(32, 27, 9),
(33, 28, 9),
(34, 31, 9),
(35, 32, 5),
(38, 34, 2),
(39, 35, 2),
(40, 36, 2),
(41, 37, 2),
(42, 38, 2),
(43, 39, 2),
(44, 64, 2),
(45, 64, 9),
(46, 67, 2),
(47, 67, 9),
(48, 68, 9),
(49, 69, 2),
(50, 75, 5),
(51, 75, 2),
(52, 75, 9),
(53, 75, 6),
(54, 75, 20),
(55, 75, 26),
(56, 75, 24),
(57, 75, 4),
(58, 76, 5),
(59, 76, 2),
(60, 76, 9),
(61, 76, 6),
(62, 76, 20),
(63, 76, 26),
(64, 76, 24),
(65, 76, 4),
(66, 77, 5),
(67, 77, 2),
(68, 77, 9),
(69, 77, 6),
(70, 77, 20),
(71, 77, 26),
(72, 77, 24),
(73, 77, 4),
(76, 78, 2),
(87, 83, 6),
(88, 83, 20),
(89, 83, 26),
(92, 84, 6),
(93, 84, 20),
(94, 84, 26),
(95, 85, 2),
(96, 87, 11),
(97, 87, 2),
(98, 88, 2),
(99, 89, 2),
(100, 89, 9),
(101, 90, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `prequel`
--

CREATE TABLE `prequel` (
  `preNo` int(11) NOT NULL,
  `refOrigin` int(11) DEFAULT NULL,
  `refPrequel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `prequel`
--

INSERT INTO `prequel` (`preNo`, `refOrigin`, `refPrequel`) VALUES
(1, 12, 10),
(2, 13, 12),
(3, 14, 13),
(4, 3, 14),
(5, 1, 3),
(6, 17, 1),
(7, 18, 1),
(8, 19, 17),
(9, 19, 18),
(10, 20, 19),
(11, 22, 20),
(12, 23, 22),
(13, 24, 23),
(14, 26, 24),
(15, 27, 26),
(16, 28, 27),
(17, 30, 28),
(18, 31, 33),
(19, 33, 30),
(22, 37, 34),
(23, 37, 35),
(24, 37, 36),
(25, 38, 34),
(26, 38, 35),
(27, 38, 36),
(28, 40, 37),
(29, 40, 38),
(30, 40, 39),
(31, 41, 37),
(32, 41, 38),
(33, 41, 39),
(34, 4, 40),
(35, 4, 41),
(36, 4, 44),
(37, 45, 40),
(38, 45, 41),
(39, 45, 44),
(40, 49, 4),
(41, 49, 45),
(42, 49, 46),
(43, 50, 4),
(44, 50, 45),
(45, 50, 46),
(46, 39, 34),
(47, 39, 35),
(48, 39, 36),
(49, 44, 37),
(50, 44, 38),
(51, 44, 39),
(52, 46, 40),
(53, 46, 41),
(54, 46, 44),
(55, 51, 49),
(56, 51, 50),
(57, 52, 49),
(58, 52, 50),
(59, 53, 51),
(60, 53, 52),
(61, 54, 51),
(62, 54, 52),
(63, 57, 53),
(64, 57, 54),
(65, 58, 53),
(66, 58, 54),
(67, 59, 57),
(68, 59, 58),
(69, 60, 57),
(70, 60, 58),
(71, 61, 59),
(72, 61, 60),
(73, 62, 59),
(74, 62, 60),
(75, 65, 64),
(76, 66, 65),
(77, 67, 66),
(78, 68, 67),
(79, 69, 68),
(80, 70, 69),
(81, 71, 70),
(82, 72, 71),
(83, 73, 72),
(84, 74, 73),
(85, 76, 75),
(86, 77, 76),
(87, 78, 77),
(88, 79, 78),
(89, 80, 79),
(90, 82, 81),
(91, 84, 83),
(92, 86, 85),
(93, 87, 86),
(94, 88, 87),
(95, 89, 88),
(96, 90, 89);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `pubNo` int(11) NOT NULL,
  `name` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`pubNo`, `name`) VALUES
(1, 'Nintendo'),
(2, 'Square'),
(3, 'The Pokémon Company'),
(4, 'Sony'),
(5, 'Microsoft'),
(6, 'Valve'),
(7, 'Ubisoft');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `remake`
--

CREATE TABLE `remake` (
  `reNo` int(11) NOT NULL,
  `refOrigin` int(11) DEFAULT NULL,
  `refRemake` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `remake`
--

INSERT INTO `remake` (`reNo`, `refOrigin`, `refRemake`) VALUES
(1, 14, 16),
(2, 34, 42),
(3, 35, 43),
(4, 37, 47),
(5, 38, 48),
(6, 40, 55),
(7, 41, 56),
(8, 4, 8),
(9, 45, 63);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `remaster`
--

CREATE TABLE `remaster` (
  `remNo` int(11) NOT NULL,
  `refOrigin` int(11) DEFAULT NULL,
  `refRemaster` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `remaster`
--

INSERT INTO `remaster` (`remNo`, `refOrigin`, `refRemaster`) VALUES
(1, 14, 15),
(2, 3, 11),
(3, 1, 2),
(4, 20, 21),
(5, 24, 25),
(6, 28, 29);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `series`
--

CREATE TABLE `series` (
  `sNo` int(11) NOT NULL,
  `name` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `series`
--

INSERT INTO `series` (`sNo`, `name`) VALUES
(1, 'The Legend of Zelda'),
(2, 'Pokémon'),
(3, 'Wii'),
(4, 'Metroid'),
(5, 'Mana'),
(6, 'WarioWare'),
(7, 'Kirby'),
(8, 'Ace Attorney'),
(9, 'Wario Land');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE `status` (
  `statNo` int(11) NOT NULL,
  `status` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`statNo`, `status`) VALUES
(2, 'am Spielen'),
(3, 'abgeschlossen'),
(4, 'on-Hold'),
(5, 'nicht fortgesetzt'),
(6, 'geplant');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `uNo` int(11) NOT NULL,
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`uNo`, `username`, `password`) VALUES
(1, 'Zetsu', '$2y$10$ckhmokMczc7kqHw74D8mue.h83vZPWB7uwh3whqEhsmJmuQFQn4UK');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `consoletype`
--
ALTER TABLE `consoletype`
  ADD PRIMARY KEY (`ctNo`);

--
-- Indizes für die Tabelle `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`devNo`);

--
-- Indizes für die Tabelle `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gNo`),
  ADD KEY `game_platform_pNo_fk` (`orgPlatform`),
  ADD KEY `game_series_sNo_fk` (`refSeries`);

--
-- Indizes für die Tabelle `game_developer`
--
ALTER TABLE `game_developer`
  ADD PRIMARY KEY (`no`),
  ADD KEY `game_developer_developer_devNo_fk` (`refDeveloper`),
  ADD KEY `game_developer_game_gNo_fk` (`refGame`);

--
-- Indizes für die Tabelle `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`no`),
  ADD KEY `game_genre_game_gNo_fk` (`refGame`),
  ADD KEY `game_genre_genre_genNo_fk` (`refGenre`);

--
-- Indizes für die Tabelle `game_mode`
--
ALTER TABLE `game_mode`
  ADD PRIMARY KEY (`no`),
  ADD KEY `game_mode_game_gNo_fk` (`refGame`),
  ADD KEY `game_mode_mode_modeNo_fk` (`refMode`);

--
-- Indizes für die Tabelle `game_publisher`
--
ALTER TABLE `game_publisher`
  ADD PRIMARY KEY (`no`),
  ADD KEY `game_publisher_game_gNo_fk` (`refGame`),
  ADD KEY `game_publisher_publisher_pubNo_fk` (`refPublisher`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genNo`);

--
-- Indizes für die Tabelle `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`entryNo`),
  ADD KEY `list_game_gNo_fk` (`refGame`),
  ADD KEY `list_status_statNo_fk` (`refStatus`),
  ADD KEY `list_user_uNo_fk` (`refUser`);

--
-- Indizes für die Tabelle `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`modeNo`);

--
-- Indizes für die Tabelle `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`pNo`),
  ADD KEY `platform_consoletype_ctNo_fk` (`consoleType`),
  ADD KEY `platform_developer_devNo_fk` (`developer`),
  ADD KEY `platform_platform_pNo_fk` (`predecessor`),
  ADD KEY `platform_platform_pNo_fk_2` (`successor`),
  ADD KEY `platform_publisher_pubNo_fk` (`manufacturer`);

--
-- Indizes für die Tabelle `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`no`),
  ADD KEY `port_game_gNo_fk` (`refGame`),
  ADD KEY `port_platform_pNo_fk` (`refPlatform`);

--
-- Indizes für die Tabelle `prequel`
--
ALTER TABLE `prequel`
  ADD PRIMARY KEY (`preNo`),
  ADD KEY `prequel_game_gNo_fk` (`refOrigin`),
  ADD KEY `prequel_game_gNo_fk_2` (`refPrequel`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pubNo`);

--
-- Indizes für die Tabelle `remake`
--
ALTER TABLE `remake`
  ADD PRIMARY KEY (`reNo`),
  ADD KEY `remake_game_gNo_fk` (`refOrigin`),
  ADD KEY `remake_game_gNo_fk_2` (`refRemake`);

--
-- Indizes für die Tabelle `remaster`
--
ALTER TABLE `remaster`
  ADD PRIMARY KEY (`remNo`),
  ADD KEY `remaster_game_gNo_fk` (`refOrigin`),
  ADD KEY `remaster_game_gNo_fk_2` (`refRemaster`);

--
-- Indizes für die Tabelle `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`sNo`);

--
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`statNo`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uNo`),
  ADD UNIQUE KEY `user_username_uindex` (`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `consoletype`
--
ALTER TABLE `consoletype`
  MODIFY `ctNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `developer`
--
ALTER TABLE `developer`
  MODIFY `devNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `game`
--
ALTER TABLE `game`
  MODIFY `gNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT für Tabelle `game_developer`
--
ALTER TABLE `game_developer`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT für Tabelle `game_genre`
--
ALTER TABLE `game_genre`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT für Tabelle `game_mode`
--
ALTER TABLE `game_mode`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT für Tabelle `game_publisher`
--
ALTER TABLE `game_publisher`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `genNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `list`
--
ALTER TABLE `list`
  MODIFY `entryNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `mode`
--
ALTER TABLE `mode`
  MODIFY `modeNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `platform`
--
ALTER TABLE `platform`
  MODIFY `pNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT für Tabelle `port`
--
ALTER TABLE `port`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT für Tabelle `prequel`
--
ALTER TABLE `prequel`
  MODIFY `preNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pubNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `remake`
--
ALTER TABLE `remake`
  MODIFY `reNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `remaster`
--
ALTER TABLE `remaster`
  MODIFY `remNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `series`
--
ALTER TABLE `series`
  MODIFY `sNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `status`
--
ALTER TABLE `status`
  MODIFY `statNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `uNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_platform_pNo_fk` FOREIGN KEY (`orgPlatform`) REFERENCES `platform` (`pNo`),
  ADD CONSTRAINT `game_series_sNo_fk` FOREIGN KEY (`refSeries`) REFERENCES `series` (`sNo`);

--
-- Constraints der Tabelle `game_developer`
--
ALTER TABLE `game_developer`
  ADD CONSTRAINT `game_developer_developer_devNo_fk` FOREIGN KEY (`refDeveloper`) REFERENCES `developer` (`devNo`),
  ADD CONSTRAINT `game_developer_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`);

--
-- Constraints der Tabelle `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `game_genre_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `game_genre_genre_genNo_fk` FOREIGN KEY (`refGenre`) REFERENCES `genre` (`genNo`);

--
-- Constraints der Tabelle `game_mode`
--
ALTER TABLE `game_mode`
  ADD CONSTRAINT `game_mode_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `game_mode_mode_modeNo_fk` FOREIGN KEY (`refMode`) REFERENCES `mode` (`modeNo`);

--
-- Constraints der Tabelle `game_publisher`
--
ALTER TABLE `game_publisher`
  ADD CONSTRAINT `game_publisher_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `game_publisher_publisher_pubNo_fk` FOREIGN KEY (`refPublisher`) REFERENCES `publisher` (`pubNo`);

--
-- Constraints der Tabelle `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `list_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `list_status_statNo_fk` FOREIGN KEY (`refStatus`) REFERENCES `status` (`statNo`),
  ADD CONSTRAINT `list_user_uNo_fk` FOREIGN KEY (`refUser`) REFERENCES `user` (`uNo`);

--
-- Constraints der Tabelle `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `platform_consoletype_ctNo_fk` FOREIGN KEY (`consoleType`) REFERENCES `consoletype` (`ctNo`),
  ADD CONSTRAINT `platform_developer_devNo_fk` FOREIGN KEY (`developer`) REFERENCES `developer` (`devNo`),
  ADD CONSTRAINT `platform_platform_pNo_fk` FOREIGN KEY (`predecessor`) REFERENCES `platform` (`pNo`),
  ADD CONSTRAINT `platform_platform_pNo_fk_2` FOREIGN KEY (`successor`) REFERENCES `platform` (`pNo`),
  ADD CONSTRAINT `platform_publisher_pubNo_fk` FOREIGN KEY (`manufacturer`) REFERENCES `publisher` (`pubNo`);

--
-- Constraints der Tabelle `port`
--
ALTER TABLE `port`
  ADD CONSTRAINT `port_game_gNo_fk` FOREIGN KEY (`refGame`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `port_platform_pNo_fk` FOREIGN KEY (`refPlatform`) REFERENCES `platform` (`pNo`);

--
-- Constraints der Tabelle `prequel`
--
ALTER TABLE `prequel`
  ADD CONSTRAINT `prequel_game_gNo_fk` FOREIGN KEY (`refOrigin`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `prequel_game_gNo_fk_2` FOREIGN KEY (`refPrequel`) REFERENCES `game` (`gNo`);

--
-- Constraints der Tabelle `remake`
--
ALTER TABLE `remake`
  ADD CONSTRAINT `remake_game_gNo_fk` FOREIGN KEY (`refOrigin`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `remake_game_gNo_fk_2` FOREIGN KEY (`refRemake`) REFERENCES `game` (`gNo`);

--
-- Constraints der Tabelle `remaster`
--
ALTER TABLE `remaster`
  ADD CONSTRAINT `remaster_game_gNo_fk` FOREIGN KEY (`refOrigin`) REFERENCES `game` (`gNo`),
  ADD CONSTRAINT `remaster_game_gNo_fk_2` FOREIGN KEY (`refRemaster`) REFERENCES `game` (`gNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
