-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 06:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firsttable`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'maths'),
(2, 'physique'),
(3, 'history'),
(4, 'informatiqu');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'Rida', 'EL QADI', 'rida@gmail.com', 'rida'),
(2, 'yassmin ', 'CHMLAL', 'yassmin@gmail.com', 'yassmin'),
(3, 'hanan', 'KHALIL', 'hanan@gmail.com', 'hanan'),
(4, 'zakaria', 'AIT YOUSSEF', 'zakaria.aityaoussef@gmail.com', 'zakaria'),
(5, 'ILYASS', 'LMSKINI', 'ilyass@gmail.com', 'ilyass'),
(6, 'Soufiane', 'AIT LAABO', 'soufiane@gmail.com', 'soufiane');

-- --------------------------------------------------------

--
-- Table structure for table `oeuvrages`
--

CREATE TABLE `oeuvrages` (
  `id` int(11) NOT NULL,
  `auteur` varchar(200) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `resumé` text NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oeuvrages`
--

INSERT INTO `oeuvrages` (`id`, `auteur`, `titre`, `resumé`, `id_categorie`) VALUES
(1, 'Jane Austen', 'Orgueil et préjugés', 'Mr et Mrs Bennett ont cinq filles à marier. À l’arrivée d’un nouveau et riche voisin, la famille espère que l’une d’entre elles pourra lui plaire… Au-delà des aventures sentimentales des cinq filles Bennett, Jane Austen dépeint les rigidités de la société anglaise au tournant du XIXe siècle. Le comportement et les réflexions d’Elizabeth Bennett, son personnage principal, révèlent les problèmes auxquels sont confrontées les femmes de la gentry campagnarde pour s’assurer sécurité financière et statut social : la solution passe en effet par le mariage.\r\n\r\nDrôle et romanesque, ce chef-d’oeuvre de Jane Austen continue à jouir d’une vive popularité et a donné lieu à de nombreuses adaptations.\r\n', 3),
(3, 'Henry Fielding', 'Histoire de Tom Jones, tome 1 : Enfant trouvé', 'Aussitôt arrivés à la ville, M. Jones et sa belle compagne allèrent tout droit à l\'auberge qui, de la rue, leur sembla présenter la meilleure apparence. Là, Jones, ayant dit à une servante de montrer une chambre au premier étage, commençait de monter, quand la belle échevelée, qui le suivait précipitamment, fut arrêtée par l\'aubergiste, qui cria : « Hé là, où va cette mendiante? Je vous prie de rester en bas. » Mais Jones fulmina aussitôt d\'en haut : « Laissez monter cette dame » d\'un ton si autoritaire, que le digne homme retira vivement ses mains, et la dame gagna prestement la chambre. Là Jones lui fit compliment de sa bonne arrivée, puis il sortit, promettant de lui envoyer l\'hôtesse avec quelques vêtements. La pauvre femme le remercia chaleureusement de sa bonté, et dit qu\'elle espérait le revoir bientôt pour le remercier encore mille fois plus. Durant ce court entretien, elle couvrait autant que possible de ses bras sa blanche poitrine; car Jones ne pouvait s\'empêcher de couler un regard ou deux.\r\n', 3),
(4, 'Fiodor Dostoïevski', 'Les frères Karamazov', 'Dernier grand roman de F. M. Dostoïevski (1821-1881) Les Frères Karamazov paraissent en revue de 1879 à 1880 dans Le Messager russe. À mesure des livraisons, le succès va grandissant, renforcé par les lectures qu\'en donne l\'écrivain aux soirées littéraires du moins dans le public car la presse réagit en fonction de ses convictions démocrates ou conservatrices. Les attentats terroristes se multiplient, les pendaisons aussi. L\'empereur Alexandre II est déjà condamné par le Comité exécutif des révolutionnaires de Terre et Liberté. L\'œuvre racontait la mise à mort du père, la rébellion sanglante des fils, et tentait de les conjurer. Elle venait à point nommé.\r\n', 3),
(19, 'Ian Stewart', '17 équations qui ont changé le monde', '17 équations qui ont changé le monde est un livre du mathématicien britannique Ian Stewart paru en 2012 et traduit en français en 2014 chez Robert Laffont. \r\n', 1),
(20, 'Denis Guedj', 'Le Théorème du Perroquet', 'L\'histoire se déroule à Montmartre, rue Ravignan2. Pierre Ruche (πR) est un vieux libraire cloué dans un fauteuil roulant. Il est aidé par Perrette Liard qui élève seule trois enfants : les jumeaux Jonathan-et-Léa, et le dernier Max, un enfant sourd.\r\n\r\nLa vie de tout ce petit groupe va être bouleversée par deux événements :\r\n\r\nl\'entrée dans la famille d\'un perroquet, Nofutur, que Max sauve des mains de personnages douteux ;\r\nl\'arrivée d\'une lettre du Brésil (Manaus) provenant d\'Elgar Grosrouvre, un ami d\'enfance de Pierre, féru de mathématiques, qui lui confie la totalité de sa bibliothèque ainsi qu\'une énigme à résoudre.\r\nÀ travers les fiches laissées par Grosrouvre, Pierre Ruche va découvrir la richesse des mathématiques de l\'époque grecque jusqu\'à nos jours. Ses recherches le mèneront de la Bibliothèque nationale de France (BnF) à l’Institut du monde arabe (IMA), en passant par la pyramide du Louvre2.', 1),
(21, 'Christophe Galfard', 'L\'Univers à portée de main', 'La version française, traduite par Éva Roques, Thierry Piélat et l\'auteur lui-même, a été publiée en France aux éditions Flammarion, en 2015. La version anglaise, intitulée The Universe in your Hand, est éditée par Macmillan en Angleterre, et Flatiron Books (appartenant à Macmillan) aux États-Unis.\r\n\r\nLe livre permet au lecteur d\'avoir un « voyage de pensée » à travers les différentes théories scientifiques modernes, incluant l\'espace-temps, les trous noirs et la théorie des cordes.\r\n\r\nLa dernière édition de Flammarion propose un cahier photographique.', 2),
(22, 'Carlo Rovelli', 'L\'ordre du temps', 'Ce que tout historien devrait savoir de sa matière première, le temps, qu\'il interroge rarement, et des instruments conceptuels qui lui permettent de le penser, qu\'il suppose trop souvent, et à tort, naturels : ainsi pourrait-on définir l\'ambition et la fonction de ce livre. Événement, cycle, structure : autant de catégories fondamentales, autant de mises en ordre du temps, qui ont elles-mêmes une histoire. Elle est ici ressaisie de concert avec l\'histoire la plus concrète de la mesure du temps, comme avec l\'histoire la plus abstraite de la réflexion sur la nature du temps. Histoire totale, donc, embrassant aussi bien la Critique de la raison pure que la diversité des calendriers, la production des montres, les effets de la découverte des éléments radioactifs ou les incidences du travail de nuit. L\'histoire des approches du temps ne se sépare pas enfin d\'une interrogation sur le temps même. Le temps n\'est pas un, mais plusieurs, est-il démontré. Tantôt continu, tantôt discret, qualitatif ou quantitatif, cyclique ou linéaire : nous le vivons éclaté et contradictoire. La multiplicité de ses registres, de ses faces et de ses strates est irréductible. L\'essence du temps, c\'est qu\'il n\'y a que des temps.\r\n', 2),
(23, ' Jean-Marc Royer', 'Sécuriser l\'informatique de l\'entreprise: enjeux, menaces, prévention et parades\r\n', 'Tout pour sécuriser un réseau d\'entreprise dans un environnement Internet/Intranet : concepts clés liés à la sécurité, approche méthodologique pour parer aux menaces le plus grandes.\r\n', 4),
(24, 'Maria Centrella', 'Le vocabulaire de l\'informatique: de la norme à l\'usage', 'L\'etude de Maria Centrella s\'interroge sur les differentes facons par lesquelles le lexique francais a ete saisi par la revolution informatique, de celles officielles et normatives a celles de l\'usage courant, par une analyse lexicologique ...\r\n', 4),
(25, 'zrj fj', 'vk,erk', '		   zekllf,ekf', 3),
(26, '', '', '		   ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_etudiant` int(11) NOT NULL,
  `id_livres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_etudiant`, `id_livres`) VALUES
(4, 3),
(6, 3),
(6, 3),
(4, 1),
(4, 1),
(4, 26),
(4, 1),
(4, 3),
(4, 1),
(4, 20),
(4, 3),
(4, 1),
(4, 1),
(4, 3),
(4, 1),
(4, 3),
(4, 1),
(4, 3),
(4, 21),
(4, 1),
(4, 3),
(4, 21),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 1),
(4, 3),
(4, 24),
(4, 1),
(4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oeuvrages`
--
ALTER TABLE `oeuvrages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `id_livres` (`id_livres`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oeuvrages`
--
ALTER TABLE `oeuvrages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oeuvrages`
--
ALTER TABLE `oeuvrages`
  ADD CONSTRAINT `oeuvrages_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_livres`) REFERENCES `oeuvrages` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
