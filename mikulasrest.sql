-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 03. 08:40
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mikulasrest`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyerek`
--

CREATE TABLE `gyerek` (
  `id` int(11) NOT NULL,
  `nev` varchar(191) NOT NULL,
  `cim` varchar(191) NOT NULL,
  `joVoltE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gyerek`
--

INSERT INTO `gyerek` (`id`, `nev`, `cim`, `joVoltE`) VALUES
(1, 'Brittany Hyatt', 'Belarus - East Elton - Rodriguez Ford - Roma Highway - 7849931646238255', 0),
(2, 'Archie Mann', 'Gabon - Fort Carrie - Baumbach Alley - Gleichner Pines - 8109270038603000', 0),
(3, 'Tricia Herzog', 'Cuba - Lake Reaganboro - Dell Lane - Larson Ramp - 2077998238896202', 0),
(4, 'Dr. Katherine Shanahan', 'Myanmar - Bennieton - Welch Flats - Lavinia Fields - 75173230410959', 1),
(5, 'Kyle Douglas', 'Portugal - South Abdielfield - Maple Road - Birch Road - 7195579955286914', 0),
(6, 'Sonja Roberts', 'Slovakia - North Robertastead - Blaise Mills - Schmidt Camp - 1799462506815680', 0),
(7, 'Whitney Stark', 'Denmark - Botsfordworth - Vicarage Close - Lind Hill - 1216615191820287', 1),
(8, 'Miss Laura Ortiz', 'French Southern Territories - O\'Konview - Kamren Overpass - Jacobi Gateway - 3227879814484864', 0),
(9, 'Everett Crist', 'Falkland Islands (Malvinas) - Brendanbury - Third Street - Reece Pine - 7839365546744476', 1),
(10, 'Tammy Mante', 'Lao People\'s Democratic Republic - Cortneyport - Jamel Extensions - Kilback Bypass - 2075263974445441', 0),
(11, 'Rochelle Schmitt', 'Mongolia - Dickensview - Lucie Common - Bailee Wall - 6786960366419348', 0),
(12, 'Carolyn Satterfield II', 'Saudi Arabia - Kylermouth - Kohler Views - Towne Shoal - 7955281705119919', 1),
(13, 'Ms. Della Harber', 'Mexico - Wintheiserburgh - Bauch Mill - Dean Meadows - 600368426732444', 0),
(14, 'Ms. Vera Mosciski', 'Bangladesh - Evalynburgh - Crist Greens - Lenny Locks - 2889653102144942', 1),
(15, 'Alyssa Volkman DVM', 'Kyrgyz Republic - Centennial - Kenton Ridge - Gordon Road - 1649178392528768', 1),
(16, 'Dave Block V', 'Argentina - Estevanburgh - Hill Street - Millie Ramp - 8075410922702859', 0),
(17, 'Thomas Mohr', 'Anguilla - Ashburn - S Washington Avenue - Sawayn Lodge - 3624509961030383', 1),
(18, 'Ms. Lillian Fadel DVM', 'South Georgia and the South Sandwich Islands - Francescaboro - Waylon Forest - Beatty Rest - 7032282936135809', 1),
(19, 'Ian Baumbach', 'Venezuela - Urbana - E Broadway - Keeling Glens - 8060839196893132', 0),
(20, 'Clint Harris PhD', 'South Sudan - North Celiafurt - Rolfson Field - Schowalter Fall - 5447806446512139', 1),
(21, 'Darnell Doyle', 'Slovenia - Kochboro - Volkman Pass - Marcos Cape - 437222041127328', 0),
(22, 'Dana Williamson', 'Cameroon - Zulaufworth - Lincoln Avenue - Lesch Stream - 384516426056877', 1),
(23, 'Mrs. Kelly Treutel', 'Lao People\'s Democratic Republic - Grimesfort - Nikolas Greens - Jaida Mills - 852937037496317', 0),
(24, 'Irvin Stamm', 'Norway - Fort Rudolphstad - Margarita Trace - Rodger Meadow - 5269124152001027', 0),
(25, 'Alejandro Orn', 'Bolivia - West Jaymestad - Katrina Pass - Evan Pine - 7808040819225784', 1),
(26, 'Marilyn Satterfield', 'Somalia - West Alva - Retta Crossroad - Haley Spring - 8122422520178587', 1),
(27, 'Barry McDermott', 'Lao People\'s Democratic Republic - Kellihaven - Schroeder Ford - Rempel Hills - 3973415048227814', 1),
(28, 'Daniel Green', 'Singapore - Gilroy - Turner Lane - Kings Highway - 3535821176103645', 1),
(29, 'Arturo Jenkins', 'Namibia - Fort Wilma - W Lake Street - Josefina Creek - 6054725228164395', 0),
(30, 'Henry Lindgren', 'Libyan Arab Jamahiriya - Elfriedaton - Crooks Square - Ned Light - 7314807710887609', 0),
(31, 'Rosie Wyman', 'British Indian Ocean Territory (Chagos Archipelago) - Framibury - Roosevelt Lane - Coty Cliffs - 621138619144236', 0),
(32, 'Hector Crist', 'Peru - Christellestad - Bode Turnpike - Carter Camp - 1342499993299443', 1),
(33, 'Carlton Weimann', 'Martinique - North Nataliastead - Darius Branch - Field Close - 6377041217645742', 1),
(34, 'Rex Dicki', 'Brazil - Legrosboro - Mercedes Manors - Tillman Place - 155846055541485', 1),
(35, 'Cheryl Walker', 'San Marino - New Melyssa - King Mountain - Santiago Wells - 7443014777307822', 0),
(36, 'Larry Wolf', 'Guatemala - Fort Pollyberg - Feest Loop - Heller Common - 5271110328241545', 1),
(37, 'Dr. Joe Pfeffer', 'France - South Agustinworth - E Union Street - Providenci Falls - 4525333346624770', 0),
(38, 'Amy Smitham II', 'Myanmar - Kettering - Weimann Cliffs - Muhammad Branch - 6157818821158079', 0),
(39, 'Theresa Rowe', 'Turkey - North Orin - Turcotte Unions - The Paddocks - 4712969317818669', 1),
(40, 'Emmett Sawayn', 'Ukraine - Dewaynehaven - Schumm Centers - Manor Drive - 4654962320528270', 1),
(41, 'Darrin Senger', 'New Zealand - Vincestad - Rasheed Pine - Dare Pass - 7912464894445817', 0),
(42, 'Roman Murray', 'South Georgia and the South Sandwich Islands - Gorczanyville - Schaefer Stravenue - S Main - 7773653648918214', 0),
(43, 'Joanna Effertz', 'Sri Lanka - South Ernie - Brandy Forest - Nyasia Circle - 5677182147332762', 1),
(44, 'Ted Morar', 'Suriname - Clovisworth - Hyman Square - Boyle Cliffs - 5620447244559488', 0),
(45, 'Belinda Carroll', 'Jordan - Rolandoside - Wilhelm Branch - Michele Isle - 3017013551591174', 0),
(46, 'Michelle Goodwin III', 'Bahamas - East Patience - Woodland Road - Walker Grove - 5686133372948493', 1),
(47, 'Mr. Jason Cruickshank', 'Iraq - Maple Grove - Meadow Lane - Tabitha Glen - 1821354776990285', 0),
(48, 'Mr. Salvatore Marquardt', 'Cook Islands - Apopka - Highfield Road - Emmanuel Ville - 3968473259692204', 0),
(49, 'Anna Strosin', 'Egypt - Bristol - Hills Corners - Anita Point - 353159099207923', 0),
(50, 'Alicia Barton', 'Ecuador - Port Agnesshire - Schimmel Crest - Mraz Harbors - 5092083632203684', 0),
(51, 'Ginger Schuppe', 'United Kingdom - Junefield - Holly Close - Pacocha Extension - 1475256376465498', 1),
(52, 'Kerry Ankunding', 'Indonesia - Deionton - Nellie Field - Ciara Skyway - 8835593925542079', 0),
(53, 'Marty Crona', 'Mali - East Cynthiachester - Upton Springs - Taylor Village - 2524330377929662', 0),
(54, 'Curtis Leannon II', 'Sao Tome and Principe - Koeppborough - Howard Street - Lodge Lane - 7817557052421893', 1),
(55, 'Ramiro Mills', 'Germany - Port Carmine - Jovani Burgs - Walter Hills - 391343719280916', 1),
(56, 'Peter Kub', 'Nepal - McLaughlinton - Shawna Trace - Rectory Close - 6311513201147582', 0),
(57, 'Dominick Zulauf', 'New Caledonia - North Rosariostad - Maudie Pines - Rau Cliff - 1630366531398585', 0),
(58, 'Marcus Dare', 'Guatemala - Boise City - Maudie Junctions - E 9th Street - 2514480849910300', 1),
(59, 'Estelle Larson', 'Mongolia - West Kianview - Stamm Crescent - Schmitt Lights - 8350564457334130', 1),
(60, 'Dr. Perry Ruecker', 'Papua New Guinea - O\'Connerland - Woodland Road - 4th Street - 6789624286405042', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatek`
--

CREATE TABLE `jatek` (
  `id` int(11) NOT NULL,
  `megnevezes` varchar(191) NOT NULL,
  `anyag` varchar(191) NOT NULL,
  `suly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `jatek`
--

INSERT INTO `jatek` (`id`, `megnevezes`, `anyag`, `suly`) VALUES
(1, '[object Object]', '[object Object]', 2147483647),
(2, '[object Object]', '[object Object]', 2147483647),
(3, '[object Object]', '[object Object]', 2147483647),
(4, '[object Object]', '[object Object]', 2147483647),
(5, '[object Object]', '[object Object]', 2147483647),
(6, '[object Object]', '[object Object]', 2147483647),
(7, '[object Object]', '[object Object]', 2147483647),
(8, '[object Object]', '[object Object]', 2147483647),
(9, '[object Object]', '[object Object]', 2147483647),
(10, '[object Object]', '[object Object]', 2147483647),
(11, '[object Object]', '[object Object]', 2147483647),
(12, '[object Object]', '[object Object]', 2147483647),
(13, '[object Object]', '[object Object]', 2147483647),
(14, '[object Object]', '[object Object]', 2147483647),
(15, '[object Object]', '[object Object]', 2147483647),
(16, '[object Object]', '[object Object]', 2147483647),
(17, '[object Object]', '[object Object]', 2147483647),
(18, '[object Object]', '[object Object]', 2147483647),
(19, '[object Object]', '[object Object]', 2147483647),
(20, '[object Object]', '[object Object]', 2147483647),
(21, 'Airbus A330-300', 'Berkelium', 2147483647),
(22, 'Antonov An-32', 'Fluorine', 2147483647),
(23, 'Boeing 727-100', 'Zirconium', 2147483647),
(24, 'Douglas DC-8-72', 'Dubnium', 2147483647),
(25, 'Embraer EMB.110 Bandeirante', 'Francium', 2147483647),
(26, 'Douglas DC-9-20', 'Sodium', 2147483647),
(27, 'Airbus A380', 'Bismuth', 2147483647),
(28, 'Lockheed L-182 / 282 / 382 (L-100) Hercules', 'Bromine', 2147483647),
(29, 'Boeing 747-200', 'Darmstadtium', 2147483647),
(30, 'Boeing 737 MAX 7', 'Gold', 2147483647),
(31, 'Canadair Regional Jet 900', 'Thulium', 2147483647),
(32, 'Antonov An-72', 'Scandium', 2147483647),
(33, 'Aerospatiale/BAC Concorde', 'Zirconium', 2147483647),
(34, 'Boeing 767-200', 'Bismuth', 2147483647),
(35, 'Airbus A350-1000', 'Lawrencium', 2147483647),
(36, 'Boeing 777-300ER', 'Nobelium', 2147483647),
(37, 'Canadair Regional Jet 900', 'Oxygen', 2147483647),
(38, 'Boeing 737', 'Technetium', 2147483647),
(39, 'Airbus A340-500', 'Fermium', 2147483647),
(40, 'Douglas DC-9-50', 'Thorium', 2147483647),
(41, 'Embraer RJ135', 'Radium', 93),
(42, 'De Havilland Canada DHC-4 Caribou', 'Lutetium', 57),
(43, 'Boeing 747SR', 'Hafnium', 53),
(44, 'Airbus A319neo', 'Argon', 53),
(45, 'Boeing 737-600', 'Sulfur', 40),
(46, 'Airbus A330-800neo', 'Magnesium', 4),
(47, 'Lockheed L-188 Electra', 'Neodymium', 98),
(48, 'Airbus A330-200', 'Darmstadtium', 20),
(49, 'McDonnell Douglas MD90', 'Californium', 30),
(50, 'Canadair Regional Jet 100', 'Nickel', 9),
(51, 'Douglas DC-8-62', 'Tungsten', 2),
(52, 'McDonnell Douglas MD11', 'Francium', 96),
(53, 'Boeing 767', 'Osmium', 98),
(54, 'De Havilland Canada DHC-2 Beaver', 'Livermorium', 96),
(55, 'Embraer RJ145 Amazon', 'Hassium', 78),
(56, 'Antonov An-24', 'Nitrogen', 54),
(57, 'De Havilland Canada DHC-7 Dash 7', 'Zinc', 10),
(58, 'Boeing 737-500', 'Nihonium', 12),
(59, 'Boeing 717', 'Beryllium', 54),
(60, 'Embraer EMB.120 Brasilia', 'Calcium', 11);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `_gyerektojatek`
--

CREATE TABLE `_gyerektojatek` (
  `A` int(11) NOT NULL,
  `B` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyerek`
--
ALTER TABLE `gyerek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `jatek`
--
ALTER TABLE `jatek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `_gyerektojatek`
--
ALTER TABLE `_gyerektojatek`
  ADD UNIQUE KEY `_GyerekToJatek_AB_unique` (`A`,`B`),
  ADD KEY `_GyerekToJatek_B_index` (`B`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `gyerek`
--
ALTER TABLE `gyerek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT a táblához `jatek`
--
ALTER TABLE `jatek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `_gyerektojatek`
--
ALTER TABLE `_gyerektojatek`
  ADD CONSTRAINT `_GyerekToJatek_A_fkey` FOREIGN KEY (`A`) REFERENCES `gyerek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_GyerekToJatek_B_fkey` FOREIGN KEY (`B`) REFERENCES `jatek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
