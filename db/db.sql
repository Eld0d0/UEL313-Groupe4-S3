-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 déc. 2020 à 05:08
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `watson`
--
CREATE DATABASE IF NOT EXISTS `watson` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `watson`;

-- --------------------------------------------------------

--
-- Structure de la table `tl_liens`
--

CREATE TABLE `tl_liens` (
  `lien_id` int NOT NULL,
  `lien_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_liens`
--

INSERT INTO `tl_liens` (`lien_id`, `lien_url`, `lien_titre`, `lien_desc`, `user_id`) VALUES
(1, 'https://cvtic.unilim.fr/', 'Campus Virtuel TIC', 'Site internet du CvTIC.', 1),
(2, 'https://duckduckgo.com/', 'Duck Duck Go', 'Le moteur de recherche qui ne trace pas ses utilisateurs.', 1),
(3, 'https://framasoft.org/', 'Framasoft', 'Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.', 1),
(4, 'https://www.cnn.com/', 'CNN', 'Une chaîne de télévision américaine d\'information.', 1),
(5, 'https://www.bbc.com/', 'BBC', 'Une chaîne de télévision britannique d\'information.', 1),
(6, 'https://www.nytimes.com/', 'The New York Times', 'Un quotidien américain.', 1),
(7, 'https://www.washingtonpost.com/', 'The Washington Post', 'Un quotidien américain.', 1),
(8, 'https://www.reuters.com/', 'Reuters', 'Une agence de presse internationale.', 1),
(9, 'https://www.apnews.com/', 'Associated Press', 'Une agence de presse internationale.', 1),
(10, 'https://www.theguardian.com/', 'The Guardian', 'Un quotidien britannique.', 1),
(11, 'https://www.elpais.com/', 'El País', 'Un quotidien espagnol.', 1),
(12, 'https://www.lemonde.fr/', 'Le Monde', 'Un quotidien français.', 1),
(13, 'https://www.google.com', 'Google', 'Le moteur de recherche le plus populaire au monde.', 1),
(14, 'https://www.facebook.com', 'Facebook', 'Le réseau social le plus populaire au monde.', 1),
(15, 'https://www.youtube.com', 'YouTube', 'La plateforme de partage de vidéos la plus populaire au monde.', 1),
(16, 'https://www.twitter.com', 'Twitter', 'Le réseau social de micro-blogging le plus populaire au monde.', 1),
(17, 'https://www.instagram.com', 'Instagram', 'La plateforme de partage de photos et de vidéos la plus populaire au monde.', 1),
(18, 'https://www.reddit.com', 'Reddit', 'Le forum communautaire le plus populaire au monde.', 1),
(19, 'https://www.wikipedia.org', 'Wikipédia', 'L\'encyclopédie en ligne la plus populaire au monde.', 1),
(20, 'https://www.amazon.fr', 'Amazon', 'Le site de commerce en ligne le plus populaire au monde.', 1),
(21, 'https://www.ebay.fr', 'eBay', 'Le site de vente aux enchères en ligne le plus populaire au monde.', 1),
(22, 'https://www.php.net', 'PHP', 'Le langage de programmation web le plus populaire au monde.', 1),
(23, 'https://www.symfony.com', 'Symfony', 'Le framework PHP le plus populaire au monde.', 1),
(24, 'https://laravel.com', 'Laravel', 'Un autre framework PHP populaire.', 1),
(25, 'https://www.doctrine-project.org', 'Doctrine', 'Un ORM PHP populaire.', 1),
(26, 'twig.symfony.com', 'Twig', 'Un moteur de template PHP populaire.', 1),
(27, 'https://www.w3schools.com/', 'W3Schools', 'Un site de référence pour les développeurs web.', 1),
(28, 'https://developer.mozilla.org/fr/', 'Mozilla Developer Network', 'Un site de référence pour les développeurs web.', 1),
(29, 'https://codecademy.com/', 'Codecademy', 'Un site d\'apprentissage en ligne pour les développeurs web.', 1),
(30, 'https://www.udemy.com/', 'Udemy', 'Un site de formation en ligne pour les développeurs web.', 1),
(31, 'https://www.linkedin.com/', 'LinkedIn', 'Un réseau social professionnel pour les développeurs web.', 1),
(32, 'https://www.meetup.com/', 'Meetup', 'Un site de rencontres pour les développeurs web.', 1),
(33, 'https://www.stackoverflow.com/', 'Stack Overflow', 'Un forum de questions et réponses pour les développeurs web.', 1),
(34, 'https://www.reddit.com/r/webdev/', 'Reddit Webdev', 'Un subreddit pour les développeurs web.', 1),
(35, 'https://twitter.com/hashtag/webdev', 'Twitter #webdev', 'Un hashtag Twitter pour les développeurs web.', 1),
(36, 'https://www.lemonde.fr/', 'Le Monde', 'Un quotidien français.', 1),
(37, 'https://www.lexpress.fr/', 'L\'Express', 'Un hebdomadaire français.', 1),
(38, 'https://www.lefigaro.fr/', 'Le Figaro', 'Un quotidien français.', 1),
(39, 'https://www.senat.fr/', 'Sénat', 'Le Sénat est la chambre haute du Parlement français.', 1),
(40, 'https://www.assemblee-nationale.fr/', 'Assemblée nationale', 'L\'Assemblée nationale est la chambre basse du Parlement français.', 1),
(41, 'https://www.courdecassation.fr/', 'Cour de cassation', 'La Cour de cassation est la plus haute juridiction de l\'ordre judiciaire français.', 1),
(42, 'https://www.conseil-constitutionnel.fr/', 'Conseil constitutionnel', 'Le Conseil constitutionnel est la plus haute juridiction de l\'ordre administratif français.', 1),
(43, 'https://www.legifrance.gouv.fr/', 'Legifrance', 'Legifrance est le site officiel du gouvernement français qui met à disposition les lois, les règlements et les jurisprudences françaises.', 1),
(44, 'https://www.service-public.fr/', 'Service-public.fr', 'Service-public.fr est un site officiel du gouvernement français qui fournit des informations sur les services publics français.', 1),
(45, 'https://www.gouvernement.fr/', 'Gouvernement.fr', 'Gouvernement.fr est le site officiel du gouvernement français qui fournit des informations sur les actions du gouvernement français.', 1),
(46, 'https://www.europe.eu/', 'Union européenne', 'L\'Union européenne est une organisation internationale qui regroupe 27 États membres.', 1),
(47, 'https://www.un.org/', 'Organisation des Nations unies', 'L\'Organisation des Nations unies est une organisation internationale qui regroupe 193 États membres.', 1),
(48, 'https://www.wto.org/', 'Organisation mondiale du commerce', 'L\'Organisation mondiale du commerce est une organisation internationale qui régit le commerce international.', 1),
(49, 'https://www.imf.org/', 'Fonds monétaire international', 'Le Fonds monétaire international est une organisation internationale qui fournit des prêts aux pays en difficulté.', 1),
(50, 'https://www.banquemondiale.org/', 'Banque mondiale', 'La Banque mondiale est une organisation internationale qui fournit des prêts aux pays en développement.', 1),
(51, 'https://www.who.int/', 'Organisation mondiale de la santé', 'L\'Organisation mondiale de la santé est une organisation internationale qui s\'occupe de la santé publique mondiale.', 1),
(52, 'https://www.unicef.org/', 'Fonds des Nations unies pour l\'enfance', 'L\'UNICEF est une organisation internationale qui s\'occupe des enfants dans le monde entier.', 1),
(53, 'https://www.oxfam.org/fr/', 'Oxfam', 'Oxfam est une organisation non gouvernementale qui lutte contre la pauvreté et les inégalités dans le monde entier.', 1),
(54, 'https://www.amnesty.org/fr/', 'Amnesty International', 'Amnesty International est une organisation non gouvernementale qui milite pour les droits de l\'homme dans le monde entier.', 1),
(55, 'https://www.jeuxvideo.com/', 'Jeuxvideo.com', 'Le site web de référence de l\'actualité du jeu vidéo.', 1),
(56, 'https://www.gamekult.com/', 'Gamekult', 'Un autre site web d\'actualité du jeu vidéo populaire.', 1),
(57, 'https://www.ign.com/fr/', 'IGN', 'Un site web d\'actualité du jeu vidéo international.', 1),
(58, 'https://www.polygon.com/', 'Polygon', 'Un site web d\'actualité du jeu vidéo américain.', 1),
(59, 'https://www.eurogamer.net/', 'Eurogamer', 'Un site web d\'actualité du jeu vidéo européen.', 1),
(60, 'https://www.pcgamer.com/', 'PC Gamer', 'Un site web d\'actualité du jeu vidéo sur PC.', 1),
(61, 'https://www.rockpapershotgun.com/', 'RockPaperShotgun', 'Un site web d\'actualité du jeu vidéo indépendant.', 1),
(62, 'https://www.youtube.com/user/IGNFrance', 'IGN France', 'La chaîne YouTube d\'IGN France.', 1),
(63, 'https://www.youtube.com/user/Gamekult', 'Gamekult', 'La chaîne YouTube de Gamekult.', 1),
(64, 'https://www.youtube.com/user/Polygon', 'Polygon', 'La chaîne YouTube de Polygon.', 1),
(65, 'https://www.youtube.com/user/eurogamer', 'Eurogamer', 'La chaîne YouTube d\'Eurogamer.', 1),
(66, 'https://www.youtube.com/user/PCGamer', 'PC Gamer', 'La chaîne YouTube de PC Gamer.', 1),
(67, 'https://www.youtube.com/user/rockpapershotgun', 'RockPaperShotgun', 'La chaîne YouTube de RockPaperShotgun.', 1),
(68, 'https://www.twitch.tv/', 'Twitch', 'Une plateforme de streaming de jeux vidéo en direct.', 1),
(69, 'https://www.steam.com/', 'Steam', 'Une plateforme de distribution numérique de jeux vidéo.', 1),
(70, 'https://www.gog.com/', 'GOG', 'Une plateforme de distribution numérique de jeux vidéo sans DRM.', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags`
--

CREATE TABLE `tl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags`
--

INSERT INTO `tl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'fac'),
(2, 'vieprivee'),
(3, 'opensource'),
(4, 'apprendre');

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags_liens`
--

CREATE TABLE `tl_tags_liens` (
  `tag_id` int(11) NOT NULL,
  `lien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags_liens`
--

INSERT INTO `tl_tags_liens` (`tag_id`, `lien_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `tl_users`
--

CREATE TABLE `tl_users` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_users`
--

INSERT INTO `tl_users` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'admin', 'LsJKppRTEPz4uKrkhScOE6HBSvHuaIcFbAX9FWC7h/f5HffX4TBcFt7p8M0hqvGzFXL+JV8TzEYePoimaosfMQ==', '>=28!7NLw!S37zLjs7Uu[nC', 'ROLE_ADMIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- Index pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tl_users`
--
ALTER TABLE `tl_users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tl_users`
--
ALTER TABLE `tl_users`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


grant all privileges on watson.* to 'watson'@'localhost' identified by 'watson';