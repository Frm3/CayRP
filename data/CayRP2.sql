-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 25 Lip 2021, 19:31
-- Wersja serwera: 5.7.34-0ubuntu0.18.04.1
-- Wersja PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `CayRP2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` text CHARACTER SET utf8,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'caution', 0),
('property_103424', 'Chata', 1),
('property_103547', 'Chata', 1),
('property_10560', 'Chata', 1),
('property_106079', 'Chata', 1),
('property_107026', 'Chata', 1),
('property_126343', 'Chata', 1),
('property_135346', 'Chata', 1),
('property_13886', 'Chata', 1),
('property_154602', 'Chata', 1),
('property_156952', 'Chata', 1),
('property_169770', 'Chata', 1),
('property_172974', 'Chata', 1),
('property_193726', 'Chata', 1),
('property_200196', 'Chata', 1),
('property_20264', 'Chata', 1),
('property_203064', 'Chata', 1),
('property_207276', 'Chata', 1),
('property_207856', 'Chata', 1),
('property_208649', 'Chata', 1),
('property_218781', 'Chata', 1),
('property_233521', 'Chata', 1),
('property_235382', 'Chata', 1),
('property_236542', 'Chata', 1),
('property_242005', 'Chata', 1),
('property_25269', 'Chata', 1),
('property_252808', 'Chata', 1),
('property_269593', 'Chata', 1),
('property_289429', 'Chata', 1),
('property_29053', 'Chata', 1),
('property_293305', 'Chata', 1),
('property_29389', 'Chata', 1),
('property_301514', 'Chata', 1),
('property_302246', 'Chata', 1),
('property_305145', 'Chata', 1),
('property_3052', 'Chata', 1),
('property_33539', 'Chata', 1),
('property_339600', 'Chata', 1),
('property_350983', 'Chata', 1),
('property_365631', 'Chata', 1),
('property_366760', 'Chata', 1),
('property_370361', 'Chata', 1),
('property_373139', 'Chata', 1),
('property_378967', 'Chata', 1),
('property_384583', 'Chata', 1),
('property_38636', 'Chata', 1),
('property_386749', 'Chata', 1),
('property_400726', 'Chata', 1),
('property_400757', 'Chata', 1),
('property_400910', 'Chata', 1),
('property_405274', 'Chata', 1),
('property_408325', 'Chata', 1),
('property_410980', 'Chata', 1),
('property_415131', 'Chata', 1),
('property_427460', 'Chata', 1),
('property_433319', 'Chata', 1),
('property_434113', 'Chata', 1),
('property_436340', 'Chata', 1),
('property_438263', 'Chata', 1),
('property_455627', 'Chata', 1),
('property_456421', 'Chata', 1),
('property_456574', 'Chata', 1),
('property_480499', 'Chata', 1),
('property_48096', 'Chata', 1),
('property_483002', 'Chata', 1),
('property_486328', 'Chata', 1),
('property_487518', 'Chata', 1),
('property_490967', 'Chata', 1),
('property_492096', 'Chata', 1),
('property_49286', 'Chata', 1),
('property_493774', 'Chata', 1),
('property_49805', 'Chata', 1),
('property_530334', 'Chata', 1),
('property_535828', 'Chata', 1),
('property_537048', 'Chata', 1),
('property_54413', 'Chata', 1),
('property_556793', 'Chata', 1),
('property_559418', 'Chata', 1),
('property_566162', 'Chata', 1),
('property_576416', 'Chata', 1),
('property_581085', 'Chata', 1),
('property_587036', 'Chata', 1),
('property_591766', 'Chata', 1),
('property_593201', 'Chata', 1),
('property_594574', 'Chata', 1),
('property_598572', 'Chata', 1),
('property_603668', 'Chata', 1),
('property_605163', 'Chata', 1),
('property_608612', 'Chata', 1),
('property_612121', 'Chata', 1),
('property_623047', 'Chata', 1),
('property_631775', 'Chata', 1),
('property_642700', 'Chata', 1),
('property_644195', 'Chata', 1),
('property_651062', 'Chata', 1),
('property_651977', 'Chata', 1),
('property_658722', 'Chata', 1),
('property_685089', 'Chata', 1),
('property_726440', 'Chata', 1),
('property_7325', 'Chata', 1),
('property_737732', 'Chata', 1),
('property_738617', 'Chata', 1),
('property_740112', 'Chata', 1),
('property_741852', 'Chata', 1),
('property_744781', 'Chata', 1),
('property_752472', 'Chata', 1),
('property_752746', 'Chata', 1),
('property_757843', 'Chata', 1),
('property_764496', 'Chata', 1),
('property_765808', 'Chata', 1),
('property_774139', 'Chata', 1),
('property_783966', 'Chata', 1),
('property_798645', 'Chata', 1),
('property_799835', 'Chata', 1),
('property_800171', 'Chata', 1),
('property_801574', 'Chata', 1),
('property_80201', 'Chata', 1),
('property_802398', 'Chata', 1),
('property_804565', 'Chata', 1),
('property_805267', 'Chata', 1),
('property_806060', 'Chata', 1),
('property_806488', 'Chata', 1),
('property_806945', 'Chata', 1),
('property_808654', 'Chata', 1),
('property_812164', 'Chata', 1),
('property_813080', 'Chata', 1),
('property_815185', 'Chata', 1),
('property_820160', 'Chata', 1),
('property_820648', 'Chata', 1),
('property_833801', 'Chata', 1),
('property_841644', 'Chata', 1),
('property_847412', 'Chata', 1),
('property_850006', 'Chata', 1),
('property_853943', 'Chata', 1),
('property_858184', 'Chata', 1),
('property_865112', 'Chata', 1),
('property_866211', 'Chata', 1),
('property_870361', 'Chata', 1),
('property_875640', 'Chata', 1),
('property_884857', 'Chata', 1),
('property_897308', 'Chata', 1),
('property_90271', 'Chata', 1),
('property_906494', 'Chata', 1),
('property_908691', 'Chata', 1),
('property_909210', 'Chata', 1),
('property_917388', 'Chata', 1),
('property_918365', 'Chata', 1),
('property_920654', 'Chata', 1),
('property_922149', 'Chata', 1),
('property_927673', 'Chata', 1),
('property_935485', 'Chata', 1),
('property_942504', 'Chata', 1),
('property_942718', 'Chata', 1),
('property_949005', 'Chata', 1),
('property_951843', 'Chata', 1),
('property_956939', 'Chata', 1),
('property_970886', 'Chata', 1),
('property_981719', 'Chata', 1),
('property_982543', 'Chata', 1),
('property_983398', 'Chata', 1),
('property_98511', 'Chata', 1),
('property_black_money', 'Mieszkanie na sprzedaż', 0),
('society_ambulance', 'EMS', 1),
('society_burgershot', 'Burgershot', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_police', 30000, NULL),
(3, 'society_ambulance', 40000, NULL),
(4, 'society_mechanic', 172, NULL),
(5, 'society_taxi', 2008, NULL),
(15, 'society_burgershot', 0, NULL),
(605, 'property_10560', 0, NULL),
(606, 'property_107026', 0, NULL),
(607, 'property_135346', 0, NULL),
(608, 'property_13886', 0, NULL),
(609, 'property_156952', 0, NULL),
(610, 'property_169770', 0, NULL),
(611, 'property_172974', 0, NULL),
(612, 'property_193726', 0, NULL),
(613, 'property_200196', 0, NULL),
(614, 'property_207276', 0, NULL),
(615, 'property_218781', 0, NULL),
(616, 'property_25269', 0, NULL),
(617, 'property_269593', 0, NULL),
(618, 'property_289429', 0, NULL),
(619, 'property_29053', 0, NULL),
(620, 'property_293305', 0, NULL),
(621, 'property_29389', 0, NULL),
(622, 'property_301514', 0, NULL),
(623, 'property_302246', 0, NULL),
(624, 'property_3052', 0, NULL),
(625, 'property_33539', 0, NULL),
(626, 'property_339600', 0, NULL),
(627, 'property_365631', 0, NULL),
(628, 'property_370361', 0, NULL),
(629, 'property_378967', 0, NULL),
(630, 'property_386749', 0, NULL),
(631, 'property_427460', 0, NULL),
(632, 'property_434113', 0, NULL),
(633, 'property_436340', 0, NULL),
(634, 'property_438263', 0, NULL),
(635, 'property_455627', 0, NULL),
(636, 'property_456421', 0, NULL),
(637, 'property_456574', 0, NULL),
(638, 'property_480499', 0, NULL),
(639, 'property_48096', 0, NULL),
(640, 'property_483002', 0, NULL),
(641, 'property_486328', 0, NULL),
(642, 'property_487518', 0, NULL),
(643, 'property_490967', 0, NULL),
(644, 'property_493774', 0, NULL),
(645, 'property_49805', 0, NULL),
(646, 'property_530334', 0, NULL),
(647, 'property_54413', 0, NULL),
(648, 'property_559418', 0, NULL),
(649, 'property_566162', 0, NULL),
(650, 'property_576416', 0, NULL),
(651, 'property_581085', 0, NULL),
(652, 'property_587036', 0, NULL),
(653, 'property_598572', 0, NULL),
(654, 'property_603668', 0, NULL),
(655, 'property_612121', 0, NULL),
(656, 'property_642700', 0, NULL),
(657, 'property_644195', 0, NULL),
(658, 'property_651062', 0, NULL),
(659, 'property_658722', 0, NULL),
(660, 'property_685089', 0, NULL),
(661, 'property_726440', 0, NULL),
(662, 'property_7325', 0, NULL),
(663, 'property_737732', 0, NULL),
(664, 'property_740112', 0, NULL),
(665, 'property_752472', 0, NULL),
(666, 'property_757843', 0, NULL),
(667, 'property_774139', 0, NULL),
(668, 'property_783966', 0, NULL),
(669, 'property_798645', 0, NULL),
(670, 'property_799835', 0, NULL),
(671, 'property_802398', 0, NULL),
(672, 'property_805267', 0, NULL),
(673, 'property_806060', 0, NULL),
(674, 'property_806945', 0, NULL),
(675, 'property_812164', 0, NULL),
(676, 'property_815185', 0, NULL),
(677, 'property_820160', 0, NULL),
(678, 'property_820648', 0, NULL),
(679, 'property_841644', 0, NULL),
(680, 'property_850006', 0, NULL),
(681, 'property_870361', 0, NULL),
(682, 'property_875640', 0, NULL),
(683, 'property_884857', 0, NULL),
(684, 'property_90271', 0, NULL),
(685, 'property_906494', 0, NULL),
(686, 'property_909210', 0, NULL),
(687, 'property_922149', 0, NULL),
(688, 'property_935485', 0, NULL),
(689, 'property_942504', 0, NULL),
(690, 'property_942718', 0, NULL),
(691, 'property_949005', 0, NULL),
(692, 'property_981719', 0, NULL),
(693, 'property_982543', 0, NULL),
(694, 'property_98511', 0, NULL),
(695, 'caution', 0, '110000115a5ea25'),
(696, 'property_black_money', 0, '110000115a5ea25'),
(697, 'caution', 0, '1100001479df7f9'),
(698, 'property_black_money', 0, '1100001479df7f9'),
(699, 'caution', 0, '110000140e97ef6'),
(700, 'property_black_money', 0, '110000140e97ef6'),
(701, 'caution', 0, '110000144511153'),
(702, 'property_black_money', 0, '110000144511153'),
(703, 'caution', 0, '1100001430a643f'),
(704, 'property_black_money', 0, '1100001430a643f'),
(705, 'caution', 0, '11000013c1beefe'),
(706, 'property_black_money', 0, '11000013c1beefe'),
(707, 'caution', 0, '1100001365d4c9f'),
(708, 'property_black_money', 0, '1100001365d4c9f'),
(709, 'caution', 0, '11000010abcd934'),
(710, 'property_black_money', 0, '11000010abcd934'),
(711, 'caution', 0, '110000141024428'),
(712, 'property_black_money', 0, '110000141024428'),
(713, 'caution', 0, '110000147efb296'),
(714, 'property_black_money', 0, '110000147efb296'),
(715, 'caution', 0, '11000010c68ca4c'),
(716, 'property_black_money', 0, '11000010c68ca4c'),
(717, 'caution', 0, '1100001369d2602'),
(718, 'property_black_money', 0, '1100001369d2602'),
(719, 'caution', 0, '1100001183f79f1'),
(720, 'property_black_money', 0, '1100001183f79f1'),
(721, 'caution', 0, '1100001454c06a0'),
(722, 'property_black_money', 0, '1100001454c06a0'),
(723, 'caution', 0, '1100001124f0954'),
(724, 'property_black_money', 0, '1100001124f0954'),
(725, 'caution', 0, '11000011769c15e'),
(726, 'property_black_money', 0, '11000011769c15e'),
(727, 'caution', 0, '11000013fca94a6'),
(728, 'property_black_money', 0, '11000013fca94a6'),
(729, 'caution', 0, '11000013b094ff8'),
(730, 'property_black_money', 0, '11000013b094ff8'),
(731, 'caution', 0, '110000132efe10b'),
(732, 'property_black_money', 0, '110000132efe10b'),
(733, 'caution', 0, '11000013e2efbf1'),
(734, 'property_black_money', 0, '11000013e2efbf1'),
(735, 'caution', 0, '110000116a199f2'),
(736, 'property_black_money', 0, '110000116a199f2'),
(737, 'caution', 0, '11000011b29d297'),
(738, 'property_black_money', 0, '11000011b29d297'),
(739, 'caution', 0, '11000011451424b'),
(740, 'property_black_money', 0, '11000011451424b'),
(741, 'caution', 0, '110000148e94bde'),
(742, 'property_black_money', 0, '110000148e94bde'),
(743, 'caution', 0, '1100001178e5843'),
(744, 'property_black_money', 0, '1100001178e5843'),
(745, 'caution', 0, '110000141e40c52'),
(746, 'property_black_money', 0, '110000141e40c52'),
(747, 'caution', 0, '11000011cf9d388'),
(748, 'property_black_money', 0, '11000011cf9d388'),
(749, 'caution', 0, '11000013571d092'),
(750, 'property_black_money', 0, '11000013571d092'),
(751, 'caution', 0, '11000011ce74f56'),
(752, 'property_black_money', 0, '11000011ce74f56'),
(753, 'caution', 0, '11000013f755f8b'),
(754, 'property_black_money', 0, '11000013f755f8b'),
(755, 'caution', 0, '110000107c1bed3'),
(756, 'property_black_money', 0, '110000107c1bed3'),
(757, 'caution', 0, '1100001403bfd98'),
(758, 'property_black_money', 0, '1100001403bfd98'),
(759, 'caution', 0, '110000113c980af'),
(760, 'property_black_money', 0, '110000113c980af'),
(761, 'caution', 0, '11000013eb9d59c'),
(762, 'property_black_money', 0, '11000013eb9d59c'),
(763, 'caution', 0, '11000013d8d00d6'),
(764, 'property_black_money', 0, '11000013d8d00d6'),
(765, 'caution', 0, '11000013e808767'),
(766, 'property_black_money', 0, '11000013e808767'),
(767, 'caution', 0, '110000146ddcaf3'),
(768, 'property_black_money', 0, '110000146ddcaf3'),
(769, 'caution', 0, '11000010e4eb1bd'),
(770, 'property_black_money', 0, '11000010e4eb1bd'),
(771, 'caution', 0, '11000014775b5fe'),
(772, 'property_black_money', 0, '11000014775b5fe'),
(773, 'caution', 0, '11000010ee7807f'),
(774, 'property_black_money', 0, '11000010ee7807f'),
(775, 'caution', 0, '110000147a942c6'),
(776, 'property_black_money', 0, '110000147a942c6'),
(777, 'caution', 0, '11000014683ac22'),
(778, 'property_black_money', 0, '11000014683ac22'),
(779, 'caution', 0, '110000139e3f4ee'),
(780, 'property_black_money', 0, '110000139e3f4ee'),
(781, 'caution', 0, '110000119d83bde'),
(782, 'property_black_money', 0, '110000119d83bde'),
(783, 'caution', 0, '110000113cd6594'),
(784, 'property_black_money', 0, '110000113cd6594'),
(785, 'caution', 0, '110000145326cbc'),
(786, 'property_black_money', 0, '110000145326cbc'),
(787, 'caution', 0, '110000114a0ca04'),
(788, 'property_black_money', 0, '110000114a0ca04'),
(789, 'caution', 0, '11000011a7ecaeb'),
(790, 'property_black_money', 0, '11000011a7ecaeb'),
(791, 'caution', 0, '11000011900882c'),
(792, 'property_black_money', 0, '11000011900882c'),
(793, 'caution', 0, '1100001477d658b'),
(794, 'property_black_money', 0, '1100001477d658b'),
(795, 'caution', 0, '110000145685a64'),
(796, 'property_black_money', 0, '110000145685a64'),
(797, 'caution', 0, '1100001434e9535'),
(798, 'property_black_money', 0, '1100001434e9535'),
(799, 'caution', 0, '11000014689c24f'),
(800, 'property_black_money', 0, '11000014689c24f'),
(801, 'property_103424', 0, NULL),
(802, 'property_103547', 0, NULL),
(803, 'property_106079', 0, NULL),
(804, 'property_126343', 0, NULL),
(805, 'property_154602', 0, NULL),
(806, 'property_20264', 0, NULL),
(807, 'property_203064', 0, NULL),
(808, 'property_207856', 0, NULL),
(809, 'property_208649', 0, NULL),
(810, 'property_233521', 0, NULL),
(811, 'property_235382', 0, NULL),
(812, 'property_236542', 0, NULL),
(813, 'property_242005', 0, NULL),
(814, 'property_252808', 0, NULL),
(815, 'property_305145', 0, NULL),
(816, 'property_350983', 0, NULL),
(817, 'property_366760', 0, NULL),
(818, 'property_373139', 0, NULL),
(819, 'property_384583', 0, NULL),
(820, 'property_38636', 0, NULL),
(821, 'property_400726', 0, NULL),
(822, 'property_400757', 0, NULL),
(823, 'property_400910', 0, NULL),
(824, 'property_405274', 0, NULL),
(825, 'property_408325', 0, NULL),
(826, 'property_410980', 0, NULL),
(827, 'property_415131', 0, NULL),
(828, 'property_433319', 0, NULL),
(829, 'property_492096', 0, NULL),
(830, 'property_49286', 0, NULL),
(831, 'property_535828', 0, NULL),
(832, 'property_537048', 0, NULL),
(833, 'property_556793', 0, NULL),
(834, 'property_591766', 0, NULL),
(835, 'property_593201', 0, NULL),
(836, 'property_594574', 0, NULL),
(837, 'property_605163', 0, NULL),
(838, 'property_608612', 0, NULL),
(839, 'property_623047', 0, NULL),
(840, 'property_631775', 0, NULL),
(841, 'property_651977', 0, NULL),
(842, 'property_738617', 0, NULL),
(843, 'property_741852', 0, NULL),
(844, 'property_744781', 0, NULL),
(845, 'property_752746', 0, NULL),
(846, 'property_764496', 0, NULL),
(847, 'property_765808', 0, NULL),
(848, 'property_800171', 0, NULL),
(849, 'property_801574', 0, NULL),
(850, 'property_80201', 0, NULL),
(851, 'property_804565', 0, NULL),
(852, 'property_806488', 0, NULL),
(853, 'property_808654', 0, NULL),
(854, 'property_813080', 0, NULL),
(855, 'property_833801', 0, NULL),
(856, 'property_847412', 0, NULL),
(857, 'property_853943', 0, NULL),
(858, 'property_858184', 0, NULL),
(859, 'property_865112', 0, NULL),
(860, 'property_866211', 0, NULL),
(861, 'property_897308', 0, NULL),
(862, 'property_908691', 0, NULL),
(863, 'property_917388', 0, NULL),
(864, 'property_918365', 0, NULL),
(865, 'property_920654', 0, NULL),
(866, 'property_927673', 0, NULL),
(867, 'property_951843', 0, NULL),
(868, 'property_956939', 0, NULL),
(869, 'property_970886', 0, NULL),
(870, 'property_983398', 0, NULL),
(871, 'caution', 0, '11000013f9be48d'),
(872, 'property_black_money', 0, '11000013f9be48d'),
(873, 'caution', 0, '11000011b827064'),
(874, 'property_black_money', 0, '11000011b827064'),
(875, 'caution', 0, '11000010f856cdc'),
(876, 'property_black_money', 0, '11000010f856cdc'),
(877, 'caution', 0, '110000136d722b6'),
(878, 'property_black_money', 0, '110000136d722b6'),
(879, 'caution', 0, '1100001462625c6'),
(880, 'property_black_money', 0, '1100001462625c6'),
(881, 'caution', 0, '11000011d1f66e0'),
(882, 'property_black_money', 0, '11000011d1f66e0'),
(883, 'caution', 0, '110000136f339b4'),
(884, 'property_black_money', 0, '110000136f339b4'),
(885, 'caution', 0, '1100001435cdd51'),
(886, 'property_black_money', 0, '1100001435cdd51'),
(887, 'caution', 0, '1100001345edd58'),
(888, 'property_black_money', 0, '1100001345edd58'),
(889, 'caution', 0, '110000112c98268'),
(890, 'property_black_money', 0, '110000112c98268'),
(891, 'caution', 0, '1100001484ca980'),
(892, 'property_black_money', 0, '1100001484ca980'),
(893, 'caution', 0, '11000010db5c2f5'),
(894, 'property_black_money', 0, '11000010db5c2f5'),
(895, 'caution', 0, '11000014631ca36'),
(896, 'property_black_money', 0, '11000014631ca36'),
(897, 'caution', 0, '110000143449c55'),
(898, 'property_black_money', 0, '110000143449c55'),
(899, 'caution', 0, '11000014238de12'),
(900, 'property_black_money', 0, '11000014238de12'),
(901, 'caution', 0, '11000014340a599'),
(902, 'property_black_money', 0, '11000014340a599'),
(903, 'caution', 0, '110000106d84b10'),
(904, 'property_black_money', 0, '110000106d84b10'),
(905, 'caution', 0, '110000103461f88'),
(906, 'property_black_money', 0, '110000103461f88'),
(907, 'caution', 0, '11000010b1257a5'),
(908, 'property_black_money', 0, '11000010b1257a5'),
(909, 'caution', 0, '110000111818886'),
(910, 'property_black_money', 0, '110000111818886'),
(911, 'caution', 0, '1100001427a0b08'),
(912, 'property_black_money', 0, '1100001427a0b08'),
(913, 'caution', 0, '110000148df3231'),
(914, 'property_black_money', 0, '110000148df3231'),
(915, 'caution', 0, '11000014510565e'),
(916, 'property_black_money', 0, '11000014510565e'),
(917, 'caution', 0, '11000010718553b'),
(918, 'property_black_money', 0, '11000010718553b');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Mieszkanie', 0),
('property_103424', 'Chata', 1),
('property_103547', 'Chata', 1),
('property_10560', 'Chata', 1),
('property_106079', 'Chata', 1),
('property_107026', 'Chata', 1),
('property_126343', 'Chata', 1),
('property_135346', 'Chata', 1),
('property_13886', 'Chata', 1),
('property_154602', 'Chata', 1),
('property_156952', 'Chata', 1),
('property_169770', 'Chata', 1),
('property_172974', 'Chata', 1),
('property_193726', 'Chata', 1),
('property_200196', 'Chata', 1),
('property_20264', 'Chata', 1),
('property_203064', 'Chata', 1),
('property_207276', 'Chata', 1),
('property_207856', 'Chata', 1),
('property_208649', 'Chata', 1),
('property_218781', 'Chata', 1),
('property_233521', 'Chata', 1),
('property_235382', 'Chata', 1),
('property_236542', 'Chata', 1),
('property_242005', 'Chata', 1),
('property_25269', 'Chata', 1),
('property_252808', 'Chata', 1),
('property_269593', 'Chata', 1),
('property_289429', 'Chata', 1),
('property_29053', 'Chata', 1),
('property_293305', 'Chata', 1),
('property_29389', 'Chata', 1),
('property_301514', 'Chata', 1),
('property_302246', 'Chata', 1),
('property_305145', 'Chata', 1),
('property_3052', 'Chata', 1),
('property_33539', 'Chata', 1),
('property_339600', 'Chata', 1),
('property_350983', 'Chata', 1),
('property_365631', 'Chata', 1),
('property_366760', 'Chata', 1),
('property_370361', 'Chata', 1),
('property_373139', 'Chata', 1),
('property_378967', 'Chata', 1),
('property_384583', 'Chata', 1),
('property_38636', 'Chata', 1),
('property_386749', 'Chata', 1),
('property_400726', 'Chata', 1),
('property_400757', 'Chata', 1),
('property_400910', 'Chata', 1),
('property_405274', 'Chata', 1),
('property_408325', 'Chata', 1),
('property_410980', 'Chata', 1),
('property_415131', 'Chata', 1),
('property_427460', 'Chata', 1),
('property_433319', 'Chata', 1),
('property_434113', 'Chata', 1),
('property_436340', 'Chata', 1),
('property_438263', 'Chata', 1),
('property_455627', 'Chata', 1),
('property_456421', 'Chata', 1),
('property_456574', 'Chata', 1),
('property_480499', 'Chata', 1),
('property_48096', 'Chata', 1),
('property_483002', 'Chata', 1),
('property_486328', 'Chata', 1),
('property_487518', 'Chata', 1),
('property_490967', 'Chata', 1),
('property_492096', 'Chata', 1),
('property_49286', 'Chata', 1),
('property_493774', 'Chata', 1),
('property_49805', 'Chata', 1),
('property_530334', 'Chata', 1),
('property_535828', 'Chata', 1),
('property_537048', 'Chata', 1),
('property_54413', 'Chata', 1),
('property_556793', 'Chata', 1),
('property_559418', 'Chata', 1),
('property_566162', 'Chata', 1),
('property_576416', 'Chata', 1),
('property_581085', 'Chata', 1),
('property_587036', 'Chata', 1),
('property_591766', 'Chata', 1),
('property_593201', 'Chata', 1),
('property_594574', 'Chata', 1),
('property_598572', 'Chata', 1),
('property_603668', 'Chata', 1),
('property_605163', 'Chata', 1),
('property_608612', 'Chata', 1),
('property_612121', 'Chata', 1),
('property_623047', 'Chata', 1),
('property_631775', 'Chata', 1),
('property_642700', 'Chata', 1),
('property_644195', 'Chata', 1),
('property_651062', 'Chata', 1),
('property_651977', 'Chata', 1),
('property_658722', 'Chata', 1),
('property_685089', 'Chata', 1),
('property_726440', 'Chata', 1),
('property_7325', 'Chata', 1),
('property_737732', 'Chata', 1),
('property_738617', 'Chata', 1),
('property_740112', 'Chata', 1),
('property_741852', 'Chata', 1),
('property_744781', 'Chata', 1),
('property_752472', 'Chata', 1),
('property_752746', 'Chata', 1),
('property_757843', 'Chata', 1),
('property_764496', 'Chata', 1),
('property_765808', 'Chata', 1),
('property_774139', 'Chata', 1),
('property_783966', 'Chata', 1),
('property_798645', 'Chata', 1),
('property_799835', 'Chata', 1),
('property_800171', 'Chata', 1),
('property_801574', 'Chata', 1),
('property_80201', 'Chata', 1),
('property_802398', 'Chata', 1),
('property_804565', 'Chata', 1),
('property_805267', 'Chata', 1),
('property_806060', 'Chata', 1),
('property_806488', 'Chata', 1),
('property_806945', 'Chata', 1),
('property_808654', 'Chata', 1),
('property_812164', 'Chata', 1),
('property_813080', 'Chata', 1),
('property_815185', 'Chata', 1),
('property_820160', 'Chata', 1),
('property_820648', 'Chata', 1),
('property_833801', 'Chata', 1),
('property_841644', 'Chata', 1),
('property_847412', 'Chata', 1),
('property_850006', 'Chata', 1),
('property_853943', 'Chata', 1),
('property_858184', 'Chata', 1),
('property_865112', 'Chata', 1),
('property_866211', 'Chata', 1),
('property_870361', 'Chata', 1),
('property_875640', 'Chata', 1),
('property_884857', 'Chata', 1),
('property_897308', 'Chata', 1),
('property_90271', 'Chata', 1),
('property_906494', 'Chata', 1),
('property_908691', 'Chata', 1),
('property_909210', 'Chata', 1),
('property_917388', 'Chata', 1),
('property_918365', 'Chata', 1),
('property_920654', 'Chata', 1),
('property_922149', 'Chata', 1),
('property_927673', 'Chata', 1),
('property_935485', 'Chata', 1),
('property_942504', 'Chata', 1),
('property_942718', 'Chata', 1),
('property_949005', 'Chata', 1),
('property_951843', 'Chata', 1),
('property_956939', 'Chata', 1),
('property_970886', 'Chata', 1),
('property_981719', 'Chata', 1),
('property_982543', 'Chata', 1),
('property_983398', 'Chata', 1),
('property_98511', 'Chata', 1),
('society_ambulance', 'EMS', 1),
('society_burgershot', 'Burgershot', 1),
('society_burgershot_fridge', 'Burgershot(fridge)', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'property_820160', 'pistol_ammo', 0, NULL),
(2, 'property_820160', 'pistol', 0, NULL),
(3, 'property_820160', 'pistol_mk2', 0, NULL),
(4, 'property_90271', 'pistol', 1, NULL),
(5, 'property_90271', 'knife', 1, NULL),
(6, 'property_90271', 'pistol_mk2', 0, NULL),
(7, 'property_90271', 'crowbar', 1, NULL),
(8, 'society_police', 'bat', 1, NULL),
(9, 'society_police', 'knife', 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `anticheat`
--

CREATE TABLE `anticheat` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `powod` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `typkary` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `datanadania` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `xbl` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hwid` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `anticheat`
--

INSERT INTO `anticheat` (`identifier`, `license`, `ip`, `nazwa`, `discord`, `powod`, `typkary`, `datanadania`, `liveid`, `xbl`, `hwid`) VALUES
('steam:11000010e4eb1bd', 'license:0c14b1a9fb2c7811adbae33a878b6c7989a9b775', 'ip:85.221.131.156', 'Szymix278', 'discord:722170398141186098', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/05 13:22', 'live:914798783858747', 'not found', '[\"4:621762d7d66b8a27fa2f8415c3f425cd53f5e358f6582450a7ca07103f80a0c6\",\"4:3fd3162a5d852909447c27b845996631362212a23e1b39fdefdd74f7dbd8cee6\",\"4:d4191f71e1f32c2f9860f0fc61b86676990cbd5fe70b8a14de6f65a5c674c564\",\"4:85a3f2a5fff7c672575710dd96c4569fbf4caae672fec320359d4003857974a2\",\"4:8f4e96d17a0d5efdaf3e7ef4d57c50de32486defc7a0c021d0783f74a6915abe\",\"1:2dd7faaf48572ae35f83a8382cd07e1e88587a7d6566f1f822a5c1253bd97ab8\",\"2:098146db4afc41312203ff84b6b2ea974a5936e478830ca952c6a18578b6c15f\",\"4:3dddede2bc87adc77432830d6e5276f169d2e0defeef91fd83884a54a1946d02\",\"4:064003abf314f49df547c970a29ae1fa5c0995f53ddef5a171d18ba631c70340\",\"4:83840a632ba0c56512a68e317e7b9ce3651827ce6ae92254bfae319707cc064c\",\"4:22e3fba07a5a4b3136ebea4f2e27d30d678e022b742a971f9d596e4e62d7113e\",\"4:8cc881ef997352cf403ee193e07a654c730a06b4fe34712b1698f2d913f2b9de\",\"4:de57db30700fb6ef7453b3951a9591b9945fd80f4c8cea9dff2b187232e5a8ea\",\"3:48388d29f195da9789e9811755016de788e0d25e679a5bef6b1b876c3891834d\",\"4:9777ef29cfb327303557e54a11985004c4da5137febef92e982283c32a8ae0b8\",\"4:2404cf736a2bb7de45527509de81980f794a1f158adf6271d3e5f7c1acf57b58\",\"4:0e18a1c19e0861baa6e85f066c5e212fd079c0907df39e5aa64f86feac52bcf7\"]'),
('steam:1100001124f0954', 'license:35e206ce6139ced0ff726764a34ceb9e057d9ce7', 'ip:83.243.107.165', 'Bartek Ksiezniczka', 'discord:707258212977737808', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/02 13:03', 'live:985154833454758', 'xbl:2535464476027571', '[\"1:aeda65d68a72817aa769757633108274d983cbc35b3ed7ca1541d5f7aeef5d6e\",\"4:2fad53610a676adf4c738dc4377a59f1557f4404b78fc40e0c7eed5aa2d366e4\",\"4:20f29442579d86c30bfb7cb706708a326bec5f1f4eb5ec9b37657d6f7cdb3305\",\"2:1cdbfa35198218a1c617e007e0e33be50d07e75bbf3a4a0c03f8546692ff421b\",\"4:e2f769b60279d04385c148e7777cd61234bc767d3f04454968c6c2baea495dcc\",\"4:4874b8d4b4608626b089183357d577f3cbb112d2309c063a7d96eb3a71bb2482\",\"4:7fd97c17fa1f02e751103eb6a3172156a6a064aaa827b5d455c80d197ffa8c58\",\"4:808164373cd2aefbadf79db774c6836ec39d2f19697be74a99b5870e5367f4fb\",\"4:89b7d61660649c0d528c728970578a523760d0e8dbb9b3c41d84f970cf4f4a56\",\"4:69557a8a117ef367793cec8f0b1bdcd859f49819ccd1755b5a38a9dcd76bee67\",\"4:996e970860b079b171b7d23bc7bf2664758f442844dab5b2a0f08846d3d1317c\",\"4:b2b9e96aade789126dd32d34c919d6d7e0f1cc7c2c88e77151db67b1b908212e\",\"4:22053c66748286bce546300a0e2d696b481338144b482aabca9479cd22fa0cd6\",\"4:88ff05b936d2dc2fe8d970c79729487c19e7d1c0de2663904626ae8c608b9856\",\"4:1d6588b8c678c32644c6203a6178ab9406611741eff8d4032b689340da89489b\",\"4:255a74417f9b6e144b29a4e6af7ff465b5f3704636ec8aeb5626a52c4f71493f\",\"4:845d948b541d8855c0d420dcea4a80541d7362c07655704411a201a4868a8920\"]'),
('steam:11000011769c15e', 'license:222aff374cb8aaa1488dad74d6a45f438269df0b', 'ip:94.101.18.153', 'D_E_V', 'discord:729096622889369620', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/02 13:03', 'not found', 'not found', '[\"4:4ae7e4bf6d1f3969a2055329a3a6636f51340a09d617ded1f1a54d6bc07b4162\",\"4:31161cf08c33a0b69398fb016023ba1578d20766caa1c18402b9c114c391f0d3\",\"4:bf3e348ddc338aa62d92714f8ac74decfc3f3352f645867da0011babe3ad6b01\",\"4:34145fdf7b8020b877c5d1278c4d53fc7768751303e1ba17ece5a8c14dc4bf8e\",\"4:9b90c71d3bee230c3a2def14d4490d695cc0a921f75d6afcca5011061fd0020f\",\"4:fd2b4628cafbc46891f6c53f41cd5ecd4ac5bbfec734c9fb06bcd33a37d8b2fe\",\"4:778e4ddcebadb462ff40a5c0fa38569a3ff52ebd917863234199e9bea0ee2a6f\",\"4:20d022b5d74f248ae73d1a58ab6a114d32cca182c35c55b3b12af9a0152a0248\",\"4:1f9f8955067ce3818ba9fafe7eb5d4ee4733a30c04eae9746e6a4b7c4f8b6549\",\"4:2ee5ce10b7085c6383e4d12b02f319c7797f19ed81e7346219112fed1338d506\",\"1:be26ffbe3b710f54d2cd173ff3993c068ba022819de979b6c07c14db33bb9f92\",\"4:dacbebcee712a48308a2d62cff52d1f28aca4f54d4aa6c43b28ed64a813ed575\",\"4:1ffd08cc17ef795238bb2e10454a3c7aea1e1f1d728c348b2630b437075f507a\",\"4:5729d068339179608b8f5906565dd2e7d07946b6762e28c0c9e8ded7fc0234f9\",\"4:50840b966ef8c40ddeaa687b31f0b0a10199addc5f4dec7658ff3ad6e8deae58\",\"4:c096d71548106d8c1445e8fe746d451c516ea37058cbb92e6d26fc4c17c9f740\",\"4:e4e5de364e8a2e664c727ff4462db699155688da0e666a1f51a713e8e223aa91\"]'),
('steam:1100001345edd58', 'license:48e16225fd310027c2bf0b6751c761673d69824c', 'ip:79.135.178.235', 'takifajnypies', 'discord:456147390508957696', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/12 19:28', 'live:985154290393182', 'xbl:2535414443067940', '[\"4:a5dc24b2a1687c2750d973d6971370dee8c7eca8e4d9616e6de5656748e6f227\",\"4:c95e05ccf746f0d51df236e8abf191c174eb3d86efb1c289dbfeba750a6d9a7a\",\"4:52b65b5bc4e1cf30847605acd700630471a66d0b9f754a0054f40ed4e65ce93b\",\"4:f7715834b052373cf87fa4409db9409bb109264f02c441df9f7b0ffc7c56ab1d\",\"4:44a2a7257f325d8a0e56f78d8d2f01f590d687e22efe37469e5b73cabb9019a2\",\"4:1239141b308e77887ddad0083859377c9989d03bf96664ca8ab3104939c4b1e4\",\"2:3636d99e83db6a43ebf6df63a380742694d0c24f7effcaaeac971eed974ba225\",\"4:d73837aa807478904c2a33f50817cd86ea89bb9bbc251e883d1bddcd2fc8a78f\",\"1:ffe2a5236b13db59a1fb2dcdefde592f982edc418f29e1cff7f5074918f2a2e8\"]'),
('steam:1100001403bfd98', 'license:0cfacf050d4e5a2b94de571123047a8e53189ceb', 'ip:89.64.11.67', 'BartiX', 'discord:695230096432431154', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/04 18:58', 'live:1055521525480531', 'xbl:2535431175797618', '[\"4:522faeb5696585e0563e01b8d3926944d20da4f67c39788147358ed3d4e6bb0e\",\"4:9c2e217b8a5b0f4c1c7c5f7a239aa71e23f43a7e302371cc14890d7c82ab3363\",\"4:e9aa6f83717bb5fc74ee1d9c5aeda6122474ffff78241eaaae02f8b1b87344ac\",\"4:502670a92c99a0fb64f9c81b68b223dd3ea528a33ba871c77084f4ea8ebe0761\",\"4:0c6e4d1333ef70a29c91123b8a9a2159324b80b0b9a4568dc0616efeb0f5c6d4\",\"4:5e835eab365091aece0b208013c8dfa5a671e089df248b72c7726ff5b69e4533\",\"1:ce0bdc2593616b6b9f0e8f2647fbc3c07535f0628260697d65aacf496453b462\",\"4:875a089254691954bb75dbb8a2bac28361b84c33d1f8b27d6573e7fca30d8132\",\"4:3fd95932ad356b534306f8ae2b920f05ce61a7b822e47bae12de08aa4a3e629d\",\"4:54a8e3b567823adb4b16394c4d7dfd3461f9126842285e9b3feab7f73cf9b9d7\",\"4:d0a70de118f78e8c6bd3c3ea97d5ed56733c2592e061f8ad576b3ffeaa3cbe88\",\"4:e5ec9cafbdf78d834464006ddff9169de74e5ed7734089c488067acf8faac366\",\"4:5739a7b74b70b3cddae3d2c3a7c62140c7b38015df4eaff40994a5fb41eb0790\",\"4:3999ef68316f1312e85f73da61b4e6fb0972a83dece86755eaaef1d0aed288bc\",\"4:ffa9400aac94564f1cb95715b9cd062f7982684b2f4f430f333f81d4f53c705c\",\"4:1e132072d301075a3351799f0d72535f474bc6930a39087b8c6921895d2960e0\",\"4:b3165c9e05a30dcf6a7e7202e96d1cd711152d7c3c61d430dc209c1ea7e902d9\",\"3:5d57891ebd30c8b2dc5282043f3b41961bd783ac6fbe78996d3f0ed86261c8d0\",\"4:556a8ce2bb3279d47502ab55ad09bb07ee5753aaacd760afcfda8923e7413256\"]'),
('steam:1100001454c06a0', 'license:f0f7d35a912dd6f5e3c6b572bce328869b42cf51', 'ip:176.221.121.76', 'Kuba9898', 'discord:702849920771555488', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/02 13:01', 'live:1055521384181325', 'xbl:2533274996137174', '[\"4:0ae4f0f602dd232c21be2c8bb978a792862a5343e94c1f5fc9a26b476f258c4f\",\"4:f73e40855e9223cb6b59c13f959aa52d0a3c49315b2bef0bf11f361113395c7b\",\"1:23875fcc88dc2fbcd49cf5982e0690aa18d63cf67b0e799007d0c476959ba83c\",\"4:314bb3f2fba15ce26ac33d1f067f4930ccf1ded6078e7f211a0c111d4315df14\",\"4:28b292751ffa46f10b819b1a0b6f15391330ffb3d000ab2004ac595ac68af601\",\"4:a03aaa61f1e1886b662f1b4b582a7ece611bb78662fe8cf9de4927ea6d4fc4de\",\"4:97f45e5a819592638936aa97e49e90ca0cfe1c70ba8226e351720cd6c5ee3cc4\",\"4:3a7d85a58f0efa7b8592116d71f954a133505de81dfd647c65b72efa1513973a\",\"4:81fe09ecdd252d02ccdc516d3b471cce591d507f084f9ccb0366326dec3d5722\",\"4:abc409e718c1240cfe81c6150a1e7abc5215c7f27664da2aabc216ce7c04d5cf\",\"4:f1f89c70a1c3d924118f2cded89ed8ecd66449f0d8312870b97f6bca28c04668\",\"4:c1172b885ee6e66ada2142f16f1024b2f7e65f298b3e6ec32a1fe9e3e6c883b2\",\"4:65b2ab2ebe7419c1b66171687cfa5c5b365c42161fb2a285cb2e5f35f70f5405\",\"4:f6cea7502fe932960b6650691df09c46807299c68a2e6fac2309482c69c2771b\",\"2:eba32c6acc4eae9e84cc8408f1f88b869ded96b5240f399ecd4cb04994df56d5\",\"4:955837645e3087d94a41ce4edd823ccdd67f6bea7fd04fcc88bb1d8fbf9e6e2b\",\"4:3a4778e26379398fbd00ba99aca9997d216e613be98f91e99912cee99cdd3923\"]'),
('steam:11000014631ca36', 'license:a99b8e30e2b6d2eea397202b51f6525d6fc4b2f7', 'ip:45.85.184.117', 'yes', 'discord:658229776925851648', 'API-ANTICHEAT Spectate detected', 'BAN', '2021/07/13 10:31', 'not found', 'not found', '[\"4:117c685d6507c14bd97a098ad068415ae212305465096e777a510efa40ffc190\",\"4:2dab66c5e6cb27e645ea7e6a1559b48c60343b5ce1f79516a02e3e3eaae41acc\",\"4:60cb25add41534a2f196eae043860e99004a13e56c245109e4c00038e34f91ab\",\"4:4b850c53f3f44cc546a8cfe5872d026c057ba08cc28f8ce15ae20b23b1150387\",\"1:ca69f72875641ee20791d7347c0f99a2dcc3ebe8d5e4d66a602f7806b98c405a\",\"4:cc254256691c3c5fb332f204f0530284a564c06c1710abd40447ef59160b7dec\",\"4:fad797f95552b6cfc1110d72d41d7e2c86360761c10e1e95f210a656e9b085e6\",\"4:b0ba495420459a2fcfb72762ee370af690b085310fbd1869d1a72a20933ecaba\",\"4:2a6d383513a5ed3b348b2749f94982aee0b5b174f8c9429541a5ad307daeaf65\",\"4:39b71490dee4e35e0e6965a668165aa066b153d1bdd7cca5fc63f3c0669a0dba\",\"4:d4eac85778db17028a10e43a65ec0a319d40529f13635cc8102f0a4c9ac09bce\",\"4:2c0685ae1681fb271cb0aad5e789f770442c7c7c89aad7e467279b8e56fef464\",\"2:9aed8a52afc87902d014605371f3dac8e2a7edb67f8f813414bec95c49deb4c2\",\"4:440affb2ca6b1b6c687a06de11203681e11e66418e132c5488d8f31d31b5bb87\",\"4:a54e2a19e662fa52959264c62752d1b9242953f90c883776f682bd67ddcd76e6\",\"4:8d988c2e7b009ff15a7f837eca088c07da18d2d4854827dc9917c34a11094e29\"]'),
('steam:11000014775b5fe', 'license:e984e0e62962810f3cac9acd0f4ecefefab9d08b', 'ip:79.191.75.115', '✞N4wik✞', 'discord:568503671772545024', 'API-ANTICHEAT Injection detected', 'BAN', '2021/07/05 13:42', 'live:844425745345522', 'xbl:2535435921593881', '[\"4:bf0f839fa98e1b6622ec4e5e582375e20ea85e85160f2b18c595be84b43ac0ea\",\"1:a3615969355a7fa5575bb09ebc68c9fd204cd006f5f9abbd261070245723ae7b\",\"4:f769347b49c02e941da7c4dab73c741cf70d0c81764d8057f7d1fe770f36e3e9\",\"4:8d79028a701fda9a36c6c2073aaeb4c5027c523dc0da6b9805972d146d1d2f56\",\"4:090345b206c51f9aadf1ad7b0ad775a6c57a1bf63b662eca1701ad2437454186\",\"4:4f72b46688b002db5bdd78aefeb8d6baef99d28fd599ac68185a0956d23a9aa7\",\"4:9ca48e0735aee11ce72155440d9b7e16ef6f3866cadce1d6acdf321adbd74a6d\",\"3:58fd4a84f8012e728c0c4a9ae722ae86e3627028e1f7c4d027b99115a49c820d\",\"4:0d79854f00784bbd970ff7ac8bf8e17c4c68f68cf72bfea5afdf8f519dd39f4d\",\"4:f8bb177aa5d4589c59dc2b3a081e2571fb868ef12c2cbcfb73fbba93e240ce04\"]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Mieszkanie', 0),
('property_103424', 'Chata', 1),
('property_103547', 'Chata', 1),
('property_10560', 'Chata', 1),
('property_106079', 'Chata', 1),
('property_107026', 'Chata', 1),
('property_126343', 'Chata', 1),
('property_135346', 'Chata', 1),
('property_13886', 'Chata', 1),
('property_154602', 'Chata', 1),
('property_156952', 'Chata', 1),
('property_169770', 'Chata', 1),
('property_172974', 'Chata', 1),
('property_193726', 'Chata', 1),
('property_200196', 'Chata', 1),
('property_20264', 'Chata', 1),
('property_203064', 'Chata', 1),
('property_207276', 'Chata', 1),
('property_207856', 'Chata', 1),
('property_208649', 'Chata', 1),
('property_218781', 'Chata', 1),
('property_233521', 'Chata', 1),
('property_235382', 'Chata', 1),
('property_236542', 'Chata', 1),
('property_242005', 'Chata', 1),
('property_25269', 'Chata', 1),
('property_252808', 'Chata', 1),
('property_269593', 'Chata', 1),
('property_289429', 'Chata', 1),
('property_29053', 'Chata', 1),
('property_293305', 'Chata', 1),
('property_29389', 'Chata', 1),
('property_301514', 'Chata', 1),
('property_302246', 'Chata', 1),
('property_305145', 'Chata', 1),
('property_3052', 'Chata', 1),
('property_33539', 'Chata', 1),
('property_339600', 'Chata', 1),
('property_350983', 'Chata', 1),
('property_365631', 'Chata', 1),
('property_366760', 'Chata', 1),
('property_370361', 'Chata', 1),
('property_373139', 'Chata', 1),
('property_378967', 'Chata', 1),
('property_384583', 'Chata', 1),
('property_38636', 'Chata', 1),
('property_386749', 'Chata', 1),
('property_400726', 'Chata', 1),
('property_400757', 'Chata', 1),
('property_400910', 'Chata', 1),
('property_405274', 'Chata', 1),
('property_408325', 'Chata', 1),
('property_410980', 'Chata', 1),
('property_415131', 'Chata', 1),
('property_427460', 'Chata', 1),
('property_433319', 'Chata', 1),
('property_434113', 'Chata', 1),
('property_436340', 'Chata', 1),
('property_438263', 'Chata', 1),
('property_455627', 'Chata', 1),
('property_456421', 'Chata', 1),
('property_456574', 'Chata', 1),
('property_480499', 'Chata', 1),
('property_48096', 'Chata', 1),
('property_483002', 'Chata', 1),
('property_486328', 'Chata', 1),
('property_487518', 'Chata', 1),
('property_490967', 'Chata', 1),
('property_492096', 'Chata', 1),
('property_49286', 'Chata', 1),
('property_493774', 'Chata', 1),
('property_49805', 'Chata', 1),
('property_530334', 'Chata', 1),
('property_535828', 'Chata', 1),
('property_537048', 'Chata', 1),
('property_54413', 'Chata', 1),
('property_556793', 'Chata', 1),
('property_559418', 'Chata', 1),
('property_566162', 'Chata', 1),
('property_576416', 'Chata', 1),
('property_581085', 'Chata', 1),
('property_587036', 'Chata', 1),
('property_591766', 'Chata', 1),
('property_593201', 'Chata', 1),
('property_594574', 'Chata', 1),
('property_598572', 'Chata', 1),
('property_603668', 'Chata', 1),
('property_605163', 'Chata', 1),
('property_608612', 'Chata', 1),
('property_612121', 'Chata', 1),
('property_623047', 'Chata', 1),
('property_631775', 'Chata', 1),
('property_642700', 'Chata', 1),
('property_644195', 'Chata', 1),
('property_651062', 'Chata', 1),
('property_651977', 'Chata', 1),
('property_658722', 'Chata', 1),
('property_685089', 'Chata', 1),
('property_726440', 'Chata', 1),
('property_7325', 'Chata', 1),
('property_737732', 'Chata', 1),
('property_738617', 'Chata', 1),
('property_740112', 'Chata', 1),
('property_741852', 'Chata', 1),
('property_744781', 'Chata', 1),
('property_752472', 'Chata', 1),
('property_752746', 'Chata', 1),
('property_757843', 'Chata', 1),
('property_764496', 'Chata', 1),
('property_765808', 'Chata', 1),
('property_774139', 'Chata', 1),
('property_783966', 'Chata', 1),
('property_798645', 'Chata', 1),
('property_799835', 'Chata', 1),
('property_800171', 'Chata', 1),
('property_801574', 'Chata', 1),
('property_80201', 'Chata', 1),
('property_802398', 'Chata', 1),
('property_804565', 'Chata', 1),
('property_805267', 'Chata', 1),
('property_806060', 'Chata', 1),
('property_806488', 'Chata', 1),
('property_806945', 'Chata', 1),
('property_808654', 'Chata', 1),
('property_812164', 'Chata', 1),
('property_813080', 'Chata', 1),
('property_815185', 'Chata', 1),
('property_820160', 'Chata', 1),
('property_820648', 'Chata', 1),
('property_833801', 'Chata', 1),
('property_841644', 'Chata', 1),
('property_847412', 'Chata', 1),
('property_850006', 'Chata', 1),
('property_853943', 'Chata', 1),
('property_858184', 'Chata', 1),
('property_865112', 'Chata', 1),
('property_866211', 'Chata', 1),
('property_870361', 'Chata', 1),
('property_875640', 'Chata', 1),
('property_884857', 'Chata', 1),
('property_897308', 'Chata', 1),
('property_90271', 'Chata', 1),
('property_906494', 'Chata', 1),
('property_908691', 'Chata', 1),
('property_909210', 'Chata', 1),
('property_917388', 'Chata', 1),
('property_918365', 'Chata', 1),
('property_920654', 'Chata', 1),
('property_922149', 'Chata', 1),
('property_927673', 'Chata', 1),
('property_935485', 'Chata', 1),
('property_942504', 'Chata', 1),
('property_942718', 'Chata', 1),
('property_949005', 'Chata', 1),
('property_951843', 'Chata', 1),
('property_956939', 'Chata', 1),
('property_970886', 'Chata', 1),
('property_981719', 'Chata', 1),
('property_982543', 'Chata', 1),
('property_983398', 'Chata', 1),
('property_98511', 'Chata', 1),
('society_ambulance', 'EMS', 1),
('society_burgershot', 'Burgershot', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_VINTAGEPISTOL\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"combatpistol\",\"count\":0},{\"name\":\"WEAPON_PISTOL\",\"count\":27},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":0},{\"name\":\"pistol_mk2\",\"count\":0},{\"name\":\"carbinerifle\",\"count\":0},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":5},{\"name\":\"pumpshotgun\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":4},{\"name\":\"AMMO_PISTOL\",\"count\":1},{\"name\":\"WEAPON_FLAREGUN\",\"count\":1},{\"name\":\"WEAPON_KNIFE\",\"count\":2}]}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_mechanic', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'society_burgershot', NULL, '{}'),
(944, 'property_10560', NULL, '{}'),
(945, 'property_107026', NULL, '{}'),
(946, 'property_135346', NULL, '{}'),
(947, 'property_13886', NULL, '{}'),
(948, 'property_156952', NULL, '{}'),
(949, 'property_169770', NULL, '{}'),
(950, 'property_172974', NULL, '{}'),
(951, 'property_193726', NULL, '{}'),
(952, 'property_200196', NULL, '{}'),
(953, 'property_207276', NULL, '{}'),
(954, 'property_218781', NULL, '{}'),
(955, 'property_25269', NULL, '{}'),
(956, 'property_269593', NULL, '{}'),
(957, 'property_289429', NULL, '{}'),
(958, 'property_29053', NULL, '{}'),
(959, 'property_293305', NULL, '{}'),
(960, 'property_29389', NULL, '{}'),
(961, 'property_301514', NULL, '{}'),
(962, 'property_302246', NULL, '{}'),
(963, 'property_3052', NULL, '{}'),
(964, 'property_33539', NULL, '{}'),
(965, 'property_339600', NULL, '{}'),
(966, 'property_365631', NULL, '{}'),
(967, 'property_370361', NULL, '{}'),
(968, 'property_378967', NULL, '{}'),
(969, 'property_386749', NULL, '{}'),
(970, 'property_427460', NULL, '{}'),
(971, 'property_434113', NULL, '{}'),
(972, 'property_436340', NULL, '{}'),
(973, 'property_438263', NULL, '{}'),
(974, 'property_455627', NULL, '{}'),
(975, 'property_456421', NULL, '{}'),
(976, 'property_456574', NULL, '{}'),
(977, 'property_480499', NULL, '{}'),
(978, 'property_48096', NULL, '{}'),
(979, 'property_483002', NULL, '{}'),
(980, 'property_486328', NULL, '{}'),
(981, 'property_487518', NULL, '{}'),
(982, 'property_490967', NULL, '{}'),
(983, 'property_493774', NULL, '{}'),
(984, 'property_49805', NULL, '{}'),
(985, 'property_530334', NULL, '{}'),
(986, 'property_54413', NULL, '{}'),
(987, 'property_559418', NULL, '{}'),
(988, 'property_566162', NULL, '{}'),
(989, 'property_576416', NULL, '{}'),
(990, 'property_581085', NULL, '{}'),
(991, 'property_587036', NULL, '{}'),
(992, 'property_598572', NULL, '{}'),
(993, 'property_603668', NULL, '{}'),
(994, 'property_612121', NULL, '{}'),
(995, 'property_642700', NULL, '{}'),
(996, 'property_644195', NULL, '{}'),
(997, 'property_651062', NULL, '{}'),
(998, 'property_658722', NULL, '{}'),
(999, 'property_685089', NULL, '{}'),
(1000, 'property_726440', NULL, '{}'),
(1001, 'property_7325', NULL, '{}'),
(1002, 'property_737732', NULL, '{}'),
(1003, 'property_740112', NULL, '{}'),
(1004, 'property_752472', NULL, '{}'),
(1005, 'property_757843', NULL, '{}'),
(1006, 'property_774139', NULL, '{}'),
(1007, 'property_783966', NULL, '{}'),
(1008, 'property_798645', NULL, '{}'),
(1009, 'property_799835', NULL, '{}'),
(1010, 'property_802398', NULL, '{}'),
(1011, 'property_805267', NULL, '{}'),
(1012, 'property_806060', NULL, '{}'),
(1013, 'property_806945', NULL, '{}'),
(1014, 'property_812164', NULL, '{}'),
(1015, 'property_815185', NULL, '{}'),
(1016, 'property_820160', NULL, '{\"weapons\":[]}'),
(1017, 'property_820648', NULL, '{}'),
(1018, 'property_841644', NULL, '{}'),
(1019, 'property_850006', NULL, '{}'),
(1020, 'property_870361', NULL, '{}'),
(1021, 'property_875640', NULL, '{}'),
(1022, 'property_884857', NULL, '{}'),
(1023, 'property_90271', NULL, '{\"weapons\":[]}'),
(1024, 'property_906494', NULL, '{}'),
(1025, 'property_909210', NULL, '{}'),
(1026, 'property_922149', NULL, '{}'),
(1027, 'property_935485', NULL, '{}'),
(1028, 'property_942504', NULL, '{}'),
(1029, 'property_942718', NULL, '{}'),
(1030, 'property_949005', NULL, '{}'),
(1031, 'property_981719', NULL, '{}'),
(1032, 'property_982543', NULL, '{}'),
(1033, 'property_98511', NULL, '{}'),
(1034, 'property', '110000115a5ea25', '{}'),
(1035, 'user_ears', '110000115a5ea25', '{}'),
(1036, 'user_glasses', '110000115a5ea25', '{}'),
(1037, 'user_helmet', '110000115a5ea25', '{}'),
(1038, 'user_mask', '110000115a5ea25', '{}'),
(1039, 'property', '1100001479df7f9', '{}'),
(1040, 'user_ears', '1100001479df7f9', '{}'),
(1041, 'user_glasses', '1100001479df7f9', '{}'),
(1042, 'user_helmet', '1100001479df7f9', '{}'),
(1043, 'user_mask', '1100001479df7f9', '{}'),
(1044, 'property', '110000140e97ef6', '{}'),
(1045, 'user_ears', '110000140e97ef6', '{}'),
(1046, 'user_glasses', '110000140e97ef6', '{}'),
(1047, 'user_helmet', '110000140e97ef6', '{}'),
(1048, 'user_mask', '110000140e97ef6', '{}'),
(1049, 'property', '110000144511153', '{}'),
(1050, 'user_ears', '110000144511153', '{}'),
(1051, 'user_glasses', '110000144511153', '{}'),
(1052, 'user_helmet', '110000144511153', '{}'),
(1053, 'user_mask', '110000144511153', '{}'),
(1054, 'property', '1100001430a643f', '{}'),
(1055, 'user_ears', '1100001430a643f', '{}'),
(1056, 'user_glasses', '1100001430a643f', '{}'),
(1057, 'user_helmet', '1100001430a643f', '{}'),
(1058, 'user_mask', '1100001430a643f', '{}'),
(1059, 'property', '11000013c1beefe', '{}'),
(1060, 'user_ears', '11000013c1beefe', '{}'),
(1061, 'user_glasses', '11000013c1beefe', '{}'),
(1062, 'user_helmet', '11000013c1beefe', '{}'),
(1063, 'user_mask', '11000013c1beefe', '{}'),
(1064, 'property', '1100001365d4c9f', '{}'),
(1065, 'user_ears', '1100001365d4c9f', '{}'),
(1066, 'user_glasses', '1100001365d4c9f', '{}'),
(1067, 'user_helmet', '1100001365d4c9f', '{}'),
(1068, 'user_mask', '1100001365d4c9f', '{}'),
(1069, 'property', '11000010abcd934', '{}'),
(1070, 'user_ears', '11000010abcd934', '{}'),
(1071, 'user_glasses', '11000010abcd934', '{}'),
(1072, 'user_helmet', '11000010abcd934', '{}'),
(1073, 'user_mask', '11000010abcd934', '{}'),
(1074, 'property', '110000141024428', '{}'),
(1075, 'user_ears', '110000141024428', '{}'),
(1076, 'user_glasses', '110000141024428', '{}'),
(1077, 'user_helmet', '110000141024428', '{}'),
(1078, 'user_mask', '110000141024428', '{}'),
(1079, 'property', '110000147efb296', '{}'),
(1080, 'user_ears', '110000147efb296', '{}'),
(1081, 'user_glasses', '110000147efb296', '{}'),
(1082, 'user_helmet', '110000147efb296', '{}'),
(1083, 'user_mask', '110000147efb296', '{}'),
(1084, 'user_ears', '11000010c68ca4c', '{}'),
(1085, 'user_helmet', '11000010c68ca4c', '{}'),
(1086, 'user_glasses', '11000010c68ca4c', '{}'),
(1087, 'user_mask', '11000010c68ca4c', '{}'),
(1088, 'property', '11000010c68ca4c', '{\"dressing\":[{\"skin\":{\"eye_color\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"shoes_1\":25,\"beard_1\":10,\"mask_1\":0,\"tshirt_2\":0,\"arms\":1,\"torso_2\":11,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":15,\"helmet_1\":33,\"eyebrows_2\":0,\"beard_3\":3,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":6,\"hair_1\":13,\"arms_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"pants_1\":119,\"hair_color_1\":3,\"blemishes_1\":0,\"bracelets_2\":0,\"bracelets_1\":-1,\"glasses_1\":5,\"watches_2\":0,\"chest_2\":0,\"hair_2\":0,\"mask_2\":0,\"makeup_2\":0,\"bproof_2\":1,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"torso_1\":295,\"face\":12,\"moles_2\":0,\"skin\":11,\"helmet_2\":0,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"beard_2\":10,\"eyebrows_4\":0,\"hair_color_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"shoes_2\":0,\"pants_2\":0,\"bodyb_1\":0,\"sex\":0,\"lipstick_2\":0,\"decals_1\":0,\"blush_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"complexion_1\":0,\"decals_2\":0,\"chest_1\":0,\"ears_2\":0,\"watches_1\":-1,\"makeup_4\":0,\"eyebrows_1\":12,\"bodyb_2\":0,\"age_1\":0,\"bproof_1\":23},\"label\":\"mundur galowy\"},{\"skin\":{\"eye_color\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"blush_1\":0,\"beard_1\":10,\"mask_1\":0,\"decals_1\":0,\"arms\":0,\"torso_2\":0,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":122,\"watches_1\":-1,\"eyebrows_2\":0,\"beard_3\":3,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":6,\"hair_1\":13,\"arms_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"pants_1\":119,\"hair_color_1\":3,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":0,\"glasses_1\":5,\"watches_2\":0,\"chest_2\":0,\"hair_2\":0,\"mask_2\":0,\"makeup_2\":0,\"bproof_2\":1,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"torso_1\":308,\"face\":12,\"moles_2\":0,\"decals_2\":0,\"helmet_2\":1,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"skin\":11,\"chest_1\":0,\"eyebrows_4\":0,\"chest_3\":0,\"lipstick_1\":0,\"bracelets_1\":-1,\"pants_2\":0,\"bodyb_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"shoes_2\":0,\"complexion_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"bodyb_1\":0,\"sex\":0,\"shoes_1\":25,\"ears_2\":0,\"helmet_1\":44,\"makeup_4\":0,\"eyebrows_1\":12,\"age_1\":0,\"beard_2\":10,\"bproof_1\":23},\"label\":\"MUNDUR 1\"}]}'),
(1089, 'property', '1100001369d2602', '{\"dressing\":[{\"skin\":{\"chain_1\":0,\"bproof_2\":0,\"chest_3\":0,\"eyebrows_4\":0,\"blush_2\":0,\"helmet_2\":0,\"beard_2\":0,\"beard_4\":0,\"age_2\":0,\"ears_1\":-1,\"torso_1\":62,\"makeup_4\":0,\"bodyb_2\":0,\"blemishes_1\":0,\"bproof_1\":0,\"tshirt_1\":13,\"glasses_1\":5,\"hair_color_2\":0,\"moles_2\":0,\"watches_2\":0,\"eyebrows_1\":0,\"lipstick_4\":0,\"mask_1\":148,\"face\":0,\"helmet_1\":24,\"eyebrows_2\":0,\"lipstick_1\":0,\"complexion_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"skin\":4,\"bodyb_1\":0,\"shoes_1\":2,\"age_1\":0,\"shoes_2\":0,\"blemishes_2\":0,\"sun_1\":0,\"bracelets_2\":0,\"hair_2\":0,\"pants_2\":0,\"chest_1\":0,\"eye_color\":0,\"complexion_1\":0,\"lipstick_3\":0,\"arms_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"watches_1\":-1,\"decals_1\":0,\"beard_1\":0,\"bracelets_1\":-1,\"hair_1\":11,\"bags_1\":0,\"arms\":1,\"chest_2\":0,\"sun_2\":0,\"makeup_3\":0,\"moles_1\":0,\"blush_1\":0,\"beard_3\":0,\"pants_1\":24,\"sex\":0,\"decals_2\":0,\"ears_2\":0,\"glasses_2\":11,\"torso_2\":0,\"makeup_2\":0,\"mask_2\":0,\"bags_2\":0},\"label\":\"Elegant\"}]}'),
(1090, 'user_ears', '1100001369d2602', '{}'),
(1091, 'user_glasses', '1100001369d2602', '{}'),
(1092, 'user_mask', '1100001369d2602', '{}'),
(1093, 'user_helmet', '1100001369d2602', '{}'),
(1094, 'user_ears', '1100001183f79f1', '{}'),
(1095, 'property', '1100001183f79f1', '{}'),
(1096, 'user_glasses', '1100001183f79f1', '{}'),
(1097, 'user_helmet', '1100001183f79f1', '{}'),
(1098, 'user_mask', '1100001183f79f1', '{}'),
(1099, 'property', '1100001454c06a0', '{}'),
(1100, 'user_ears', '1100001454c06a0', '{}'),
(1101, 'user_glasses', '1100001454c06a0', '{}'),
(1102, 'user_helmet', '1100001454c06a0', '{}'),
(1103, 'user_mask', '1100001454c06a0', '{}'),
(1104, 'property', '1100001124f0954', '{}'),
(1105, 'user_ears', '1100001124f0954', '{}'),
(1106, 'user_glasses', '1100001124f0954', '{}'),
(1107, 'user_helmet', '1100001124f0954', '{}'),
(1108, 'user_mask', '1100001124f0954', '{}'),
(1109, 'property', '11000011769c15e', '{}'),
(1110, 'user_ears', '11000011769c15e', '{}'),
(1111, 'user_glasses', '11000011769c15e', '{}'),
(1112, 'user_helmet', '11000011769c15e', '{}'),
(1113, 'user_mask', '11000011769c15e', '{}'),
(1114, 'property', '11000013fca94a6', '{}'),
(1115, 'user_ears', '11000013fca94a6', '{}'),
(1116, 'user_glasses', '11000013fca94a6', '{}'),
(1117, 'user_helmet', '11000013fca94a6', '{}'),
(1118, 'user_mask', '11000013fca94a6', '{}'),
(1119, 'property', '11000013b094ff8', '{}'),
(1120, 'user_ears', '11000013b094ff8', '{}'),
(1121, 'user_glasses', '11000013b094ff8', '{}'),
(1122, 'user_helmet', '11000013b094ff8', '{}'),
(1123, 'user_mask', '11000013b094ff8', '{}'),
(1124, 'property', '110000132efe10b', '{}'),
(1125, 'user_glasses', '110000132efe10b', '{}'),
(1126, 'user_mask', '110000132efe10b', '{}'),
(1127, 'user_ears', '110000132efe10b', '{}'),
(1128, 'user_helmet', '110000132efe10b', '{}'),
(1129, 'property', '11000013e2efbf1', '{}'),
(1130, 'user_ears', '11000013e2efbf1', '{}'),
(1131, 'user_glasses', '11000013e2efbf1', '{}'),
(1132, 'user_helmet', '11000013e2efbf1', '{}'),
(1133, 'user_mask', '11000013e2efbf1', '{}'),
(1134, 'property', '110000116a199f2', '{}'),
(1135, 'user_ears', '110000116a199f2', '{}'),
(1136, 'user_glasses', '110000116a199f2', '{}'),
(1137, 'user_helmet', '110000116a199f2', '{}'),
(1138, 'user_mask', '110000116a199f2', '{}'),
(1139, 'property', '11000011b29d297', '{\"dressing\":[{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"blush_1\":0,\"beard_1\":7,\"mask_1\":0,\"tshirt_2\":3,\"arms\":17,\"torso_2\":2,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":75,\"watches_1\":-1,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":28,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":63,\"glasses_1\":0,\"watches_2\":0,\"decals_2\":0,\"hair_2\":0,\"mask_2\":0,\"age_1\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"torso_1\":59,\"face\":4,\"moles_2\":0,\"skin\":0,\"helmet_2\":0,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"eyebrows_4\":0,\"bodyb_2\":0,\"bracelets_1\":-1,\"chest_3\":0,\"lipstick_1\":0,\"chest_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"sex\":0,\"decals_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"complexion_1\":0,\"makeup_2\":0,\"ears_2\":0,\"helmet_1\":-1,\"makeup_4\":0,\"chest_2\":0,\"eyebrows_1\":4,\"shoes_1\":10,\"beard_2\":10,\"bproof_1\":0},\"label\":\"Normi\"},{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"blush_1\":0,\"beard_1\":7,\"mask_1\":94,\"tshirt_2\":0,\"arms\":32,\"torso_2\":0,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":31,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":63,\"glasses_1\":0,\"watches_2\":0,\"chest_2\":0,\"hair_2\":0,\"mask_2\":3,\"age_1\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"eyebrows_4\":0,\"torso_1\":205,\"face\":4,\"moles_2\":0,\"skin\":0,\"helmet_2\":0,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"lipstick_4\":0,\"bodyb_2\":0,\"bracelets_1\":-1,\"chest_3\":0,\"lipstick_1\":0,\"beard_2\":10,\"pants_2\":2,\"bodyb_1\":0,\"sex\":0,\"lipstick_2\":0,\"decals_1\":0,\"complexion_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"ears_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"chest_1\":0,\"makeup_2\":0,\"watches_1\":-1,\"eyebrows_1\":4,\"decals_2\":0,\"shoes_1\":24,\"bproof_1\":0},\"label\":\"JEEPOWY\"},{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"blush_1\":0,\"beard_1\":7,\"mask_1\":94,\"tshirt_2\":4,\"arms\":17,\"torso_2\":0,\"chain_1\":19,\"complexion_2\":0,\"tshirt_1\":21,\"helmet_1\":-1,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":24,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":63,\"glasses_1\":0,\"watches_2\":0,\"decals_2\":0,\"hair_2\":0,\"mask_2\":3,\"age_1\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"torso_1\":142,\"face\":4,\"moles_2\":0,\"skin\":0,\"helmet_2\":0,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"chest_2\":0,\"bodyb_2\":0,\"bracelets_1\":-1,\"chest_3\":0,\"lipstick_1\":0,\"chest_1\":0,\"pants_2\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"sex\":0,\"decals_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"makeup_4\":0,\"complexion_1\":0,\"beard_2\":10,\"eyebrows_4\":0,\"ears_2\":0,\"makeup_2\":0,\"eyebrows_1\":4,\"watches_1\":-1,\"shoes_1\":10,\"bproof_1\":0},\"label\":\"demek eleganto\"},{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"blush_1\":0,\"beard_1\":7,\"mask_1\":94,\"tshirt_2\":4,\"arms\":17,\"torso_2\":0,\"chain_1\":19,\"complexion_2\":0,\"tshirt_1\":21,\"helmet_1\":25,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":24,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"bracelets_1\":-1,\"glasses_1\":0,\"watches_2\":0,\"decals_2\":0,\"hair_2\":0,\"mask_2\":3,\"age_1\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"eyebrows_4\":0,\"torso_1\":142,\"face\":4,\"moles_2\":0,\"skin\":0,\"helmet_2\":1,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"ears_2\":0,\"chest_2\":0,\"hair_color_2\":63,\"chest_3\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"pants_2\":0,\"makeup_4\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"sex\":0,\"decals_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"chest_1\":0,\"complexion_1\":0,\"lipstick_3\":0,\"beard_2\":10,\"makeup_2\":0,\"eyebrows_1\":4,\"watches_1\":-1,\"shoes_1\":10,\"bproof_1\":0},\"label\":\"elegant\"},{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"shoes_1\":10,\"beard_1\":7,\"mask_1\":0,\"tshirt_2\":0,\"arms\":88,\"torso_2\":1,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":24,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":63,\"glasses_1\":0,\"watches_2\":0,\"chest_2\":0,\"hair_2\":0,\"mask_2\":3,\"makeup_2\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"eyebrows_4\":0,\"torso_1\":139,\"face\":4,\"moles_2\":0,\"skin\":0,\"helmet_2\":0,\"sun_2\":0,\"bags_2\":10,\"bags_1\":21,\"beard_2\":10,\"bracelets_1\":-1,\"chest_1\":0,\"chest_3\":0,\"lipstick_1\":0,\"shoes_2\":0,\"pants_2\":5,\"decals_2\":0,\"bodyb_1\":0,\"lipstick_2\":0,\"sex\":0,\"decals_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"makeup_4\":0,\"complexion_1\":0,\"bodyb_2\":0,\"lipstick_3\":0,\"ears_2\":0,\"blush_1\":0,\"eyebrows_1\":4,\"watches_1\":-1,\"age_1\":0,\"bproof_1\":0},\"label\":\"MEDIK\"},{\"skin\":{\"eye_color\":1,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"blush_1\":0,\"beard_1\":7,\"mask_1\":125,\"tshirt_2\":0,\"arms\":85,\"torso_2\":0,\"chain_1\":0,\"complexion_2\":0,\"tshirt_1\":55,\"watches_1\":-1,\"eyebrows_2\":10,\"beard_3\":11,\"sun_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"glasses_2\":0,\"hair_1\":10,\"arms_2\":0,\"eyebrows_3\":14,\"chain_2\":0,\"pants_1\":117,\"hair_color_1\":10,\"blemishes_1\":0,\"bracelets_2\":0,\"hair_color_2\":63,\"glasses_1\":0,\"watches_2\":0,\"chest_2\":0,\"hair_2\":0,\"mask_2\":15,\"age_1\":0,\"bproof_2\":0,\"moles_1\":0,\"age_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"torso_1\":304,\"face\":4,\"moles_2\":0,\"makeup_4\":0,\"helmet_2\":24,\"sun_2\":0,\"bags_2\":0,\"bags_1\":0,\"skin\":0,\"bracelets_1\":-1,\"shoes_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"helmet_1\":119,\"pants_2\":0,\"ears_2\":0,\"bodyb_1\":0,\"beard_2\":10,\"sex\":0,\"decals_1\":0,\"blush_2\":0,\"blemishes_2\":0,\"complexion_1\":0,\"makeup_2\":0,\"chest_1\":0,\"eyebrows_4\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"eyebrows_1\":4,\"decals_2\":0,\"shoes_1\":25,\"bproof_1\":39},\"label\":\"medik sert\"}]}'),
(1140, 'user_ears', '11000011b29d297', '{\"skin\":{\"ears_2\":0,\"ears_1\":-1},\"hasears\":true}'),
(1141, 'user_glasses', '11000011b29d297', '{\"skin\":{\"glasses_2\":0,\"glasses_1\":0},\"hasglasses\":true}'),
(1142, 'user_helmet', '11000011b29d297', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":-1},\"hashelmet\":true}'),
(1143, 'user_mask', '11000011b29d297', '{\"hasmask\":true,\"skin\":{\"mask_2\":3,\"mask_1\":0}}'),
(1144, 'property', '11000011451424b', '{}'),
(1145, 'user_ears', '11000011451424b', '{}'),
(1146, 'user_glasses', '11000011451424b', '{}'),
(1147, 'user_helmet', '11000011451424b', '{}'),
(1148, 'user_mask', '11000011451424b', '{}'),
(1149, 'property', '110000148e94bde', '{\"dressing\":[{\"label\":\"essa\",\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":31,\"bodyb_2\":0,\"torso_1\":200,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":23,\"blush_3\":0,\"eyebrows_1\":0,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":53,\"bracelets_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":51,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":0,\"pants_2\":1,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"makeup_1\":0,\"bracelets_2\":0,\"age_2\":0,\"decals_2\":0,\"beard_1\":0,\"sex\":0,\"hair_2\":0,\"complexion_2\":0,\"torso_2\":8,\"blush_2\":0,\"bags_2\":7,\"mask_2\":6,\"lipstick_1\":0,\"complexion_1\":0,\"eye_color\":0,\"glasses_1\":0,\"beard_3\":0,\"helmet_1\":-1,\"decals_1\":0,\"hair_color_1\":33,\"face\":0,\"eyebrows_4\":0,\"blush_1\":0,\"sun_2\":0,\"shoes_2\":1,\"hair_color_2\":0,\"arms\":30,\"blemishes_1\":0,\"pants_1\":4,\"sun_1\":0,\"watches_2\":0}},{\"label\":\"essa2\",\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":75,\"bodyb_2\":0,\"torso_1\":200,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":23,\"blush_3\":0,\"eyebrows_1\":0,\"hair_color_1\":33,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":53,\"decals_1\":0,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":51,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":0,\"pants_2\":1,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"bracelets_1\":-1,\"decals_2\":0,\"beard_1\":0,\"sex\":0,\"lipstick_1\":0,\"torso_2\":8,\"mask_2\":6,\"blush_2\":0,\"bags_2\":7,\"glasses_1\":0,\"complexion_2\":0,\"complexion_1\":0,\"beard_3\":0,\"watches_2\":0,\"eye_color\":0,\"helmet_1\":-1,\"blemishes_1\":0,\"watches_1\":-1,\"makeup_1\":0,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":10,\"hair_color_2\":0,\"arms\":30,\"face\":0,\"pants_1\":4,\"sun_1\":0,\"blush_1\":0}},{\"label\":\"sasdasd\",\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":31,\"bodyb_2\":0,\"torso_1\":260,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":10,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":10,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":0,\"blush_3\":0,\"eyebrows_1\":9,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":3,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":0,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"makeup_1\":0,\"bracelets_2\":0,\"hair_color_1\":33,\"decals_2\":0,\"beard_1\":10,\"sex\":0,\"hair_2\":0,\"face\":0,\"torso_2\":17,\"blush_2\":0,\"bags_2\":0,\"beard_3\":0,\"lipstick_1\":0,\"complexion_1\":0,\"eye_color\":0,\"glasses_1\":0,\"complexion_2\":0,\"mask_2\":0,\"helmet_1\":-1,\"decals_1\":0,\"blush_1\":0,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":1,\"hair_color_2\":0,\"arms\":30,\"blemishes_1\":0,\"pants_1\":6,\"sun_1\":10,\"watches_2\":0}},{\"label\":\"white\",\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":6,\"bodyb_2\":0,\"torso_1\":260,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":10,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":10,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":0,\"blush_3\":0,\"eyebrows_1\":9,\"hair_color_1\":0,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":14,\"decals_1\":0,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":2,\"mask_1\":3,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":0,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"blemishes_1\":0,\"decals_2\":0,\"beard_1\":10,\"sex\":0,\"torso_2\":17,\"eye_color\":0,\"helmet_1\":3,\"blush_2\":0,\"bags_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"complexion_1\":0,\"watches_2\":0,\"mask_2\":0,\"beard_3\":0,\"complexion_2\":0,\"watches_1\":-1,\"bracelets_1\":-1,\"makeup_1\":0,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"arms\":0,\"face\":0,\"pants_1\":6,\"sun_1\":10,\"blush_1\":0}},{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":6,\"bodyb_2\":0,\"torso_1\":200,\"glasses_1\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":10,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":10,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":0,\"blush_1\":0,\"eyebrows_1\":9,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":14,\"bracelets_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":51,\"watches_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":0,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"blush_3\":0,\"decals_2\":0,\"beard_1\":10,\"beard_3\":0,\"age_2\":0,\"sex\":0,\"torso_2\":25,\"blush_2\":0,\"bags_2\":0,\"eyebrows_3\":0,\"lipstick_1\":0,\"complexion_1\":0,\"mask_2\":9,\"complexion_2\":0,\"eye_color\":0,\"arms_2\":0,\"helmet_1\":-1,\"makeup_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"hair_color_1\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"arms\":0,\"blemishes_1\":0,\"pants_1\":6,\"sun_1\":10,\"face\":0},\"label\":\"super\"}]}'),
(1150, 'user_glasses', '110000148e94bde', '{\"skin\":{\"glasses_1\":0,\"glasses_2\":0},\"hasglasses\":true}'),
(1151, 'user_helmet', '110000148e94bde', '{\"hashelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":-1}}'),
(1152, 'user_mask', '110000148e94bde', '{\"skin\":{\"mask_2\":0,\"mask_1\":3},\"hasmask\":true}'),
(1153, 'user_ears', '110000148e94bde', '{\"skin\":{\"ears_2\":0,\"ears_1\":-1},\"hasears\":true}'),
(1154, 'property', '1100001178e5843', '{\"dressing\":[{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":16,\"shoes_1\":25,\"bodyb_2\":0,\"torso_1\":200,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":6,\"blemishes_2\":0,\"eyebrows_2\":8,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":23,\"blush_3\":0,\"eyebrows_1\":4,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":42,\"bracelets_1\":-1,\"tshirt_2\":2,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":51,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":8,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":7,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"makeup_1\":0,\"decals_2\":0,\"beard_1\":0,\"decals_1\":0,\"sex\":0,\"torso_2\":8,\"beard_3\":0,\"blush_2\":0,\"bags_2\":7,\"blush_1\":0,\"lipstick_1\":0,\"complexion_1\":0,\"glasses_1\":15,\"mask_2\":6,\"helmet_1\":-1,\"hair_color_1\":33,\"eye_color\":0,\"complexion_2\":0,\"face\":0,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"arms\":17,\"blemishes_1\":0,\"pants_1\":33,\"sun_1\":0,\"watches_2\":0},\"label\":\"pink\"},{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":158,\"shoes_1\":51,\"bodyb_2\":0,\"torso_1\":309,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":8,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":0,\"blush_1\":0,\"eyebrows_1\":4,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":42,\"decals_1\":0,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":0,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":8,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":5,\"beard_4\":0,\"makeup_1\":0,\"bracelets_2\":0,\"face\":0,\"decals_2\":0,\"beard_1\":0,\"sex\":0,\"torso_2\":2,\"helmet_1\":-1,\"hair_2\":0,\"blush_2\":0,\"bags_2\":7,\"glasses_1\":5,\"lipstick_1\":0,\"complexion_1\":0,\"eye_color\":0,\"mask_2\":0,\"complexion_2\":0,\"blush_3\":0,\"beard_3\":0,\"hair_color_1\":33,\"bracelets_1\":-1,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"arms\":30,\"blemishes_1\":0,\"pants_1\":119,\"sun_1\":0,\"watches_2\":0},\"label\":\"sheriff \"},{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":154,\"shoes_1\":51,\"bodyb_2\":0,\"torso_1\":309,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":8,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":0,\"blush_1\":0,\"eyebrows_1\":4,\"hair_color_1\":33,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":42,\"bracelets_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":0,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":43,\"age_1\":0,\"skin\":8,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":5,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"age_2\":0,\"decals_2\":0,\"beard_1\":0,\"helmet_1\":-1,\"sex\":0,\"torso_2\":2,\"beard_3\":0,\"blush_2\":0,\"bags_2\":7,\"pants_1\":119,\"complexion_2\":0,\"complexion_1\":0,\"glasses_1\":5,\"lipstick_1\":0,\"decals_1\":0,\"eye_color\":0,\"face\":0,\"mask_2\":0,\"makeup_1\":0,\"eyebrows_4\":0,\"blush_3\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"arms\":30,\"blemishes_1\":0,\"watches_1\":-1,\"sun_1\":0,\"watches_2\":0},\"label\":\"Sheriif + kamza taktyczna\"}]}'),
(1155, 'user_ears', '1100001178e5843', '{\"hasears\":true,\"skin\":{\"ears_1\":-1,\"ears_2\":0}}'),
(1156, 'user_glasses', '1100001178e5843', '{\"hasglasses\":true,\"skin\":{\"glasses_2\":5,\"glasses_1\":5}}'),
(1157, 'user_helmet', '1100001178e5843', '{\"hashelmet\":true,\"skin\":{\"helmet_1\":-1,\"helmet_2\":0}}'),
(1158, 'user_mask', '1100001178e5843', '{\"hasmask\":true,\"skin\":{\"mask_1\":0,\"mask_2\":0}}'),
(1159, 'property', '110000141e40c52', '{}'),
(1160, 'user_ears', '110000141e40c52', '{}'),
(1161, 'user_glasses', '110000141e40c52', '{}'),
(1162, 'user_helmet', '110000141e40c52', '{}'),
(1163, 'user_mask', '110000141e40c52', '{}'),
(1164, 'property', '11000011cf9d388', '{}'),
(1165, 'user_ears', '11000011cf9d388', '{}'),
(1166, 'user_glasses', '11000011cf9d388', '{}'),
(1167, 'user_helmet', '11000011cf9d388', '{}'),
(1168, 'user_mask', '11000011cf9d388', '{}'),
(1169, 'property', '11000013571d092', '{}'),
(1170, 'user_ears', '11000013571d092', '{}'),
(1171, 'user_glasses', '11000013571d092', '{}'),
(1172, 'user_helmet', '11000013571d092', '{}'),
(1173, 'user_mask', '11000013571d092', '{}'),
(1174, 'property', '11000011ce74f56', '{}'),
(1175, 'user_ears', '11000011ce74f56', '{}'),
(1176, 'user_glasses', '11000011ce74f56', '{}'),
(1177, 'user_helmet', '11000011ce74f56', '{}'),
(1178, 'user_mask', '11000011ce74f56', '{}'),
(1179, 'property', '11000013f755f8b', '{}'),
(1180, 'user_ears', '11000013f755f8b', '{}'),
(1181, 'user_glasses', '11000013f755f8b', '{}'),
(1182, 'user_helmet', '11000013f755f8b', '{}'),
(1183, 'user_mask', '11000013f755f8b', '{}'),
(1184, 'property', '110000107c1bed3', '{}'),
(1185, 'user_ears', '110000107c1bed3', '{}'),
(1186, 'user_glasses', '110000107c1bed3', '{}'),
(1187, 'user_helmet', '110000107c1bed3', '{}'),
(1188, 'user_mask', '110000107c1bed3', '{}'),
(1189, 'property', '1100001403bfd98', '{}'),
(1190, 'user_ears', '1100001403bfd98', '{}'),
(1191, 'user_glasses', '1100001403bfd98', '{}'),
(1192, 'user_helmet', '1100001403bfd98', '{}'),
(1193, 'user_mask', '1100001403bfd98', '{}'),
(1194, 'property', '110000113c980af', '{}'),
(1195, 'user_ears', '110000113c980af', '{}'),
(1196, 'user_glasses', '110000113c980af', '{}'),
(1197, 'user_helmet', '110000113c980af', '{}'),
(1198, 'user_mask', '110000113c980af', '{}'),
(1199, 'property', '11000013eb9d59c', '{}'),
(1200, 'user_ears', '11000013eb9d59c', '{}'),
(1201, 'user_glasses', '11000013eb9d59c', '{}'),
(1202, 'user_helmet', '11000013eb9d59c', '{}'),
(1203, 'user_mask', '11000013eb9d59c', '{}'),
(1204, 'property', '11000013d8d00d6', '{}'),
(1205, 'user_ears', '11000013d8d00d6', '{}'),
(1206, 'user_mask', '11000013d8d00d6', '{}'),
(1207, 'user_glasses', '11000013d8d00d6', '{}'),
(1208, 'user_helmet', '11000013d8d00d6', '{}'),
(1209, 'property', '11000013e808767', '{\"dressing\":[{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":31,\"bodyb_2\":0,\"torso_1\":8,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":23,\"blush_1\":0,\"eyebrows_1\":0,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":7,\"helmet_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":51,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"age_1\":0,\"skin\":8,\"pants_2\":1,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":0,\"beard_4\":0,\"makeup_1\":0,\"bracelets_2\":0,\"complexion_2\":0,\"decals_2\":0,\"beard_1\":0,\"decals_1\":0,\"eye_color\":0,\"sex\":0,\"bracelets_1\":-1,\"blush_2\":0,\"bags_2\":13,\"torso_2\":0,\"lipstick_1\":0,\"complexion_1\":0,\"hair_2\":0,\"glasses_1\":0,\"pants_1\":79,\"mask_2\":0,\"blush_3\":0,\"beard_3\":0,\"hair_color_1\":0,\"eyebrows_4\":0,\"age_2\":0,\"sun_2\":0,\"shoes_2\":0,\"hair_color_2\":29,\"arms\":8,\"blemishes_1\":0,\"face\":0,\"sun_1\":0,\"watches_2\":0},\"label\":\"askd\"}]}'),
(1210, 'user_ears', '11000013e808767', '{}'),
(1211, 'user_glasses', '11000013e808767', '{}'),
(1212, 'user_helmet', '11000013e808767', '{}'),
(1213, 'user_mask', '11000013e808767', '{}'),
(1214, 'property', '110000146ddcaf3', '{}'),
(1215, 'user_ears', '110000146ddcaf3', '{}'),
(1216, 'user_glasses', '110000146ddcaf3', '{}'),
(1217, 'user_helmet', '110000146ddcaf3', '{}'),
(1218, 'user_mask', '110000146ddcaf3', '{}'),
(1219, 'property', '11000010e4eb1bd', '{}'),
(1220, 'user_ears', '11000010e4eb1bd', '{}'),
(1221, 'user_glasses', '11000010e4eb1bd', '{}'),
(1222, 'user_helmet', '11000010e4eb1bd', '{}'),
(1223, 'user_mask', '11000010e4eb1bd', '{}'),
(1224, 'user_glasses', '11000014775b5fe', '{}'),
(1225, 'user_mask', '11000014775b5fe', '{}'),
(1226, 'user_helmet', '11000014775b5fe', '{}'),
(1227, 'property', '11000014775b5fe', '{}'),
(1228, 'user_ears', '11000014775b5fe', '{}'),
(1229, 'property', '11000010ee7807f', '{\"dressing\":[{\"skin\":{\"lipstick_4\":0,\"tshirt_1\":15,\"shoes_1\":31,\"bodyb_2\":0,\"torso_1\":84,\"eyebrows_3\":0,\"chest_2\":0,\"lipstick_2\":0,\"moles_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"beard_2\":10,\"chain_1\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"chest_3\":0,\"makeup_2\":0,\"bags_1\":23,\"blush_1\":0,\"eyebrows_1\":0,\"watches_1\":-1,\"chest_1\":0,\"bproof_2\":0,\"bodyb_1\":0,\"hair_1\":73,\"bracelets_1\":-1,\"tshirt_2\":0,\"ears_2\":0,\"helmet_2\":0,\"mask_1\":52,\"arms_2\":0,\"makeup_4\":0,\"bproof_1\":0,\"skin\":0,\"pants_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"chain_2\":0,\"glasses_2\":7,\"beard_4\":0,\"hair_2\":0,\"bracelets_2\":0,\"makeup_1\":0,\"decals_2\":0,\"beard_1\":14,\"age_2\":0,\"helmet_1\":-1,\"sex\":0,\"torso_2\":0,\"blush_2\":0,\"bags_2\":1,\"decals_1\":0,\"complexion_2\":0,\"complexion_1\":0,\"mask_2\":0,\"glasses_1\":5,\"pants_1\":13,\"lipstick_1\":0,\"beard_3\":0,\"face\":22,\"eye_color\":0,\"eyebrows_4\":0,\"hair_color_1\":0,\"sun_2\":0,\"shoes_2\":1,\"hair_color_2\":0,\"arms\":1,\"blemishes_1\":0,\"blush_3\":0,\"sun_1\":0,\"watches_2\":0},\"label\":\"Napad\"}]}'),
(1230, 'user_ears', '11000010ee7807f', '{}'),
(1231, 'user_glasses', '11000010ee7807f', '{}'),
(1232, 'user_helmet', '11000010ee7807f', '{}'),
(1233, 'user_mask', '11000010ee7807f', '{}'),
(1234, 'property', '110000147a942c6', '{}'),
(1235, 'user_ears', '110000147a942c6', '{}'),
(1236, 'user_glasses', '110000147a942c6', '{}'),
(1237, 'user_helmet', '110000147a942c6', '{}'),
(1238, 'user_mask', '110000147a942c6', '{}'),
(1239, 'property', '11000014683ac22', '{}'),
(1240, 'user_ears', '11000014683ac22', '{}'),
(1241, 'user_glasses', '11000014683ac22', '{}'),
(1242, 'user_helmet', '11000014683ac22', '{}'),
(1243, 'user_mask', '11000014683ac22', '{}'),
(1244, 'property', '110000139e3f4ee', '{}'),
(1245, 'user_ears', '110000139e3f4ee', '{}'),
(1246, 'user_glasses', '110000139e3f4ee', '{}'),
(1247, 'user_helmet', '110000139e3f4ee', '{}'),
(1248, 'user_mask', '110000139e3f4ee', '{}'),
(1249, 'property', '110000119d83bde', '{}'),
(1250, 'user_ears', '110000119d83bde', '{}'),
(1251, 'user_glasses', '110000119d83bde', '{}'),
(1252, 'user_helmet', '110000119d83bde', '{}'),
(1253, 'user_mask', '110000119d83bde', '{}'),
(1254, 'property', '110000113cd6594', '{}'),
(1255, 'user_ears', '110000113cd6594', '{}'),
(1256, 'user_glasses', '110000113cd6594', '{}'),
(1257, 'user_helmet', '110000113cd6594', '{}'),
(1258, 'user_mask', '110000113cd6594', '{}'),
(1259, 'property', '110000145326cbc', '{}'),
(1260, 'user_ears', '110000145326cbc', '{}'),
(1261, 'user_glasses', '110000145326cbc', '{}'),
(1262, 'user_helmet', '110000145326cbc', '{}'),
(1263, 'user_mask', '110000145326cbc', '{}'),
(1264, 'property', '110000114a0ca04', '{}'),
(1265, 'user_ears', '110000114a0ca04', '{}'),
(1266, 'user_glasses', '110000114a0ca04', '{}'),
(1267, 'user_helmet', '110000114a0ca04', '{}'),
(1268, 'user_mask', '110000114a0ca04', '{}'),
(1269, 'property', '11000011a7ecaeb', '{}'),
(1270, 'user_ears', '11000011a7ecaeb', '{}'),
(1271, 'user_glasses', '11000011a7ecaeb', '{}'),
(1272, 'user_helmet', '11000011a7ecaeb', '{}'),
(1273, 'user_mask', '11000011a7ecaeb', '{}'),
(1274, 'property', '11000011900882c', '{}'),
(1275, 'user_ears', '11000011900882c', '{}'),
(1276, 'user_glasses', '11000011900882c', '{}'),
(1277, 'user_helmet', '11000011900882c', '{}'),
(1278, 'user_mask', '11000011900882c', '{}'),
(1279, 'property', '1100001477d658b', '{}'),
(1280, 'user_ears', '1100001477d658b', '{}'),
(1281, 'user_glasses', '1100001477d658b', '{}'),
(1282, 'user_helmet', '1100001477d658b', '{}'),
(1283, 'user_mask', '1100001477d658b', '{}'),
(1284, 'property', '110000145685a64', '{}'),
(1285, 'user_ears', '110000145685a64', '{}'),
(1286, 'user_glasses', '110000145685a64', '{}'),
(1287, 'user_helmet', '110000145685a64', '{}'),
(1288, 'user_mask', '110000145685a64', '{}'),
(1289, 'property', '1100001434e9535', '{}'),
(1290, 'user_ears', '1100001434e9535', '{}'),
(1291, 'user_glasses', '1100001434e9535', '{}'),
(1292, 'user_helmet', '1100001434e9535', '{}'),
(1293, 'user_mask', '1100001434e9535', '{}'),
(1294, 'property', '11000014689c24f', '{}'),
(1295, 'user_ears', '11000014689c24f', '{}'),
(1296, 'user_glasses', '11000014689c24f', '{}'),
(1297, 'user_helmet', '11000014689c24f', '{}'),
(1298, 'user_mask', '11000014689c24f', '{}'),
(1299, 'property_103424', NULL, '{}'),
(1300, 'property_103547', NULL, '{}'),
(1301, 'property_106079', NULL, '{}'),
(1302, 'property_126343', NULL, '{}'),
(1303, 'property_154602', NULL, '{}'),
(1304, 'property_20264', NULL, '{}'),
(1305, 'property_203064', NULL, '{}'),
(1306, 'property_207856', NULL, '{}'),
(1307, 'property_208649', NULL, '{}'),
(1308, 'property_233521', NULL, '{}'),
(1309, 'property_235382', NULL, '{}'),
(1310, 'property_236542', NULL, '{}'),
(1311, 'property_242005', NULL, '{}'),
(1312, 'property_252808', NULL, '{}'),
(1313, 'property_305145', NULL, '{}'),
(1314, 'property_350983', NULL, '{}'),
(1315, 'property_366760', NULL, '{}'),
(1316, 'property_373139', NULL, '{}'),
(1317, 'property_384583', NULL, '{}'),
(1318, 'property_38636', NULL, '{}'),
(1319, 'property_400726', NULL, '{}'),
(1320, 'property_400757', NULL, '{}'),
(1321, 'property_400910', NULL, '{}'),
(1322, 'property_405274', NULL, '{}'),
(1323, 'property_408325', NULL, '{}'),
(1324, 'property_410980', NULL, '{}'),
(1325, 'property_415131', NULL, '{}'),
(1326, 'property_433319', NULL, '{}'),
(1327, 'property_492096', NULL, '{}'),
(1328, 'property_49286', NULL, '{}'),
(1329, 'property_535828', NULL, '{}'),
(1330, 'property_537048', NULL, '{}'),
(1331, 'property_556793', NULL, '{}'),
(1332, 'property_591766', NULL, '{}'),
(1333, 'property_593201', NULL, '{}'),
(1334, 'property_594574', NULL, '{}'),
(1335, 'property_605163', NULL, '{}'),
(1336, 'property_608612', NULL, '{}'),
(1337, 'property_623047', NULL, '{}'),
(1338, 'property_631775', NULL, '{}'),
(1339, 'property_651977', NULL, '{}'),
(1340, 'property_738617', NULL, '{}'),
(1341, 'property_741852', NULL, '{}'),
(1342, 'property_744781', NULL, '{}'),
(1343, 'property_752746', NULL, '{}'),
(1344, 'property_764496', NULL, '{}'),
(1345, 'property_765808', NULL, '{}'),
(1346, 'property_800171', NULL, '{}'),
(1347, 'property_801574', NULL, '{}'),
(1348, 'property_80201', NULL, '{}'),
(1349, 'property_804565', NULL, '{}'),
(1350, 'property_806488', NULL, '{}'),
(1351, 'property_808654', NULL, '{}'),
(1352, 'property_813080', NULL, '{}'),
(1353, 'property_833801', NULL, '{}'),
(1354, 'property_847412', NULL, '{}'),
(1355, 'property_853943', NULL, '{}'),
(1356, 'property_858184', NULL, '{}'),
(1357, 'property_865112', NULL, '{}'),
(1358, 'property_866211', NULL, '{}'),
(1359, 'property_897308', NULL, '{}'),
(1360, 'property_908691', NULL, '{}'),
(1361, 'property_917388', NULL, '{}'),
(1362, 'property_918365', NULL, '{}'),
(1363, 'property_920654', NULL, '{}'),
(1364, 'property_927673', NULL, '{}'),
(1365, 'property_951843', NULL, '{}'),
(1366, 'property_956939', NULL, '{}'),
(1367, 'property_970886', NULL, '{}'),
(1368, 'property_983398', NULL, '{}'),
(1369, 'property', '11000013f9be48d', '{}'),
(1370, 'user_ears', '11000013f9be48d', '{}'),
(1371, 'user_glasses', '11000013f9be48d', '{}'),
(1372, 'user_helmet', '11000013f9be48d', '{}'),
(1373, 'user_mask', '11000013f9be48d', '{}'),
(1374, 'property', '11000011b827064', '{}'),
(1375, 'user_ears', '11000011b827064', '{}'),
(1376, 'user_glasses', '11000011b827064', '{}'),
(1377, 'user_helmet', '11000011b827064', '{}'),
(1378, 'user_mask', '11000011b827064', '{}'),
(1379, 'property', '11000010f856cdc', '{}'),
(1380, 'user_ears', '11000010f856cdc', '{}'),
(1381, 'user_glasses', '11000010f856cdc', '{}'),
(1382, 'user_helmet', '11000010f856cdc', '{}'),
(1383, 'user_mask', '11000010f856cdc', '{}'),
(1384, 'property', '110000136d722b6', '{}'),
(1385, 'user_ears', '110000136d722b6', '{}'),
(1386, 'user_glasses', '110000136d722b6', '{}'),
(1387, 'user_helmet', '110000136d722b6', '{}'),
(1388, 'user_mask', '110000136d722b6', '{}'),
(1389, 'property', '1100001462625c6', '{}'),
(1390, 'user_ears', '1100001462625c6', '{}'),
(1391, 'user_glasses', '1100001462625c6', '{}'),
(1392, 'user_helmet', '1100001462625c6', '{}'),
(1393, 'user_mask', '1100001462625c6', '{}'),
(1394, 'property', '11000011d1f66e0', '{}'),
(1395, 'user_ears', '11000011d1f66e0', '{}'),
(1396, 'user_glasses', '11000011d1f66e0', '{}'),
(1397, 'user_helmet', '11000011d1f66e0', '{}'),
(1398, 'user_mask', '11000011d1f66e0', '{}'),
(1399, 'property', '110000136f339b4', '{}'),
(1400, 'user_ears', '110000136f339b4', '{}'),
(1401, 'user_glasses', '110000136f339b4', '{}'),
(1402, 'user_helmet', '110000136f339b4', '{}'),
(1403, 'user_mask', '110000136f339b4', '{}'),
(1404, 'property', '1100001435cdd51', '{}'),
(1405, 'user_ears', '1100001435cdd51', '{}'),
(1406, 'user_glasses', '1100001435cdd51', '{}'),
(1407, 'user_helmet', '1100001435cdd51', '{}'),
(1408, 'user_mask', '1100001435cdd51', '{}'),
(1409, 'property', '1100001345edd58', '{}'),
(1410, 'user_ears', '1100001345edd58', '{}'),
(1411, 'user_glasses', '1100001345edd58', '{}'),
(1412, 'user_helmet', '1100001345edd58', '{}'),
(1413, 'user_mask', '1100001345edd58', '{}'),
(1414, 'property', '110000112c98268', '{}'),
(1415, 'user_ears', '110000112c98268', '{}'),
(1416, 'user_glasses', '110000112c98268', '{}'),
(1417, 'user_helmet', '110000112c98268', '{}'),
(1418, 'user_mask', '110000112c98268', '{}'),
(1419, 'property', '1100001484ca980', '{}'),
(1420, 'user_ears', '1100001484ca980', '{}'),
(1421, 'user_glasses', '1100001484ca980', '{}'),
(1422, 'user_helmet', '1100001484ca980', '{}'),
(1423, 'user_mask', '1100001484ca980', '{}'),
(1424, 'property', '11000010db5c2f5', '{}'),
(1425, 'user_ears', '11000010db5c2f5', '{}'),
(1426, 'user_glasses', '11000010db5c2f5', '{}'),
(1427, 'user_helmet', '11000010db5c2f5', '{}'),
(1428, 'user_mask', '11000010db5c2f5', '{}'),
(1429, 'property', '11000014631ca36', '{}'),
(1430, 'user_ears', '11000014631ca36', '{}'),
(1431, 'user_glasses', '11000014631ca36', '{}'),
(1432, 'user_helmet', '11000014631ca36', '{}'),
(1433, 'user_mask', '11000014631ca36', '{}'),
(1434, 'property', '110000143449c55', '{}'),
(1435, 'user_ears', '110000143449c55', '{}'),
(1436, 'user_glasses', '110000143449c55', '{}'),
(1437, 'user_helmet', '110000143449c55', '{}'),
(1438, 'user_mask', '110000143449c55', '{}'),
(1439, 'property', '11000014238de12', '{}'),
(1440, 'user_ears', '11000014238de12', '{}'),
(1441, 'user_glasses', '11000014238de12', '{}'),
(1442, 'user_helmet', '11000014238de12', '{}'),
(1443, 'user_mask', '11000014238de12', '{}'),
(1444, 'property', '11000014340a599', '{}'),
(1445, 'user_ears', '11000014340a599', '{}'),
(1446, 'user_glasses', '11000014340a599', '{}'),
(1447, 'user_helmet', '11000014340a599', '{}'),
(1448, 'user_mask', '11000014340a599', '{}'),
(1449, 'property', '110000106d84b10', '{}'),
(1450, 'user_ears', '110000106d84b10', '{}'),
(1451, 'user_glasses', '110000106d84b10', '{}'),
(1452, 'user_helmet', '110000106d84b10', '{}'),
(1453, 'user_mask', '110000106d84b10', '{}'),
(1454, 'property', '110000103461f88', '{}'),
(1455, 'user_ears', '110000103461f88', '{}'),
(1456, 'user_glasses', '110000103461f88', '{}'),
(1457, 'user_helmet', '110000103461f88', '{}'),
(1458, 'user_mask', '110000103461f88', '{}'),
(1459, 'property', '11000010b1257a5', '{}'),
(1460, 'user_ears', '11000010b1257a5', '{}'),
(1461, 'user_glasses', '11000010b1257a5', '{}'),
(1462, 'user_helmet', '11000010b1257a5', '{}'),
(1463, 'user_mask', '11000010b1257a5', '{}'),
(1464, 'property', '110000111818886', '{}'),
(1465, 'user_ears', '110000111818886', '{}'),
(1466, 'user_glasses', '110000111818886', '{}'),
(1467, 'user_helmet', '110000111818886', '{}'),
(1468, 'user_mask', '110000111818886', '{}'),
(1469, 'property', '1100001427a0b08', '{}'),
(1470, 'user_ears', '1100001427a0b08', '{}'),
(1471, 'user_glasses', '1100001427a0b08', '{}'),
(1472, 'user_helmet', '1100001427a0b08', '{}'),
(1473, 'user_mask', '1100001427a0b08', '{}'),
(1474, 'property', '110000148df3231', '{}'),
(1475, 'user_ears', '110000148df3231', '{}'),
(1476, 'user_glasses', '110000148df3231', '{}'),
(1477, 'user_helmet', '110000148df3231', '{}'),
(1478, 'user_mask', '110000148df3231', '{}'),
(1479, 'property', '11000014510565e', '{}'),
(1480, 'user_ears', '11000014510565e', '{}'),
(1481, 'user_glasses', '11000014510565e', '{}'),
(1482, 'user_helmet', '11000014510565e', '{}'),
(1483, 'user_mask', '11000014510565e', '{}'),
(1484, 'property', '11000010718553b', '{}'),
(1485, 'user_ears', '11000010718553b', '{}'),
(1486, 'user_glasses', '11000010718553b', '{}'),
(1487, 'user_helmet', '11000010718553b', '{}'),
(1488, 'user_mask', '11000010718553b', '{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fractions_vehicles`
--

CREATE TABLE `fractions_vehicles` (
  `id` int(11) NOT NULL,
  `praca` varchar(255) NOT NULL,
  `czas` longtext NOT NULL,
  `pojazd` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `playername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `fractions_vehicles`
--

INSERT INTO `fractions_vehicles` (`id`, `praca`, `czas`, `pojazd`, `status`, `playername`) VALUES
(186, 'LSPD', '10:55 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(187, 'LSPD', '10:55 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(188, 'LSPD', '10:55 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(189, 'LSPD', '10:57 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(190, 'LSPD', '11:31 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(191, 'LSPD', '11:33 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(192, 'LSPD', '11:58 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(193, 'LSPD', '12:18 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(194, 'LSPD', '12:29 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(195, 'LSPD', '12:29 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(196, 'LSPD', '12:32 | 02.07.2021', 'NULL', 'Returned', 'Szymon Koksik'),
(197, 'LSPD', '12:47 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(198, 'LSPD', '12:47 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(199, 'LSPD', '12:49 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(200, 'LSPD', '12:57 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(201, 'LSPD', '12:57 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(202, 'LSPD', '12:58 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(203, 'LSPD', '13:00 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(204, 'LSPD', '13:00 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(205, 'LSPD', '13:00 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(206, 'LSPD', '13:00 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(207, 'LSPD', '13:08 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(208, 'LSPD', '13:08 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(209, 'LSPD', '13:09 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(210, 'LSPD', '13:09 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(211, 'LSPD', '13:09 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(212, 'LSPD', '13:15 | 02.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(213, 'LSPD', '13:16 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(214, 'LSPD', '13:18 | 02.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(215, 'LSPD', '13:21 | 02.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(216, 'LSPD', '13:23 | 02.07.2021', 'NULL', 'Spawned', 'Matthew Williams'),
(217, 'LSPD', '13:24 | 02.07.2021', 'NULL', 'Returned', 'Piter Watson'),
(218, 'LSPD', '13:24 | 02.07.2021', 'NULL', 'Spawned', 'Piter Watson'),
(219, 'LSPD', '13:54 | 02.07.2021', 'NULL', 'Spawned', 'Matthew Williams'),
(220, 'LSPD', '16:38 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(221, 'LSPD', '16:38 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(222, 'LSPD', '16:39 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(223, 'LSPD', '16:39 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(224, 'LSPD', '16:46 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(225, 'LSPD', '16:47 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(226, 'LSPD', '16:48 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(227, 'LSPD', '16:54 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(228, 'LSPD', '16:54 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(229, 'LSPD', '16:56 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(230, 'LSPD', '18:12 | 02.07.2021', 'NULL', 'Spawned', 'Matthew Williams'),
(231, 'LSPD', '18:21 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(232, 'LSPD', '18:33 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(233, 'LSPD', '18:33 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(234, 'LSPD', '18:36 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(235, 'LSPD', '18:40 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(236, 'LSPD', '19:00 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(237, 'LSPD', '19:02 | 02.07.2021', 'NULL', 'Returned', 'Matthew Williams'),
(238, 'LSPD', '19:02 | 02.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(239, 'LSPD', '19:08 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(240, 'LSPD', '19:08 | 02.07.2021', 'NULL', 'Returned', 'Szymon Koksik'),
(241, 'LSPD', '19:08 | 02.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(242, 'LSPD', '19:09 | 02.07.2021', 'NULL', 'Returned', 'Szymon Koksik'),
(243, 'LSPD', '19:12 | 02.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(244, 'LSPD', '09:17 | 03.07.2021', 'NULL', 'Spawned', 'Matthew Williams'),
(245, 'LSPD', '09:35 | 03.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(246, 'LSPD', '09:37 | 03.07.2021', 'NULL', 'Spawned', 'Kaspian  Klimek'),
(247, 'LSPD', '11:54 | 04.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(248, 'LSPD', '12:00 | 04.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(249, 'LSPD', '12:09 | 04.07.2021', 'NULL', 'Returned', 'Julo Kilo'),
(250, 'LSPD', '15:07 | 04.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(251, 'LSPD', '15:07 | 04.07.2021', 'NULL', 'Returned', 'Julo Kilo'),
(252, 'LSPD', '19:14 | 04.07.2021', 'NULL', 'Spawned', 'Martin Gambino'),
(253, 'LSPD', '19:14 | 04.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(254, 'LSPD', '20:35 | 04.07.2021', 'NULL', 'Spawned', 'Martin Gambino'),
(255, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(256, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(257, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(258, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(259, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(260, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(261, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(262, 'LSPD', '20:46 | 04.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(263, 'LSPD', '21:08 | 04.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(264, 'LSPD', '21:16 | 04.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(265, 'LSPD', '21:21 | 04.07.2021', 'NULL', 'Returned', 'Martin Gambino'),
(266, 'LSPD', '21:28 | 04.07.2021', 'NULL', 'Returned', 'Julo Kilo'),
(267, 'LSPD', '22:30 | 04.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(268, 'LSPD', '22:30 | 04.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(269, 'LSPD', '22:30 | 04.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(270, 'LSPD', '22:30 | 04.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(271, 'LSPD', '22:31 | 04.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(272, 'LSPD', '23:40 | 04.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(273, 'LSPD', '00:10 | 05.07.2021', 'NULL', 'Returned', 'Jacob Prince'),
(274, 'LSPD', '00:10 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(275, 'LSPD', '00:29 | 05.07.2021', 'NULL', 'Returned', 'Jacob Prince'),
(276, 'LSPD', '00:29 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(277, 'LSPD', '00:31 | 05.07.2021', 'NULL', 'Returned', 'Jacob Prince'),
(278, 'LSPD', '00:31 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(279, 'LSPD', '00:31 | 05.07.2021', 'NULL', 'Returned', 'Jacob Prince'),
(280, 'LSPD', '00:32 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(281, 'LSPD', '09:32 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(282, 'LSPD', '09:49 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(283, 'LSPD', '09:49 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(284, 'LSPD', '09:53 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(285, 'LSPD', '09:53 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(286, 'LSPD', '09:54 | 05.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(287, 'LSPD', '10:20 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(288, 'LSPD', '10:32 | 05.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(289, 'LSPD', '10:37 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(290, 'LSPD', '10:55 | 05.07.2021', 'NULL', 'Spawned', 'Szymon Koksik'),
(291, 'LSPD', '12:26 | 05.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(292, 'LSPD', '12:37 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(293, 'LSPD', '12:37 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(294, 'LSPD', '12:39 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(295, 'LSPD', '13:05 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(296, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(297, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(298, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(299, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(300, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(301, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(302, 'LSPD', '13:15 | 05.07.2021', 'NULL', 'Returned', 'Bob Esmano'),
(303, 'LSPD', '13:16 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(304, 'LSPD', '13:16 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(305, 'LSPD', '13:46 | 05.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(306, 'LSPD', '13:46 | 05.07.2021', 'NULL', 'Spawned', 'Julo Kilo'),
(307, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(308, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(309, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(310, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(311, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(312, 'LSPD', '14:09 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(313, 'LSPD', '14:49 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(314, 'LSPD', '14:50 | 05.07.2021', 'NULL', 'Spawned', 'Bob Esmano'),
(315, 'LSPD', '14:50 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(316, 'LSPD', '16:36 | 05.07.2021', 'NULL', 'Spawned', 'Jacob Prince'),
(317, 'LSPD', '18:33 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(318, 'LSPD', '18:33 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(319, 'LSPD', '18:34 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(320, 'LSPD', '18:40 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(321, 'LSPD', '18:41 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(322, 'LSPD', '19:04 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(323, 'LSPD', '19:05 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(324, 'LSPD', '19:05 | 05.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(325, 'LSPD', '19:15 | 05.07.2021', 'NULL', 'Returned', 'Martin Zara'),
(326, 'LSPD', '17:00 | 06.07.2021', 'NULL', 'Spawned', 'Martin Zara'),
(327, 'EMS', '08:25 | 07.07.2021', 'NULL', 'Spawned', 'Dominik Baxter'),
(328, 'EMS', '08:26 | 07.07.2021', 'Karetka', 'Returned', 'Dominik Baxter'),
(329, 'EMS', '08:26 | 07.07.2021', 'NULL', 'Spawned', 'Dominik Baxter');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hsn_bankrobbery`
--

CREATE TABLE `hsn_bankrobbery` (
  `bankid` int(11) NOT NULL,
  `robtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `hsn_bankrobbery`
--

INSERT INTO `hsn_bankrobbery` (`bankid`, `robtime`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` text CHARACTER SET utf8,
  `weight` int(11) NOT NULL DEFAULT '1',
  `rare` tinyint(4) NOT NULL DEFAULT '0',
  `can_remove` tinyint(4) NOT NULL DEFAULT '1',
  `limit` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `limit`) VALUES
('2jzengine', '2JZ Engine', 1, 0, 1, -1),
('alive_chicken', 'Living chicken', 1, 0, 1, -1),
('appistol', 'APP pistol', 1, 0, 1, -1),
('assaultrifle', 'AK 47', 1, 0, 1, -1),
('assaultrifle_mk2', 'assaultrifle_mk2', 1, 0, 1, -1),
('bandage', 'Bandage', 2, 0, 1, -1),
('bat', 'Baseball Bat', 1, 0, 1, -1),
('battleaxe', 'Battle Axe', 1, 0, 1, -1),
('bird_crap_ammo', 'bird_crap_ammo', 2, 0, 1, -1),
('blowpipe', 'Blowtorch', 2, 0, 1, -1),
('bread', 'Chleb', 1, 0, 1, -1),
('bulka', 'Bułka', 1, 0, 1, -1),
('bullpuprifle_mk2', 'bullpuprifle_mk2', 1, 0, 1, -1),
('bursztyn', 'Bursztyn', 1, 0, 1, -1),
('cannabis', 'Cannabis', 3, 0, 1, -1),
('carbinerifle', 'M4A1', 1, 0, 1, -1),
('carbinerifle_mk2', 'carbinerifle_mk2', 1, 0, 1, -1),
('carokit', 'Body Kit', 3, 0, 1, -1),
('carotool', 'Tools', 2, 0, 1, -1),
('ccheese', 'Ser W Plastry', 1, 0, 1, -1),
('cheese', 'Ser', 1, 0, 1, -1),
('clettuce', 'Siekana Sałata', 1, 0, 1, -1),
('clothe', 'Cloth', 1, 0, 1, -1),
('combatmg_mk2', 'combatmg_mk2', 1, 0, 1, -1),
('combatpistol', 'Combat pistol', 1, 0, 1, -1),
('copper', 'Copper', 1, 0, 1, -1),
('crowbar', 'Crow Bar', 1, 0, 1, -1),
('ctomato', 'Pokrojony Pomidor', 1, 0, 1, -1),
('cutted_wood', 'Cut wood', 1, 0, 1, -1),
('dagger', 'Dagger', 1, 0, 1, -1),
('diamond', 'Diamond', 1, 0, 1, -1),
('dia_box', 'Diamentowe pudełko', 2, 0, 1, -1),
('doubleaction', 'doubleaction', 1, 0, 1, -1),
('dowod', 'Dowod', 1, 0, 1, -1),
('essence', 'Gas', 1, 0, 1, -1),
('fabric', 'Fabric', 1, 0, 1, -1),
('fanta', 'Fanta', 1, 0, 1, -1),
('fburger', 'Mrożony Kotlet Wołowy', 1, 0, 1, -1),
('fireextinguisher', 'Fire Extinguisher', 1, 0, 1, -1),
('fireextinguisher_ammo', 'fireextinguisher_ammo', 2, 0, 1, -1),
('firework', 'Firework', 1, 0, 1, -1),
('fish', 'Fish', 1, 0, 1, -1),
('fixkit', 'Repair Kit', 3, 0, 1, -1),
('fixtool', 'Repair Tools', 2, 0, 1, -1),
('flare', 'Flare', 1, 0, 1, -1),
('flaregun', 'Flare Gun', 1, 0, 1, -1),
('flare_ammo', 'Flares', 2, 0, 1, -1),
('flashlight', 'Latarka', 1, 0, 1, -1),
('fvburger', 'Mrożony Burger Warzywny', 1, 0, 1, -1),
('gazbottle', 'Gas Bottle', 2, 0, 1, -1),
('gbs', 'GBS', 1, 0, 1, -1),
('gold', 'Gold', 1, 0, 1, -1),
('gold_bar', 'Sztabka złota', 2, 0, 1, -1),
('golfclub', 'Golf Club', 1, 0, 1, -1),
('gusenberg', 'Gusenberg', 1, 0, 1, -1),
('gzgas_ammo', 'gzgas_ammo', 2, 0, 1, -1),
('hammer', 'Hammer', 1, 0, 1, -1),
('handcuffs', 'Kajdanki', 2, 0, 1, -1),
('hatchet', 'hatchet', 1, 0, 1, -1),
('heavypistol', 'Heavy pistol', 1, 0, 1, -1),
('heavysniper_mk2', 'heavysniper_mk2', 1, 0, 1, -1),
('herbata', 'Herbata', 1, 0, 1, -1),
('hotdog', 'Hot-dog', 1, 0, 1, -1),
('icetea', 'Ice-Tea', 1, 0, 1, -1),
('id_card', 'Karta dostępu', 1, 0, 1, -1),
('iron', 'Iron', 1, 0, 1, -1),
('jablka', 'Jabłka', 3, 0, 1, -1),
('jewels', 'Jewels', 1, 0, 1, -1),
('joint', 'Joint (Nadruk: Weed Shop)', 1, 0, 1, -1),
('kanapka', 'Kanapka', 1, 0, 1, -1),
('kawa', 'Kawa', 1, 0, 1, -1),
('knife', 'Knife', 1, 0, 1, -1),
('knuckle', 'Knuckledusters', 1, 0, 1, -1),
('Kokaina', 'Kokaina', 1, 0, 1, -1),
('laptop_h', 'Laptop hakera', 1, 0, 1, -1),
('lettuce', 'Sałata', 1, 0, 1, -1),
('licencja_ems', 'Licencja EMS', 1, 0, 1, -1),
('licenseplate', 'Rejestracja', 1, 0, 1, -1),
('lockpick', 'Wytrych', 1, 0, 1, -1),
('machete', 'machete', 1, 0, 1, -1),
('machinepistol', 'TEC-9', 1, 0, 1, -1),
('Marihuana', 'Marihuana', 1, 0, 1, -1),
('marijuana', 'Marijuana', 2, 0, 1, -1),
('marksmanrifle_mk2', 'marksmanrifle_mk2', 1, 0, 1, -1),
('mars', 'Mars', 1, 0, 1, -1),
('mechanic_tools', 'Mechanic Tools', 1, 0, 1, -1),
('medikit', 'Medikit', 2, 0, 1, -1),
('Mefedron', 'Mefedron', 1, 0, 1, -1),
('mg_ammo', 'MG Ammo', 2, 0, 1, -1),
('michelin_tires', 'Michelin Tires', 1, 0, 1, -1),
('microsmg', 'Micro SMG', 1, 0, 1, -1),
('molotov', 'Molotov Cocktail', 1, 0, 1, -1),
('molotov_ammo', 'molotov_ammo', 2, 0, 1, -1),
('monster', 'Monster', 1, 0, 1, -1),
('musket', 'Brown Bess', 1, 0, 1, -1),
('nightstick', 'ASP Baton', 1, 0, 1, -1),
('nugget', 'Nuggetsy z kurczaka', 1, 0, 1, -1),
('nuggets10', 'Nuggetsy x10', 1, 0, 1, -1),
('nuggets4', 'Nuggetsy x4', 1, 0, 1, -1),
('obursztyn', 'Oszlifowany bursztyn', 1, 0, 1, -1),
('odznaka', 'Odznaka', 1, 0, 1, -1),
('ogorek', 'Ogorek', 1, 0, 1, -1),
('oogorek', 'Zpakowany Ogorek', 1, 0, 1, -1),
('packaged_chicken', 'Chicken fillet', 1, 0, 1, -1),
('packaged_plank', 'Packaged wood', 1, 0, 1, -1),
('parachute', 'spadochron', 1, 0, 1, -1),
('petrol', 'Oil', 1, 0, 1, -1),
('petrolcan', 'Petrol Can', 1, 0, 1, -1),
('petrol_raffin', 'Processed oil', 1, 0, 1, -1),
('phone', 'Telefon', 1, 0, 1, -1),
('picolo', 'Picolo', 1, 0, 1, -1),
('pistol', 'Pistol', 1, 0, 1, -1),
('pistol50', 'Pisotl .50', 1, 0, 1, -1),
('pistol_ammo', 'Amunicja Do Broni', 1, 0, 1, -1),
('pistol_mk2', 'Sig Sauer P226', 1, 0, 1, -1),
('PKokaina', 'Spakowana Kokaina', 1, 0, 1, -1),
('PMarihuana', 'Spakowana Marihuana', 1, 0, 1, -1),
('PMefedron', 'Spakowany Mefedron', 1, 0, 1, -1),
('pomarancza', 'Pomarańcza', 3, 0, 1, -1),
('poolcue', 'pool cue', 1, 0, 1, -1),
('potato', 'Ziemniak', 1, 0, 1, -1),
('pumpshotgun', 'Pump shotgun', 1, 0, 1, -1),
('pumpshotgun_mk2', 'pumpshotgun v2', 1, 0, 1, -1),
('race_brakes', 'Race Breaks', 1, 0, 1, -1),
('race_suspension', 'Race Suspension', 1, 0, 1, -1),
('race_transmition', 'Race Transmition', 1, 0, 1, -1),
('revolver', 'Taurus Raging Bull', 1, 0, 1, -1),
('revolver_mk2', 'revolver v2', 1, 0, 1, -1),
('rifle_ammo', 'Rifle Ammo', 2, 0, 1, -1),
('scratchcard', 'Zdrapka', 1, 0, 1, -1),
('scratchcardgold', 'Zdrapka Gold', 1, 0, 1, -1),
('scratchcardpremium', 'Zdrapka Premium', 1, 0, 1, -1),
('securityblack', 'Karta 4', 1, 0, 1, -1),
('securityblue', 'Karta 1', 1, 0, 1, -1),
('securitygold', 'Karta 5', 1, 0, 1, -1),
('securitygreen', 'Karta 3', 1, 0, 1, -1),
('securityred', 'Karta 2', 1, 0, 1, -1),
('shamburger', 'Ćwierćfuntowa z serem', 1, 0, 1, -1),
('shotgun_ammo', 'Shotgun Ammo', 2, 0, 1, -1),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1, -1),
('smg_ammo', 'SMG Ammo', 2, 0, 1, -1),
('smg_mk2', 'smg v2', 1, 0, 1, -1),
('sniperrifle', 'Sniper rifle', 1, 0, 1, -1),
('sniper_ammo', 'Sniper Ammo', 2, 0, 1, -1),
('snowball', 'Snow Ball', 1, 0, 1, -1),
('snspistol', 'Pukawka', 1, 0, 1, -1),
('snspistol_mk2', 'pukawka pistol v2', 1, 0, 1, -1),
('sok', 'Sok', 3, 0, 1, -1),
('specialcarbine_mk2', 'special carbine v2', 1, 0, 1, -1),
('stinger_ammo', 'stinger_ammo', 2, 0, 1, -1),
('stone', 'Stone', 1, 0, 1, -1),
('stungun', 'X26 Taser', 1, 0, 1, -1),
('stungun_ammo', 'Stungun Ammo', 2, 0, 1, -1),
('szampan', 'Szampan', 1, 0, 1, -1),
('thermal_charge', 'Ładunek termiczny', 1, 0, 1, -1),
('thermite', 'Termit', 1, 0, 1, -1),
('tomato', 'Pomidor', 1, 0, 1, -1),
('toolbox', 'Tool Box', 1, 0, 1, -1),
('tuning_laptop', 'Tuner Laptop', 1, 0, 1, -1),
('turbo_lvl_1', 'GARET Turbo', 1, 0, 1, -1),
('ubursztyn', 'Umyty Bursztyn', 1, 0, 1, -1),
('uogorek', 'Umyty Ogorek', 1, 0, 1, -1),
('v8engine', 'V8 Engine', 1, 0, 1, -1),
('vbread', 'Chleb bezglutenowy', 1, 0, 1, -1),
('vhamburger', 'Wegetariański burger', 1, 0, 1, -1),
('vintagepistol', 'Vintage pistol', 1, 0, 1, -1),
('vodka', 'Vodka', 1, 0, 1, -1),
('washed_stone', 'Washed stone', 1, 0, 1, -1),
('water', 'Woda', 1, 0, 1, -1),
('wino', 'Wino', 1, 0, 1, -1),
('wizytowka', 'Wizytowka', 1, 0, 1, -1),
('wood', 'Wood', 1, 0, 1, -1),
('wool', 'Wool', 1, 0, 1, -1),
('wrench', 'wrench', 1, 0, 1, -1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 1),
('burgershot', 'Burgershot', 1),
('cardealer', 'Cardealer', 1),
('janush', 'janush', 0),
('kurier', 'Kurier', 0),
('mechanic', 'Mechanic', 1),
('offambulance', 'OffAmbulans', 1),
('offpolice', 'OFFPolice', 1),
('police', 'LSPD', 1),
('sadownik', 'Sadownik', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  `label` text CHARACTER SET utf8,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 20, '{}', '{}'),
(11, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(12, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(13, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
(14, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(16, 'ambulance', 4, 'chirurg', 'Chirurg', 500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'ambulance', 5, 'Schirurg', 'Starszy Chirurg', 600, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(18, 'ambulance', 7, 'z_orydynatora', 'Zastępca Ordynatora', 800, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(19, 'ambulance', 9, 'ordynator', 'Ordynator', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(30, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(31, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 1, 'novice', 'Cabby', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 4, 'boss', 'Lead Cabby', 50, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(51, 'unemployed', 0, 'unemployed', 'Unemployed', 20, '{}', '{}'),
(110, 'ambulance', 3, 'lspecialist', 'Lekarz specjalista', 500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(111, 'ambulance', 2, 'lekarz', 'Lekarz', 400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(112, 'ambulance', 1, 'ratownik', 'Ratownik medyczny', 300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(113, 'ambulance', 0, 'praktykant', 'Praktykant', 200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(114, 'offambulance', 0, 'praktykant', 'Praktykant', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(115, 'offambulance', 1, 'rmedyk', 'Ratownik medyczny', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(116, 'offambulance', 2, 'lekarz', 'Lekarz', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(117, 'offambulance', 3, 'lspecialist', 'Lekarz specjalista', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(118, 'offambulance', 4, 'chirurg', 'Chirurg', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(119, 'offambulance', 5, 'schirurg', 'Starszy Chirurg', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(120, 'offambulance', 7, 'z_ordynatora', 'Zastępca Ordynatora', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(121, 'offambulance', 9, 'ordynator', 'Ordynator', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(127, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(128, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(129, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(130, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(132, 'mechanic', 0, 'recrue', 'Praktykant', 100, '{}', '{}'),
(133, 'mechanic', 5, 'novice', 'Majster', 500, '{}', '{}'),
(134, 'mechanic', 6, 'experimente', 'Menadżer Mechaników', 600, '{}', '{}'),
(135, 'mechanic', 7, 'chief', 'Zastępca szefa mechaników', 700, '{}', '{}'),
(136, 'mechanic', 8, 'boss', 'Szef Mechaników ', 800, '{}', '{}'),
(214, 'sadownik', 0, 'recrue', 'Zatrudniony', 10, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":95,\"torso_2\":0,\"shoes_1\":26,\"shoes_2\":1,\"pants_1\":42, \"pants_2\":0, \"arms\":48}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":86,\"torso_2\":0,\"shoes_1\":28,\"shoes_2\":0,\"pants_1\":25, \"pants_2\":0, \"arms\":46}'),
(215, 'kurier', 0, 'kurier', 'Kurier', 30, '{}', '{}'),
(216, 'police', 0, 'rekrut', 'Rekrut', 100, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(217, 'police', 1, 'katet', 'Kadet', 200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(218, 'police', 2, 'podoficer', 'Junior deputy', 300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(219, 'police', 3, 'officei', 'Deputy I', 400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(220, 'police', 4, 'officeii', 'Deputy II', 500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(221, 'police', 5, 'officeiii', 'Senior deputy', 600, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(222, 'police', 6, 'sierzanti', 'Sierżant I', 700, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(223, 'police', 7, 'sierzantii', 'Sierżant II', 800, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(224, 'police', 8, 'sierzantiii', 'Sierżant III', 900, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(226, 'police', 9, 'podporucznik', 'Staff Sergant', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(227, 'police', 10, 'porucziki', 'Captain I', 1100, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(228, 'police', 11, 'poruczikii', 'Captain II', 1200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(229, 'police', 13, 'boss', 'UnderSheriff', 1400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(230, 'police', 14, 'boss', 'Sheriff', 1600, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(231, 'offpolice', 0, 'rekrut', 'Rekrut', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(232, 'offpolice', 1, 'katet', 'Kadet', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(233, 'offpolice', 2, 'podoficer', 'Junior deputy', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(234, 'offpolice', 3, 'officei', 'Deputy I', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(235, 'offpolice', 4, 'officeii', 'Deputy II', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(236, 'offpolice', 5, 'officeiii', 'Senior deputy', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(237, 'offpolice', 6, 'sierzanti', 'Sierżant I', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(238, 'offpolice', 7, 'sierzantii', 'Sierżant II', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(239, 'offpolice', 8, 'sierzantiii', 'Sierżant III', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(241, 'offpolice', 9, 'podporucznik', 'Staff Sergant', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(242, 'offpolice', 10, 'porucziki', 'Captain I', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(243, 'offpolice', 11, 'poruczikii', 'Captain II', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(244, 'offpolice', 13, 'undersheriff', 'UnderSheriff', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(245, 'offpolice', 15, 'boss', 'Sheriff', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(246, 'ambulance', 8, 'a_ordynatora', 'Asystent Ordynatora', 900, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(247, 'offambulance', 8, 'a_ordynator', 'Asystent Ordynatora', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(248, 'burgershot', 0, 'recruit', 'Stażysta', 40, '{}', '{}'),
(249, 'burgershot', 1, 'novice', 'Kasjer', 60, '{}', '{}'),
(250, 'burgershot', 2, 'chef', 'Szef kuchni', 70, '{}', '{}'),
(251, 'burgershot', 3, 'viceboss', 'Asystent Menadżera', 80, '{}', '{}'),
(252, 'burgershot', 4, 'boss', 'Menedżer', 90, '{}', '{}'),
(253, 'ambulance', 6, 'doktor', 'Doktor', 700, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(254, 'offambulance', 6, 'doktor', 'Doktor', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(255, 'janush', 0, 'kierowca', 'Kierowcaa', 40, '{}', '{}'),
(256, 'janush', 1, 'dyspozytor', 'Dyspozytor', 60, '{}', '{}'),
(257, 'janush', 2, 'boss', 'Szef', 120, '{}', '{}'),
(258, 'police', 12, 'boss', 'Assistant deputy of sheriff', 1300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(259, 'offpolice', 12, 'boss', 'Assistant deputy of sheriff', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(260, 'mechanic', 4, 'novice', 'Fachowiec', 400, '{}', '{}'),
(261, 'mechanic', 3, 'novice', 'Starszy Mechanik', 300, '{}', '{}'),
(262, 'mechanic', 2, 'novice', 'Mechanik', 200, '{}', '{}'),
(263, 'mechanic', 1, 'novice', 'Rekrutant\r\n', 150, '{}', '{}'),
(264, 'ambulance', 10, 'z_dyrektora', 'Zastępca dyrektora', 1100, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(265, 'ambulance', 11, 'a_dyrektora', 'Asystent Dyrektora', 1200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(266, 'ambulance', 12, 'boss', 'Dyrektor', 1300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(267, 'offambulance', 10, 'z_dyrektora', 'Zastępca dyrektora', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(268, 'offambulance', 11, 'a_dyrektora', 'Asystent dyrektora', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(269, 'offambulance', 12, 'boss', 'Dyrektor', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kartoteka_notatki`
--

CREATE TABLE `kartoteka_notatki` (
  `identifier` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kartoteka_notatki`
--

INSERT INTO `kartoteka_notatki` (`identifier`, `note`, `policjant`, `data`) VALUES
('110000113c980af', 'x', 'Jacob Prince', '2021-06-19 18:24:51'),
('11000013e23d72d', 'Obraza funkcjonariusza na forach spolecznosciowych ', 'Patryk  Miler ', '2021-06-20 15:08:42'),
('110000113c980af', 'TEST1414', 'Jacob Prince', '2021-06-22 02:22:01'),
('1100001178e5843', 'jego pojazd brabus o numerach rejestracji \nM1 H3H3 strzelal wraz z kolega do policji ', 'Kayl Crane', '2021-06-23 22:19:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('ems_insurance', 'Medical insurance'),
('oc_insurance', 'Vehicle insurance'),
('weapon', 'Licencja Na Bron');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  `arleady_owned` int(11) NOT NULL DEFAULT '0',
  `shared` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`, `arleady_owned`, `shared`) VALUES
(4, 'Procopio Dr Dom_Nowy62', 130722, 0, '11000011b29d297', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_shops`
--

CREATE TABLE `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT '0',
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `owned_shops`
--

INSERT INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
('15961d9d4a366fbe106cee522ef87949774ec504', 1, 4520703, 280000, 1549643682, 'Vendigo\'s Shop'),
('0', 2, 0, 220000, 1549643682, '0'),
('0', 3, 0, 235000, 1549643682, '0'),
('4d763d422228c2784718b75a02a21724b4d7920a', 4, 3285000, 285000, 1549643682, 'Janush Shop'),
('fb39e242f6d9fc74f3cb7c87e7ea179a7d5b7ea1', 5, 8659, 135000, 1549643682, 'DomIN-Store'),
('11000010c68ca4c', 6, 23760, 235000, 1549643682, 'Sheriff\'s Shop'),
('11000011451424b', 7, 0, 160000, 1549643682, 'Janush Shop'),
('11000013e72addb', 8, 0, 275000, 1549643682, 'U Mechaników'),
('15961d9d4a366fbe106cee522ef87949774ec504', 9, 5254910, 265000, 1549643682, 'Vendigo\'s Shop'),
('769dfbb59726958bd0ea7611853fcb3db53728b9', 10, 139678, 300000, 1549643682, 'Klimek\'s shop'),
('0', 12, 0, 145000, 1549643682, '0'),
('0', 13, 0, 145000, 1549643682, '0'),
('769dfbb59726958bd0ea7611853fcb3db53728b9', 14, 92960, 280000, 1549643682, 'Klimek\'s shop'),
('4702e23f506ec81222b549f804e06a42f88d26da', 15, 895000, 300000, 1549643682, 'Sklep Bobika'),
('110000116a199f2', 16, 5000, 435000, 1549643682, 'Bahamas Mamas'),
('0', 18, 0, 235000, 1549643682, '0'),
('0', 11, 0, 225000, 1549643682, '0'),
('0', 19, 0, 150000, 1549643682, '0'),
('4d763d422228c2784718b75a02a21724b4d7920a', 20, 0, 165000, 1549643682, 'Janush Shop'),
('0', 17, 0, 150000, 1549643682, '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(55) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin,
  `owner_type` int(2) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicleid` int(11) DEFAULT NULL,
  `tunerdata` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`id`, `owner`, `vehicle`, `owner_type`, `state`, `plate`, `vehicleid`, `tunerdata`) VALUES
(80, '11000013c1beefe', '{\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"wheelColor\":4,\"modRoof\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modAerials\":-1,\"windowTint\":-1,\"model\":2109901563,\"modArchCover\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modFrame\":-1,\"color1\":122,\"modTank\":-1,\"extras\":[],\"modSeats\":-1,\"wheels\":6,\"fuelLevel\":71.9,\"modExhaust\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modArmor\":-1,\"tankHealth\":997.0,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"color2\":122,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"modRightFender\":-1,\"plate\":\"MLODY\",\"modSpeakers\":-1,\"xenonColor\":255,\"modBackWheels\":-1,\"engineHealth\":863.0,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"dirtLevel\":11.0,\"modFrontBumper\":-1,\"modTurbo\":1,\"modTrunk\":-1,\"pearlescentColor\":122,\"modDial\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"bodyHealth\":994.0,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false]}', 1, 0, 'MLODY', NULL, NULL),
(81, '11000010abcd934', '{\"modXenon\":false,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modDashboard\":-1,\"wheels\":6,\"modTransmission\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"extras\":[],\"modFender\":-1,\"modWindows\":-1,\"fuelLevel\":41.0,\"bodyHealth\":1000.0,\"modSuspension\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"windowTint\":-1,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":4,\"modFrame\":-1,\"modRoof\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modDial\":-1,\"modExhaust\":-1,\"engineHealth\":1000.0,\"color2\":122,\"color1\":122,\"modAerials\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"dirtLevel\":7.0,\"xenonColor\":255,\"plate\":\"MLODY2\",\"modLivery\":-1,\"modHorns\":-1,\"pearlescentColor\":122,\"modEngineBlock\":-1,\"modSteeringWheel\":-1,\"model\":2109901563,\"modHood\":-1,\"modSpeakers\":-1,\"modTank\":-1,\"plateIndex\":4,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"tankHealth\":1000.0,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modSeats\":-1}', 1, 1, 'MLODY2', NULL, NULL),
(84, '1100001178e5843', '{\"modRightFender\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[1,1,1,1],\"modSpoilers\":2,\"modHood\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"modFrontWheels\":8,\"modGrille\":2,\"color1\":135,\"modRearBumper\":-1,\"pearlescentColor\":132,\"wheels\":4,\"modExhaust\":3,\"engineHealth\":1000.0,\"modFrame\":0,\"modFrontBumper\":2,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0,\"modVanityPlate\":-1,\"modTurbo\":1,\"color2\":135,\"modSmokeEnabled\":1,\"modDashboard\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modTrunk\":-1,\"windowTint\":1,\"modTank\":-1,\"modAPlate\":-1,\"modSuspension\":4,\"modSeats\":-1,\"modDial\":-1,\"modHorns\":39,\"modSideSkirt\":1,\"modBrakes\":0,\"tyreSmokeColor\":[255,0,255],\"plate\":\"TKC 148\",\"modArmor\":4,\"xenonColor\":255,\"modLivery\":-1,\"modWindows\":-1,\"tankHealth\":1000.0,\"modStruts\":-1,\"modTrimA\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"fuelLevel\":47.2,\"modTransmission\":2,\"plateIndex\":3,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"extras\":{\"3\":true,\"4\":true,\"5\":false,\"1\":true,\"2\":true},\"modEngine\":3,\"modFender\":-1,\"dirtLevel\":3.1,\"modDoorSpeaker\":-1,\"wheelColor\":135,\"neonColor\":[255,0,255],\"model\":-431692672,\"modXenon\":1,\"modBackWheels\":-1}', 1, 1, 'TKC 148', NULL, NULL),
(86, '110000148e94bde', '{\"modPlateHolder\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"windowTint\":-1,\"model\":736902334,\"modHorns\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"color2\":0,\"modLivery\":-1,\"dirtLevel\":15.0,\"modShifterLeavers\":-1,\"modTransmission\":2,\"bodyHealth\":1000.0,\"xenonColor\":255,\"modTrimA\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modBrakes\":2,\"neonEnabled\":[false,false,false,false],\"plate\":\"SFN 378\",\"extras\":{\"11\":true,\"12\":false},\"modSuspension\":3,\"modFender\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"tankHealth\":1000.0,\"modSeats\":-1,\"modTrimB\":-1,\"modTank\":-1,\"modSteeringWheel\":-1,\"wheels\":0,\"wheelColor\":156,\"modBackWheels\":-1,\"modRightFender\":-1,\"modSpoilers\":3,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modTurbo\":1,\"modXenon\":false,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"plateIndex\":0,\"modStruts\":-1,\"fuelLevel\":57.3,\"modDashboard\":-1,\"modHydrolic\":-1,\"pearlescentColor\":38,\"modGrille\":-1,\"modEngine\":3,\"color1\":92,\"modArmor\":-1,\"engineHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[0,0,0]}', 1, 1, 'SFN 378', NULL, NULL),
(87, '110000115a5ea25', '{\"modSideSkirt\":-1,\"wheelColor\":156,\"modRearBumper\":-1,\"modFrame\":-1,\"modDial\":-1,\"modArmor\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"color1\":12,\"modArchCover\":-1,\"modFender\":-1,\"engineHealth\":242930497087340540000.0,\"modFrontWheels\":-1,\"windowTint\":-1,\"modTank\":-1,\"modDashboard\":-1,\"xenonColor\":255,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"model\":1747439474,\"modSpeakers\":-1,\"modRoof\":-1,\"modXenon\":false,\"modBrakes\":-1,\"fuelLevel\":65.0,\"modOrnaments\":-1,\"modHydrolic\":-1,\"modHood\":-1,\"modTrimA\":-1,\"plateIndex\":1,\"modLivery\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"dirtLevel\":9.4,\"extras\":{\"1\":true},\"modAerials\":-1,\"modStruts\":-1,\"color2\":12,\"modTrunk\":-1,\"tankHealth\":1000.0,\"modExhaust\":-1,\"modBackWheels\":-1,\"bodyHealth\":1000.0,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"plate\":\"K1 DOM\",\"modSuspension\":-1,\"modGrille\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"wheels\":0,\"pearlescentColor\":111}', 1, 1, 'K1 DOM', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(1021, '408-5273', '488--0565', 1, '2021-07-02 11:03:50', 0),
(1022, '488-0565', '408-5273', 1, '2021-07-02 11:04:03', 1),
(1023, '408-5273', '488-0565', 0, '2021-07-02 11:04:03', 1),
(1024, '488-0565', '408-5273', 1, '2021-07-02 11:04:17', 1),
(1025, '408-5273', '488-0565', 0, '2021-07-02 11:04:17', 1),
(1026, '408-5273', '488-0565', 1, '2021-07-02 11:05:13', 1),
(1027, '488-0565', '408-5273', 0, '2021-07-02 11:05:13', 1),
(1028, '408-5273', '488-0565', 1, '2021-07-02 11:06:50', 1),
(1029, '488-0565', '408-5273', 0, '2021-07-02 11:06:50', 1),
(1030, '408-5273', '488-0565', 1, '2021-07-02 11:16:38', 1),
(1031, '488-0565', '408-5273', 0, '2021-07-02 11:16:38', 1),
(1032, '488-0565', '408-5273', 1, '2021-07-02 11:17:52', 1),
(1033, '408-5273', '488-0565', 0, '2021-07-02 11:17:52', 1),
(1034, '488-0565', '408-5273', 1, '2021-07-02 11:23:14', 1),
(1035, '408-5273', '488-0565', 0, '2021-07-02 11:23:14', 1),
(1036, '488-0565', '408-5273', 1, '2021-07-02 11:32:58', 1),
(1037, '408-5273', '488-0565', 0, '2021-07-02 11:32:58', 1),
(1038, '488-0565', '408-5273', 1, '2021-07-02 11:38:09', 1),
(1039, '408-5273', '488-0565', 0, '2021-07-02 11:38:09', 1),
(1040, '488-0565', '408-5273', 1, '2021-07-02 11:42:27', 0),
(1041, '408-5273', '488-0565', 0, '2021-07-02 11:42:27', 0),
(1042, '488-0565', '408-5273', 1, '2021-07-02 11:42:49', 1),
(1043, '408-5273', '488-0565', 0, '2021-07-02 11:42:49', 1),
(1044, '408-5273', '488-0565', 1, '2021-07-02 11:43:07', 0),
(1045, '488-0565', '408-5273', 0, '2021-07-02 11:43:07', 0),
(1046, '408-5273', '488-0565', 1, '2021-07-02 11:43:57', 0),
(1047, '488-0565', '408-5273', 0, '2021-07-02 11:43:57', 0),
(1048, '408-5273', '396-8605', 1, '2021-07-02 11:46:18', 0),
(1049, '396-8605', '408-5273', 0, '2021-07-02 11:46:18', 0),
(1050, '408-5273', '488-0565', 1, '2021-07-02 11:47:16', 1),
(1051, '488-0565', '408-5273', 0, '2021-07-02 11:47:16', 1),
(1052, '488-0565', '408-5273', 1, '2021-07-02 11:48:50', 1),
(1053, '408-5273', '488-0565', 0, '2021-07-02 11:48:50', 1),
(1054, '488-0565', '408-5273', 1, '2021-07-02 11:49:12', 1),
(1055, '408-5273', '488-0565', 0, '2021-07-02 11:49:12', 1),
(1056, '408-5273', '396-8605', 1, '2021-07-02 11:55:06', 1),
(1057, '396-8605', '408-5273', 0, '2021-07-02 11:55:06', 1),
(1058, '488-0565', '408-5273', 1, '2021-07-02 11:57:09', 1),
(1059, '408-5273', '488-0565', 0, '2021-07-02 11:57:09', 1),
(1060, '488-0565', '408-5273', 1, '2021-07-02 19:25:23', 0),
(1061, '408-5273', '488-0565', 0, '2021-07-02 19:25:23', 0),
(1062, '662-3752', '4085273', 1, '2021-07-02 20:06:42', 0),
(1063, '662-3752', '4085273', 1, '2021-07-02 20:07:14', 0),
(1064, '408-5273', '662-3752', 1, '2021-07-02 20:07:49', 0),
(1065, '662-3752', '408-5273', 0, '2021-07-02 20:07:49', 0),
(1066, '408-5273', '662-3752', 1, '2021-07-02 20:08:12', 0),
(1067, '662-3752', '408-5273', 0, '2021-07-02 20:08:12', 0),
(1068, '159-2495', '408-5273', 1, '2021-07-03 11:55:59', 1),
(1069, '408-5273', '159-2495', 0, '2021-07-03 11:55:59', 1),
(1070, '408-5273', '159-2495', 1, '2021-07-03 11:56:55', 1),
(1071, '159-2495', '408-5273', 0, '2021-07-03 11:56:55', 1),
(1072, '408-5273', '159-2495', 1, '2021-07-03 11:57:39', 1),
(1073, '159-2495', '408-5273', 0, '2021-07-03 11:57:39', 1),
(1074, '159-2495', '408-5273', 0, '2021-07-03 12:00:14', 0),
(1075, '408-5273', '159-2495', 1, '2021-07-03 12:00:14', 0),
(1076, '369-1207', '103-4413', 1, '2021-07-04 19:27:09', 0),
(1077, '103-4413', '369-1207', 0, '2021-07-04 19:27:09', 0),
(1078, '662-3752', '408-5273', 1, '2021-07-04 23:10:35', 0),
(1079, '408-5273', '662-3752', 0, '2021-07-04 23:10:35', 0),
(1080, '662-3752', '111-2222', 1, '2021-07-04 23:59:54', 1),
(1081, '111-2222', '662-3752', 0, '2021-07-04 23:59:54', 1),
(1082, '103-4413', '149-4779', 1, '2021-07-05 13:26:42', 1),
(1083, '149-4779', '103-4413', 0, '2021-07-05 13:26:42', 1),
(1084, '488-0565', '111-2222', 1, '2021-07-05 18:38:23', 1),
(1085, '111-2222', '488-0565', 0, '2021-07-05 18:38:23', 1),
(1086, '488-0565', '111-2222', 1, '2021-07-05 18:38:24', 1),
(1087, '111-2222', '488-0565', 0, '2021-07-05 18:38:24', 1),
(1088, '111-2222', '662-3752', 1, '2021-07-05 18:38:26', 1),
(1089, '662-3752', '111-2222', 0, '2021-07-05 18:38:26', 1),
(1090, '111-2222', '662-3752', 1, '2021-07-05 18:38:27', 1),
(1091, '662-3752', '111-2222', 0, '2021-07-05 18:38:27', 1),
(1092, '662-3752', '111-2222', 1, '2021-07-05 18:38:51', 1),
(1093, '111-2222', '662-3752', 0, '2021-07-05 18:38:51', 1),
(1094, '488-0565', '396-8605', 1, '2021-07-05 18:54:36', 0),
(1095, '396-8605', '488-0565', 0, '2021-07-05 18:54:36', 0),
(1096, '111-2222', '662-3752', 1, '2021-07-05 19:01:46', 0),
(1097, '662-3752', '111-2222', 0, '2021-07-05 19:01:46', 0),
(1098, '111-2222', '662-3752', 1, '2021-07-05 19:02:19', 1),
(1099, '662-3752', '111-2222', 0, '2021-07-05 19:02:19', 1),
(1100, '111-2222', '662-3752', 1, '2021-07-05 19:04:03', 1),
(1101, '662-3752', '111-2222', 0, '2021-07-05 19:04:03', 1),
(1102, '111-2222', '488-0565', 1, '2021-07-05 19:12:46', 1),
(1103, '488-0565', '111-2222', 0, '2021-07-05 19:12:46', 1),
(1104, '488-0565', '396-8605', 1, '2021-07-06 11:39:48', 0),
(1105, '396-8605', '488-0565', 0, '2021-07-06 11:39:48', 0),
(1106, '146-1912', '748-8465', 1, '2021-07-13 15:46:00', 1),
(1107, '748-8465', '146-1912', 0, '2021-07-13 15:46:00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(2415, '748-8465', '146-1912', 'GPS: 1366.0682373047, -720.81701660156', '2021-07-13 15:47:47', 1, 1),
(2414, '146-1912', '748-8465', 'GPS: 1366.0682373047, -720.81701660156', '2021-07-13 15:47:47', 1, 0),
(2413, 'ambulance', '146-1912', 'Wymagana uwaga medyczna: nieprzytomny obywatel! 1002.8430175782, -2070.6403808594', '2021-07-07 18:06:28', 1, 0),
(2412, 'ambulance', '111-2222', 'Wymagana uwaga medyczna: nieprzytomny obywatel! 284.78308105468, -580.55670166016', '2021-07-06 14:05:06', 1, 0),
(2410, '488-0565', '396-8605', 'Bo chce pojezidzic', '2021-07-06 11:41:27', 1, 0),
(2411, '396-8605', '488-0565', 'Bo chce pojezidzic', '2021-07-06 11:41:28', 1, 1),
(2408, '488-0565', '396-8605', 'Wujek jest motor', '2021-07-06 11:40:05', 1, 0),
(2409, '396-8605', '488-0565', 'Wujek jest motor', '2021-07-06 11:40:05', 1, 1),
(2406, '111-2222', '662-3752', 'czemu?', '2021-07-05 19:04:17', 1, 0),
(2407, '662-3752', '111-2222', 'czemu?', '2021-07-05 19:04:17', 1, 1),
(2405, '662-3752', '111-2222', 'to moze jakies piwo?', '2021-07-05 00:18:33', 1, 1),
(2403, '111-2222', '662-3752', 'raczej nie', '2021-07-05 00:15:42', 1, 1),
(2404, '111-2222', '662-3752', 'to moze jakies piwo?', '2021-07-05 00:18:32', 1, 0),
(2401, '662-3752', '111-2222', '?', '2021-07-05 00:15:28', 1, 1),
(2402, '662-3752', '111-2222', 'raczej nie', '2021-07-05 00:15:41', 1, 0),
(2400, '111-2222', '662-3752', '?', '2021-07-05 00:15:28', 1, 0),
(2398, '111-2222', '662-3752', 'cos jeszcze dzis bd robil', '2021-07-05 00:15:22', 1, 0),
(2399, '662-3752', '111-2222', 'cos jeszcze dzis bd robil', '2021-07-05 00:15:23', 1, 1),
(2396, '111-2222', '662-3752', 'zajebiscie', '2021-07-05 00:15:16', 1, 0),
(2397, '662-3752', '111-2222', 'zajebiscie', '2021-07-05 00:15:17', 1, 1),
(2395, '111-2222', '662-3752', 'mozna na car dealerze sprzedawać fury', '2021-07-05 00:10:38', 1, 1),
(2394, '662-3752', '111-2222', 'mozna na car dealerze sprzedawać fury', '2021-07-05 00:10:37', 1, 0),
(2393, '111-2222', '662-3752', 'GPS: 290.12384033203, -1088.8234863281', '2021-07-05 00:00:05', 1, 1),
(2391, '568-8649', '662-3752', 'idziesz?', '2021-07-04 23:59:31', 1, 1),
(2392, '662-3752', '111-2222', 'GPS: 290.12384033203, -1088.8234863281', '2021-07-05 00:00:04', 1, 0),
(2390, '568-8649', '662-3752', 'Panie policjancie pod komende dawaj', '2021-07-04 21:56:46', 1, 1),
(2388, '568-8649', '662-3752', 'Pisze Pan do mnie', '2021-07-04 20:43:20', 1, 0),
(2389, '662-3752', '568-8649', 'Pisze Pan do mnie', '2021-07-04 20:43:20', 1, 1),
(2386, '662-3752', '568-8649', 'a co mialo', '2021-07-04 20:43:07', 1, 0),
(2387, '568-8649', '662-3752', 'a co mialo', '2021-07-04 20:43:08', 1, 1),
(2384, '662-3752', '568-8649', 'nwm', '2021-07-04 20:43:05', 1, 0),
(2385, '568-8649', '662-3752', 'nwm', '2021-07-04 20:43:05', 1, 1),
(2383, '662-3752', '568-8649', 'co sie stalo?', '2021-07-04 20:43:00', 1, 1),
(2382, '568-8649', '662-3752', 'co sie stalo?', '2021-07-04 20:42:59', 1, 0),
(2381, '568-8649', '662-3752', 'halo', '2021-07-04 20:39:41', 1, 1),
(2380, '662-3752', '568-8649', 'halo', '2021-07-04 20:39:40', 1, 0),
(2379, '369-1207', '103-4413', 'eo', '2021-07-04 19:27:30', 1, 1),
(2378, '103-4413', '369-1207', 'eo', '2021-07-04 19:27:30', 1, 0),
(2377, '369-1207', '103-4413', 'er', '2021-07-04 19:27:28', 1, 1),
(2376, '103-4413', '369-1207', 'er', '2021-07-04 19:27:28', 1, 0),
(2375, '103-4413', '369-1207', 'dzien dobry', '2021-07-04 19:27:21', 1, 1),
(2374, '369-1207', '103-4413', 'dzien dobry', '2021-07-04 19:27:21', 1, 0),
(2373, '396-8605', '408-5273', 'GPS: -1882.6408691406, -307.0246887207', '2021-07-02 11:40:50', 1, 1),
(2372, '408-5273', '396-8605', 'GPS: -1882.6408691406, -307.0246887207', '2021-07-02 11:40:50', 1, 0),
(2371, 'nil', '408-5273', 'GPS: -1882.6408691406, -307.0246887207', '2021-07-02 11:40:05', 1, 1),
(2370, '488-0565', '408-5273', 'GPS: -1213.0079345703, -323.63339233398', '2021-07-02 11:10:51', 1, 1),
(2369, '408-5273', '488-0565', 'GPS: -1213.0079345703, -323.63339233398', '2021-07-02 11:10:51', 1, 0),
(2368, '488-0565', '408-5273', 'GPS: -1423.1915283203, -450.66564941406', '2021-07-02 11:07:23', 1, 1),
(2367, '408-5273', '488-0565', 'GPS: -1423.1915283203, -450.66564941406', '2021-07-02 11:07:23', 1, 0),
(2366, '488-0565', '408-5273', 'jak cos to gps dawaj', '2021-07-02 11:07:20', 1, 1),
(2365, '408-5273', '488-0565', 'jak cos to gps dawaj', '2021-07-02 11:07:20', 1, 0),
(2363, '488-0565', '408-5273', 'Siema', '2021-07-02 11:02:33', 1, 0),
(2362, '488-0565', '408-5273', 'www', '2021-07-02 11:02:20', 1, 1),
(2364, '408-5273', '488-0565', 'Siema', '2021-07-02 11:02:34', 1, 1),
(2361, '408-5273', '488-0565', 'www', '2021-07-02 11:02:19', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(104, '11000011b29d297', '748-8465', 'ALEX'),
(103, '11000013c1beefe', '111-2222', 'Wujo najlepszy'),
(102, '11000010c68ca4c', '149-4779', 'juan'),
(101, '1100001178e5843', '662-3752', 'Kolega'),
(100, '110000148e94bde', '111-2222', 'Martin'),
(99, '11000010c68ca4c', '369-1207', 'Kilo'),
(98, '11000013571d092', '103-4413', 'Bobik'),
(97, '11000011cf9d388', '408-5273', 'Kajtek'),
(96, '11000010abcd934', '159-2495', '! !WisniaKturemuSimerdzomstopyez'),
(94, '11000010abcd934', '662-3752', 'Joe Gambino :D'),
(95, '110000148e94bde', '408-5273', 'kajtek'),
(92, '110000116a199f2', '148-1912', 'Aurek'),
(91, '11000013c1beefe', '396-8605', 'Wujek Dominik'),
(90, '11000010abcd934', '488-0565', 'Alex Kumpel :D'),
(89, '11000013c1beefe', '408-5273', 'Kajtek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playtime`
--

CREATE TABLE `playtime` (
  `identifier` varchar(100) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `playtime`
--

INSERT INTO `playtime` (`identifier`, `time`, `login`) VALUES
('steam:110000107c1bed3', 28359, 16),
('steam:110000116a199f2', 47605, 16),
('steam:110000142f842d1', 37959, 15),
('steam:11000013f447b9e', 5705, 2),
('steam:11000010abcd934', 3650, 1),
('steam:11000013e2efbf1', 24184, 6),
('steam:110000115a5ea25', 20142, 7),
('steam:11000011a34b580', 3171, 0),
('steam:1100001479df7f9', 3424, 2),
('steam:110000133dd04f4', 9666, 5),
('steam:11000013701e82d', 11966, 4),
('steam:1100001361ff294', 4220, 2),
('steam:110000146585301', 4855, 0),
('steam:11000013c4dbf38', 9817, 3),
('steam:11000014315cb0a', 60333, 13),
('steam:11000013d168fb2', 10347, 2),
('steam:11000010a813039', 2804, 0),
('steam:1100001430a643f', 80051, 11),
('steam:1100001197d0fe2', 54620, 10),
('steam:11000013e72addb', 63791, 14),
('steam:110000113c980af', 41471, 8),
('steam:110000135492216', 4789, 1),
('steam:11000014683ac22', 4211, 0),
('steam:110000136d722b6', 2064, 0),
('steam:11000013cf77255', 15449, 8),
('steam:110000145e0efd1', 4337, 1),
('steam:110000146a66068', 351, 0),
('steam:110000134d21e74', 3555, 1),
('steam:11000013cde9d1a', 1085, 1),
('steam:11000011451424b', 27726, 12),
('steam:110000135660a44', 851, 0),
('steam:11000011b29d297', 35459, 13),
('steam:1100001178e5843', 39206, 10),
('steam:110000141024428', 22290, 12),
('steam:110000111fe6523', 38378, 4),
('steam:11000013702f3db', 5736, 3),
('steam:1100001481d4db5', 4717, 2),
('steam:1100001331f52a8', 8110, 3),
('steam:11000014273b07b', 6682, 4),
('steam:11000013a88f828', 1997, 1),
('steam:110000143271f7e', 5300, 3),
('steam:110000143146f44', 250, 0),
('steam:11000013dbb2e4c', 536, 0),
('steam:110000146c238a8', 2573, 1),
('steam:110000136e144a4', 1315, 0),
('steam:11000013620f422', 1006, 0),
('steam:11000013621616f', 861, 0),
('steam:110000137920de2', 554, 0),
('steam:11000014299f872', 34085, 13),
('steam:110000116577dac', 8962, 4),
('steam:110000143817ee5', 2669, 1),
('steam:11000013c1beefe', 3030, 2),
('steam:1100001369d2602', 28940, 17),
('steam:110000143027a9c', 667, 0),
('steam:110000136c7e1ca', 179, 0),
('steam:110000133face28', 115, 0),
('steam:11000013b3fd89c', 116, 0),
('steam:11000013f9be48d', 20720, 5),
('steam:110000113a125a3', 2207, 0),
('steam:11000011d192cf1', 3506, 1),
('steam:11000013fb817c8', 920, 0),
('steam:110000148ccdd0b', 13951, 8),
('steam:110000137986807', 1007, 0),
('steam:110000144f254f2', 1903, 0),
('steam:110000131f2495e', 12775, 0),
('steam:110000141469835', 14, 0),
('steam:11000011c8b46ad', 7544, 3),
('steam:11000013f242466', 1748, 0),
('steam:11000013ec192aa', 2132, 0),
('steam:1100001323a8369', 2506, 0),
('steam:11000011843601b', 1570, 0),
('steam:11000010c68ca4c', 13665, 3),
('steam:11000014798ea0a', 3096, 0),
('steam:1100001442a1b90', 228, 0),
('steam:1100001483a27ee', 2499, 0),
('steam:11000014801f6aa', 257, 0),
('steam:1100001116524a0', 38262, 2),
('steam:11000013e23d72d', 2992, 0),
('steam:110000117a43482', 489, 0),
('steam:11000013e8f0242', 1540, 0),
('steam:110000141f674de', 1515, 0),
('steam:110000143143621', 1378, 0),
('steam:1100001184edbd5', 1082, 0),
('steam:1100001173a0691', 6197, 0),
('steam:1100001378d3aa8', 3636, 0),
('steam:1100001165abb43', 5590, 0),
('steam:11000010f39b671', 1067, 0),
('steam:11000011d6af72b', 6786, 0),
('steam:1100001179fc09b', 1816, 0),
('steam:11000014525b514', 629, 0),
('steam:11000010eaf3d15', 5534, 0),
('steam:110000147806fe2', 11611, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `police_odznaki`
--

CREATE TABLE `police_odznaki` (
  `identifier` varchar(100) NOT NULL,
  `odznaka` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `free` int(11) NOT NULL DEFAULT '0',
  `itemName` varchar(255) DEFAULT NULL,
  `prysznic` varchar(255) DEFAULT NULL,
  `garderoba` varchar(255) DEFAULT NULL,
  `lodowka` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`, `free`, `itemName`, `prysznic`, `garderoba`, `lodowka`) VALUES
(1, 'Dutch London St Melina1', 'Dutch London St', '{\"x\":365.14224243164,\"y\":-2064.6743164062,\"z\":21.744487762451}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":365.14224243164,\"y\":-2064.6743164062,\"z\":21.744487762451}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 139197, 0, 'property_808654', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(2, 'Dutch London St Melina2', 'Dutch London St', '{\"x\":345.41409301758,\"y\":-2067.4838867188,\"z\":20.936418533325}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":345.41409301758,\"y\":-2067.4838867188,\"z\":20.936418533325}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 115610, 0, 'property_203064', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(3, 'Dutch London St Melina3', 'Dutch London St', '{\"x\":341.79006958008,\"y\":-2064.4865722656,\"z\":20.936418533325}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":341.79006958008,\"y\":-2064.4865722656,\"z\":20.936418533325}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 107880, 0, 'property_106079', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(4, 'Dutch London St Melina4', 'Dutch London St', '{\"x\":334.42718505859,\"y\":-2058.2861328125,\"z\":20.936393737793}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":334.42718505859,\"y\":-2058.2861328125,\"z\":20.936393737793}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 130206, 0, 'property_764496', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(5, 'Jamestown St Melina5', 'Jamestown St', '{\"x\":332.98461914062,\"y\":-2057.0942382812,\"z\":20.936393737793}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":332.98461914062,\"y\":-2057.0942382812,\"z\":20.936393737793}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 130218, 0, 'property_366760', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(6, 'Grove St Dom6', 'Grove St', '{\"x\":85.908027648926,\"y\":-1959.7152099609,\"z\":21.121673583984}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":85.908027648926,\"y\":-1959.7152099609,\"z\":21.121673583984}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 47591, 0, 'property_154602', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(7, 'Grove St Dom7', 'Grove St', '{\"x\":114.3233795166,\"y\":-1961.2071533203,\"z\":21.334175109863}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":114.3233795166,\"y\":-1961.2071533203,\"z\":21.334175109863}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 60796, 0, 'property_591766', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(8, 'Grove St Dom8', 'Grove St', '{\"x\":126.57621765137,\"y\":-1930.0827636719,\"z\":21.382417678833}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":126.57621765137,\"y\":-1930.0827636719,\"z\":21.382417678833}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 78497, 0, 'property_236542', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(9, 'Grove St Dom9', 'Grove St', '{\"x\":100.94900512695,\"y\":-1912.2838134766,\"z\":21.407423019409}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":100.94900512695,\"y\":-1912.2838134766,\"z\":21.407423019409}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 46349, 0, 'property_608612', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(10, 'Grove St Dom10', 'Grove St', '{\"x\":72.11506652832,\"y\":-1938.9964599609,\"z\":21.369129180908}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":72.11506652832,\"y\":-1938.9964599609,\"z\":21.369129180908}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 46031, 0, 'property_918365', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(11, 'Carson Ave Melina11', 'Carson Ave', '{\"x\":-167.50245666504,\"y\":-1534.5372314453,\"z\":35.098834991455}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-167.50245666504,\"y\":-1534.5372314453,\"z\":35.098834991455}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 141788, 0, 'property_594574', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(12, 'Carson Ave Melina12', 'Carson Ave', '{\"x\":-174.49223327637,\"y\":-1528.5931396484,\"z\":34.353885650635}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-174.49223327637,\"y\":-1528.5931396484,\"z\":34.353885650635}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 111053, 0, 'property_865112', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(13, 'Carson Ave Melina13', 'Carson Ave', '{\"x\":-180.27258300781,\"y\":-1534.4290771484,\"z\":34.358238220215}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-180.27258300781,\"y\":-1534.4290771484,\"z\":34.358238220215}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 108235, 0, 'property_853943', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(14, 'Carson Ave Melina14', 'Carson Ave', '{\"x\":-184.43553161621,\"y\":-1539.3603515625,\"z\":34.359970092773}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-184.43553161621,\"y\":-1539.3603515625,\"z\":34.359970092773}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 151113, 0, 'property_126343', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(15, 'Forum Dr Melina15', 'Forum Dr', '{\"x\":-173.69203186035,\"y\":-1547.1500244141,\"z\":35.127376556396}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-173.69203186035,\"y\":-1547.1500244141,\"z\":35.127376556396}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 149465, 0, 'property_207856', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(16, 'Forum Dr Melina16', 'Forum Dr', '{\"x\":-179.62219238281,\"y\":-1554.2359619141,\"z\":35.125190734863}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-179.62219238281,\"y\":-1554.2359619141,\"z\":35.125190734863}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 105989, 0, 'property_847412', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(17, 'Alta St Apartament17', 'Alta St', '{\"x\":-185.47023010254,\"y\":-759.24450683594,\"z\":30.45400428772}', '{\"x\":-1289.91,\"y\":449.89,\"z\":97.9}', '{\"x\":-1289.91,\"y\":449.89,\"z\":97.9}', '{\"x\":-185.47023010254,\"y\":-759.24450683594,\"z\":30.45400428772}', '[]', NULL, 1, 0, NULL, '{\"x\":-1288.56,\"y\":455.86,\"z\":90.29}', 91921, 0, 'property_866211', '{\"x\":-1286.27,\"y\":440.47,\"z\":94.12}', '{\"x\":-1285.96,\"y\":437.96,\"z\":94.09}', '{\"x\":265.7,\"y\":-997.74,\"z\":-99.01}'),
(18, 'San Andreas Ave Dom_Nowy18', 'San Andreas Ave', '{\"x\":-271.95166015625,\"y\":-703.498046875,\"z\":38.276885986328}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-271.95166015625,\"y\":-703.498046875,\"z\":38.276885986328}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 103643, 0, 'property_738617', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(19, 'Marathon Ave Apartament19', 'Marathon Ave', '{\"x\":-1447.5314941406,\"y\":-537.36834716797,\"z\":34.740180969238}', '{\"x\":-787.0574,\"y\":315.6567,\"z\":187.9135}', '{\"x\":-787.0574,\"y\":315.6567,\"z\":187.9135}', '{\"x\":-1447.5314941406,\"y\":-537.36834716797,\"z\":34.740180969238}', '[]', NULL, 1, 0, NULL, '{\"x\":-800.08,\"y\":338.08,\"z\":190.71}', 86569, 0, 'property_373139', '{\"x\":-803.72,\"y\":335.66,\"z\":190.75}', '{\"x\":-796.46,\"y\":328.65,\"z\":190.71}', '{\"x\":-782.01,\"y\":325.53,\"z\":187.31}'),
(20, 'Bay City Ave Apartament20', 'Bay City Ave', '{\"x\":-1662.2987060547,\"y\":-532.60150146484,\"z\":36.024017333984}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-1662.2987060547,\"y\":-532.60150146484,\"z\":36.024017333984}', '[]', NULL, 1, 0, NULL, '{\"x\":-25.84,\"y\":-588.74,\"z\":90.12}', 156165, 0, 'property_804565', '{\"x\":-31.95,\"y\":-587.63,\"z\":83.95}', '{\"x\":-38.69,\"y\":-583.12,\"z\":83.92}', '{\"x\":-34.09,\"y\":-590.36,\"z\":88.71}'),
(21, 'Bay City Ave Apartament21', 'Bay City Ave', '{\"x\":-1660.4820556641,\"y\":-533.91656494141,\"z\":36.023941040039}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-1660.4820556641,\"y\":-533.91656494141,\"z\":36.023941040039}', '[]', NULL, 1, 0, NULL, '{\"x\":-25.84,\"y\":-588.74,\"z\":90.12}', 137518, 0, 'property_235382', '{\"x\":-31.95,\"y\":-587.63,\"z\":83.95}', '{\"x\":-38.69,\"y\":-583.12,\"z\":83.92}', '{\"x\":-34.09,\"y\":-590.36,\"z\":88.71}'),
(22, 'Del Perro Fwy Dom_Nowy22', 'Del Perro Fwy', '{\"x\":-1756.1534423828,\"y\":-692.22802734375,\"z\":10.137804031372}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1756.1534423828,\"y\":-692.22802734375,\"z\":10.137804031372}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 133143, 0, 'property_408325', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(23, 'Del Perro Fwy Dom_Nowy23', 'Del Perro Fwy', '{\"x\":-1771.0579833984,\"y\":-677.39361572266,\"z\":10.386680603027}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1771.0579833984,\"y\":-677.39361572266,\"z\":10.386680603027}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 155248, 0, 'property_20264', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(24, 'Magellan Ave Dom24', 'Magellan Ave', '{\"x\":-1816.92578125,\"y\":-636.75738525391,\"z\":10.938934326172}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":-1816.92578125,\"y\":-636.75738525391,\"z\":10.938934326172}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 79927, 0, 'property_103547', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(25, 'Del Perro Fwy Dom_Nowy25', 'Del Perro Fwy', '{\"x\":-1869.6921386719,\"y\":-590.58184814453,\"z\":11.860918998718}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1869.6921386719,\"y\":-590.58184814453,\"z\":11.860918998718}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 117978, 0, 'property_535828', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(26, 'Del Perro Fwy Dom26', 'Del Perro Fwy', '{\"x\":-1876.9685058594,\"y\":-584.37890625,\"z\":11.853325843811}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":-1876.9685058594,\"y\":-584.37890625,\"z\":11.853325843811}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 77023, 0, 'property_801574', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(27, 'Del Perro Fwy Melina27', 'Del Perro Fwy', '{\"x\":-1883.501953125,\"y\":-578.92321777344,\"z\":11.85359954834}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":-1883.501953125,\"y\":-578.92321777344,\"z\":11.85359954834}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 95194, 0, 'property_433319', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(28, 'Del Perro Fwy Dom28', 'Del Perro Fwy', '{\"x\":-1918.6351318359,\"y\":-542.50689697266,\"z\":11.82543182373}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":-1918.6351318359,\"y\":-542.50689697266,\"z\":11.82543182373}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 75031, 0, 'property_103424', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(29, 'Nikola Pl Dom_Nowy29', 'Nikola Pl', '{\"x\":1301.1003417969,\"y\":-574.1923828125,\"z\":71.732238769531}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1301.1003417969,\"y\":-574.1923828125,\"z\":71.732238769531}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 97816, 0, 'property_252808', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(30, 'Nikola Pl Dom_Nowy30', 'Nikola Pl', '{\"x\":1323.3132324219,\"y\":-583.1728515625,\"z\":73.246467590332}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1323.3132324219,\"y\":-583.1728515625,\"z\":73.246467590332}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 115965, 0, 'property_833801', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(31, 'Nikola Pl Dom31', 'Nikola Pl', '{\"x\":1341.4328613281,\"y\":-597.22485351562,\"z\":74.700820922852}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":1341.4328613281,\"y\":-597.22485351562,\"z\":74.700820922852}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 67838, 0, 'property_400726', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(32, 'Nikola Pl Dom_Nowy32', 'Nikola Pl', '{\"x\":1367.2192382812,\"y\":-606.57067871094,\"z\":74.71102142334}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1367.2192382812,\"y\":-606.57067871094,\"z\":74.71102142334}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 162592, 0, 'property_858184', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(33, 'Nikola Pl Dom_Nowy33', 'Nikola Pl', '{\"x\":1386.2813720703,\"y\":-593.44934082031,\"z\":74.485420227051}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1386.2813720703,\"y\":-593.44934082031,\"z\":74.485420227051}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 103027, 0, 'property_556793', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(34, 'Nikola Pl Dom_Nowy34', 'Nikola Pl', '{\"x\":1389.0443115234,\"y\":-569.60626220703,\"z\":74.496520996094}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1389.0443115234,\"y\":-569.60626220703,\"z\":74.496520996094}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 157283, 0, 'property_908691', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(35, 'Nikola Pl Dom_Nowy35', 'Nikola Pl', '{\"x\":1373.2845458984,\"y\":-555.71569824219,\"z\":74.685653686523}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1373.2845458984,\"y\":-555.71569824219,\"z\":74.685653686523}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 139839, 0, 'property_415131', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(36, 'Nikola Pl Dom_Nowy36', 'Nikola Pl', '{\"x\":1348.3726806641,\"y\":-547.21905517578,\"z\":73.891624450684}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1348.3726806641,\"y\":-547.21905517578,\"z\":73.891624450684}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 130066, 0, 'property_651977', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(37, 'Nikola Pl Dom37', 'Nikola Pl', '{\"x\":1328.4389648438,\"y\":-536.08160400391,\"z\":72.440849304199}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":1328.4389648438,\"y\":-536.08160400391,\"z\":72.440849304199}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 59516, 0, 'property_917388', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(38, 'Nikola Pl Dom_Nowy38', 'Nikola Pl', '{\"x\":1303.1533203125,\"y\":-527.49127197266,\"z\":71.460670471191}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1303.1533203125,\"y\":-527.49127197266,\"z\":71.460670471191}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 152586, 0, 'property_38636', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(39, 'Picture Perfect Drive Dom_Nowy39', 'Picture Perfect Drive', '{\"x\":-580.27551269531,\"y\":491.5041809082,\"z\":108.90298461914}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-580.27551269531,\"y\":491.5041809082,\"z\":108.90298461914}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 121940, 0, 'property_233521', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(40, 'Ace Jones Dr Apartament40', 'Ace Jones Dr', '{\"x\":-1540.0125732422,\"y\":420.55624389648,\"z\":110.01399230957}', '{\"x\":-1289.91,\"y\":449.89,\"z\":97.9}', '{\"x\":-1289.91,\"y\":449.89,\"z\":97.9}', '{\"x\":-1540.0125732422,\"y\":420.55624389648,\"z\":110.01399230957}', '[]', NULL, 1, 0, NULL, '{\"x\":-1288.56,\"y\":455.86,\"z\":90.29}', 148641, 0, 'property_410980', '{\"x\":-1286.27,\"y\":440.47,\"z\":94.12}', '{\"x\":-1285.96,\"y\":437.96,\"z\":94.09}', '{\"x\":265.7,\"y\":-997.74,\"z\":-99.01}'),
(41, 'Ace Jones Dr Apartament41', 'Ace Jones Dr', '{\"x\":-1495.8928222656,\"y\":436.99563598633,\"z\":112.49788665771}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-18.34,\"y\":-591.49,\"z\":90.11}', '{\"x\":-1495.8928222656,\"y\":436.99563598633,\"z\":112.49788665771}', '[]', NULL, 1, 0, NULL, '{\"x\":-25.84,\"y\":-588.74,\"z\":90.12}', 163358, 0, 'property_400910', '{\"x\":-31.95,\"y\":-587.63,\"z\":83.95}', '{\"x\":-38.69,\"y\":-583.12,\"z\":83.92}', '{\"x\":-34.09,\"y\":-590.36,\"z\":88.71}'),
(42, 'Ace Jones Dr Apartament42', 'Ace Jones Dr', '{\"x\":-1453.9033203125,\"y\":512.2666015625,\"z\":117.79639434814}', '{\"x\":-786.8,\"y\":315.73,\"z\":217.63}', '{\"x\":-786.8,\"y\":315.73,\"z\":217.63}', '{\"x\":-1453.9033203125,\"y\":512.2666015625,\"z\":117.79639434814}', '[]', NULL, 1, 0, NULL, '{\"x\":-800.1,\"y\":338.48,\"z\":220.44}', 71681, 0, 'property_920654', '{\"x\":-803.84,\"y\":335.64,\"z\":220.48}', '{\"x\":-796.32,\"y\":328.43,\"z\":220.44}', '{\"x\":-782.02,\"y\":325.48,\"z\":217.04}'),
(43, 'Hangman Ave Dom_Nowy44', 'Hangman Ave', '{\"x\":-1405.3665771484,\"y\":526.6494140625,\"z\":123.83127593994}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1405.3665771484,\"y\":526.6494140625,\"z\":123.83127593994}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 139290, 0, 'property_806488', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(44, 'Droga 68 Melina45', 'Droga 68', '{\"x\":397.65255737305,\"y\":2637.5861816406,\"z\":44.681781768799}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":397.65255737305,\"y\":2637.5861816406,\"z\":44.681781768799}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 119056, 0, 'property_593201', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(45, 'Droga 68 Melina46', 'Droga 68', '{\"x\":392.55303955078,\"y\":2634.0627441406,\"z\":44.672416687012}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":392.55303955078,\"y\":2634.0627441406,\"z\":44.672416687012}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 121874, 0, 'property_970886', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(46, 'Droga 68 Melina47', 'Droga 68', '{\"x\":385.27618408203,\"y\":2632.392578125,\"z\":44.67259979248}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":385.27618408203,\"y\":2632.392578125,\"z\":44.67259979248}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 93074, 0, 'property_765808', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(47, 'Droga 68 Melina48', 'Droga 68', '{\"x\":379.85296630859,\"y\":2629.3913574219,\"z\":44.672428131104}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":379.85296630859,\"y\":2629.3913574219,\"z\":44.672428131104}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 133080, 0, 'property_492096', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(48, 'Droga 68 Melina49', 'Droga 68', '{\"x\":372.54739379883,\"y\":2627.6379394531,\"z\":44.672584533691}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":372.54739379883,\"y\":2627.6379394531,\"z\":44.672584533691}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 149516, 0, 'property_752746', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(49, 'Droga 68 Melina50', 'Droga 68', '{\"x\":367.22665405273,\"y\":2624.5756835938,\"z\":44.672481536865}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":367.22665405273,\"y\":2624.5756835938,\"z\":44.672481536865}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 136045, 0, 'property_927673', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(50, 'Droga 68 Melina51', 'Droga 68', '{\"x\":359.55795288086,\"y\":2623.00390625,\"z\":44.677280426025}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":359.55795288086,\"y\":2623.00390625,\"z\":44.677280426025}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 162497, 0, 'property_49286', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(51, 'Droga 68 Melina52', 'Droga 68', '{\"x\":354.25347900391,\"y\":2619.9768066406,\"z\":44.672386169434}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":354.25347900391,\"y\":2619.9768066406,\"z\":44.672386169434}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 129076, 0, 'property_813080', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(52, 'Droga 68 Melina53', 'Droga 68', '{\"x\":347.0478515625,\"y\":2618.060546875,\"z\":44.672492980957}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":347.0478515625,\"y\":2618.060546875,\"z\":44.672492980957}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 146773, 0, 'property_983398', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(53, 'Droga 68 Melina54', 'Droga 68', '{\"x\":341.72268676758,\"y\":2615.064453125,\"z\":44.672470092773}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":341.72268676758,\"y\":2615.064453125,\"z\":44.672470092773}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 98512, 0, 'property_384583', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(54, 'Niland Ave Melina55', 'Niland Ave', '{\"x\":1916.01953125,\"y\":3823.931640625,\"z\":32.435676574707}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":1916.01953125,\"y\":3823.931640625,\"z\":32.435676574707}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 129263, 0, 'property_956939', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(55, 'Algonquin Blvd Melina56', 'Algonquin Blvd', '{\"x\":1880.6204833984,\"y\":3810.6096191406,\"z\":32.778831481934}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":1880.6204833984,\"y\":3810.6096191406,\"z\":32.778831481934}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 161679, 0, 'property_951843', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(56, 'Niland Ave Melina57', 'Niland Ave', '{\"x\":1898.9133300781,\"y\":3781.8303222656,\"z\":32.876888275146}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":1898.9133300781,\"y\":3781.8303222656,\"z\":32.876888275146}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 162695, 0, 'property_350983', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(57, 'Armadillo Ave Melina58', 'Armadillo Ave', '{\"x\":1843.5025634766,\"y\":3778.0104980469,\"z\":33.585384368896}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":1843.5025634766,\"y\":3778.0104980469,\"z\":33.585384368896}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 160767, 0, 'property_605163', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}'),
(58, 'Paleto Blvd Dom_Nowy59', 'Paleto Blvd', '{\"x\":31.085947036743,\"y\":6596.69921875,\"z\":32.822231292725}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":31.085947036743,\"y\":6596.69921875,\"z\":32.822231292725}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 158908, 0, 'property_80201', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(59, 'Paleto Blvd Dom_Nowy60', 'Paleto Blvd', '{\"x\":11.536932945251,\"y\":6578.3359375,\"z\":33.070495605469}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":11.536932945251,\"y\":6578.3359375,\"z\":33.070495605469}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 117964, 0, 'property_400757', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(60, 'Paleto Blvd Dom_Nowy61', 'Paleto Blvd', '{\"x\":-15.323630332947,\"y\":6557.509765625,\"z\":33.240409851074}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-15.323630332947,\"y\":6557.509765625,\"z\":33.240409851074}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 148092, 0, 'property_623047', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(61, 'Procopio Dr Dom_Nowy62', 'Procopio Dr', '{\"x\":-105.50967407227,\"y\":6528.7241210938,\"z\":30.166919708252}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-105.50967407227,\"y\":6528.7241210938,\"z\":30.166919708252}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 130722, 1, 'property_242005', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(62, 'Procopio Dr Dom63', 'Procopio Dr', '{\"x\":-130.27241516113,\"y\":6551.38671875,\"z\":29.522747039795}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":-130.27241516113,\"y\":6551.38671875,\"z\":29.522747039795}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 89232, 0, 'property_744781', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(63, 'Procopio Dr Dom_Nowy64', 'Procopio Dr', '{\"x\":-44.232246398926,\"y\":6582.0952148438,\"z\":32.175521850586}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-44.232246398926,\"y\":6582.0952148438,\"z\":32.175521850586}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 139860, 0, 'property_897308', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(64, 'Procopio Dr Dom_Nowy65', 'Procopio Dr', '{\"x\":-26.553825378418,\"y\":6597.1831054688,\"z\":31.860788345337}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-26.553825378418,\"y\":6597.1831054688,\"z\":31.860788345337}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 115685, 0, 'property_405274', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(65, 'Procopio Dr Dom_Nowy66', 'Procopio Dr', '{\"x\":-41.634895324707,\"y\":6637.3251953125,\"z\":31.087532043457}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-41.634895324707,\"y\":6637.3251953125,\"z\":31.087532043457}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 101486, 0, 'property_800171', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(66, 'Procopio Dr Dom_Nowy67', 'Procopio Dr', '{\"x\":1.757799744606,\"y\":6612.5405273438,\"z\":32.079624176025}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":1.757799744606,\"y\":6612.5405273438,\"z\":32.079624176025}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 153786, 0, 'property_208649', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(67, 'Procopio Dr Dom_Nowy68', 'Procopio Dr', '{\"x\":-9.5746059417725,\"y\":6654.2387695312,\"z\":31.699108123779}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-1407.08,\"y\":-2629.89,\"z\":-91.99}', '{\"x\":-9.5746059417725,\"y\":6654.2387695312,\"z\":31.699108123779}', '[]', NULL, 1, 0, NULL, '{\"x\":-1308.12,\"y\":-2636.82,\"z\":-91.99}', 160587, 0, 'property_537048', '{\"x\":-1415.76,\"y\":-2637.08,\"z\":-91.99}', '{\"x\":-1415.83,\"y\":-2638.69,\"z\":-91.99}', '{\"x\":-1418.98,\"y\":-2628.28,\"z\":-91.99}'),
(68, 'Procopio Dr Dom69', 'Procopio Dr', '{\"x\":35.381786346436,\"y\":6663.0825195312,\"z\":32.190448760986}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":346.52,\"y\":-1013.01,\"z\":-99.2}', '{\"x\":35.381786346436,\"y\":6663.0825195312,\"z\":32.190448760986}', '[]', NULL, 1, 0, NULL, '{\"x\":351.29,\"y\":-999.21,\"z\":-99.2}', 67231, 0, 'property_741852', '{\"x\":347.24,\"y\":-995.45,\"z\":-99.11}', '{\"x\":350.73,\"y\":-993.5,\"z\":-99.2}', '{\"x\":344.0,\"y\":-1001.13,\"z\":-99.2}'),
(69, 'Procopio Dr Melina70', 'Procopio Dr', '{\"x\":56.81840133667,\"y\":6646.416015625,\"z\":32.276351928711}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":266.07,\"y\":-1007.41,\"z\":-101.01}', '{\"x\":56.81840133667,\"y\":6646.416015625,\"z\":32.276351928711}', '[]', NULL, 1, 0, NULL, '{\"x\":265.89,\"y\":-999.57,\"z\":-99.01}', 135027, 0, 'property_305145', '{\"x\":254.16,\"y\":-1001.08,\"z\":-98.93}', '{\"x\":259.87,\"y\":-1004.04,\"z\":-99.01}', '{\"x\":-1287.7,\"y\":446.78,\"z\":97.89}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `redux_user_peds`
--

CREATE TABLE `redux_user_peds` (
  `identifier` varchar(255) NOT NULL,
  `pedmodel` varchar(255) DEFAULT NULL,
  `randomized` varchar(255) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `redux_user_peds`
--

INSERT INTO `redux_user_peds` (`identifier`, `pedmodel`, `randomized`) VALUES
('11000010abcd934', 'skin_dante', '1'),
('11000013c1beefe', 'skin_dante', '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `shipments`
--

INSERT INTO `shipments` (`id`, `identifier`, `label`, `item`, `price`, `count`, `time`) VALUES
(5, 'fb39e242f6d9fc74f3cb7c87e7ea179a7d5b7ea1', 'Picolo', 'picolo', '85', '10', 1618146731),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Woda', 'water', '10', '10000', 1618560659),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Chleb', 'bread', '10', '10000', 1618560669),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Wino', 'wino', '185', '1000', 1618560692),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Kawa', 'kawa', '30', '10000', 1618560702),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Mars', 'mars', '15', '10000', 1618560723),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Ice-Tea', 'icetea', '15', '10000', 1618560745),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'GBS', 'gbs', '30', '10000', 1618560754),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Kanapka', 'kanapka', '15', '10000', 1618560762),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Hot-dog', 'hotdog', '13', '10000', 1618560770),
(4, '4d763d422228c2784718b75a02a21724b4d7920a', 'Monster', 'monster', '10', '10000', 1618560779),
(15, '4702e23f506ec81222b549f804e06a42f88d26da', 'Picolo', 'picolo', '85', '1000', 1618992566),
(15, '4702e23f506ec81222b549f804e06a42f88d26da', 'Woda', 'water', '10', '1000', 1618992579),
(15, '4702e23f506ec81222b549f804e06a42f88d26da', 'Chleb', 'bread', '10', '1000', 1618992589),
(16, '110000116a199f2', 'Szampan', 'szampan', '250', '100', 1624209604);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shops`
--

CREATE TABLE `shops` (
  `ShopNumber` int(11) NOT NULL DEFAULT '0',
  `src` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `shops`
--

INSERT INTO `shops` (`ShopNumber`, `src`, `count`, `item`, `price`, `label`) VALUES
(9, 'img/bread.png', 8890, 'bread', 5, 'Chleb'),
(9, 'img/herbata.png', 10000, 'herbata', 8, 'Herbata'),
(9, 'img/hotdog.png', 10000, 'hotdog', 3, 'Hot-dog'),
(9, 'img/kawa.png', 986, 'kawa', 7, 'Kawa'),
(9, 'img/mars.png', 99983, 'mars', 8, 'Mars'),
(9, 'img/szampan.png', 9999, 'szampan', 50, 'Szampan'),
(9, 'img/wino.png', 1000, 'wino', 100, 'Wino'),
(9, 'img/water.png', 9985, 'water', 5, 'Woda'),
(10, 'img/bread.png', 690, 'bread', 5, 'Chleb'),
(10, 'img/gbs.png', 421, 'gbs', 12, 'GBS'),
(10, 'img/herbata.png', 934, 'herbata', 10, 'Herbata'),
(10, 'img/hotdog.png', 931, 'hotdog', 7, 'Hot-dog'),
(10, 'img/icetea.png', 818, 'icetea', 12, 'Ice-Tea'),
(10, 'img/kanapka.png', 1100, 'kanapka', 6, 'Kanapka'),
(10, 'img/kawa.png', 973, 'kawa', 10, 'Kawa'),
(10, 'img/mars.png', 1133, 'mars', 5, 'Mars'),
(10, 'img/monster.png', 967, 'monster', 25, 'Monster'),
(10, 'img/picolo.png', 988, 'picolo', 150, 'Picolo'),
(10, 'img/vodka.png', 977, 'vodka', 180, 'Vodka'),
(10, 'img/wino.png', 994, 'wino', 500, 'Wino'),
(1, 'img/bread.png', 9900, 'bread', 5, 'Chleb'),
(1, 'img/water.png', 9895, 'water', 5, 'Woda'),
(1, 'img/herbata.png', 10000, 'herbata', 8, 'Herbata'),
(1, 'img/hotdog.png', 9987, 'hotdog', 3, 'Hot-dog'),
(1, 'img/kawa.png', 10000, 'kawa', 7, 'Kawa'),
(1, 'img/kanapka.png', 9957, 'kanapka', 15, 'Kanapka'),
(1, 'img/mars.png', 9980, 'mars', 8, 'Mars'),
(1, 'img/monster.png', 9989, 'monster', 20, 'Monster'),
(1, 'img/wino.png', 10000, 'wino', 100, 'Wino'),
(1, 'img/szampan.png', 10000, 'szampan', 50, 'Szampan'),
(9, 'img/monster.png', 9984, 'monster', 10, 'Monster'),
(14, 'img/bread.png', 929, 'bread', 5, 'Chleb'),
(14, 'img/gbs.png', 1000, 'gbs', 30, 'GBS'),
(14, 'img/herbata.png', 499, 'herbata', 8, 'Herbata'),
(14, 'img/hotdog.png', 10999, 'hotdog', 6, 'Hot-dog'),
(14, 'img/icetea.png', 989, 'icetea', 10, 'Ice-Tea'),
(14, 'img/kanapka.png', 999, 'kanapka', 10, 'Kanapka'),
(14, 'img/mars.png', 999, 'mars', 7, 'Mars'),
(14, 'img/kawa.png', 489, 'kawa', 5, 'Kawa'),
(14, 'img/monster.png', 999, 'monster', 50, 'Monster'),
(14, 'img/picolo.png', 499, 'picolo', 250, 'Picolo'),
(14, 'img/szampan.png', 499, 'szampan', 500, 'Szampan'),
(14, 'img/vodka.png', 498, 'vodka', 350, 'Vodka'),
(14, 'img/wino.png', 499, 'wino', 90, 'Wino'),
(14, 'img/water.png', 950, 'water', 5, 'Woda'),
(6, 'img/bread.png', 266, 'bread', 5, 'Chleb'),
(6, 'img/water.png', 272, 'water', 5, 'Woda'),
(6, 'img/vodka.png', 177, 'vodka', 20, 'Vodka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shopss`
--

CREATE TABLE `shopss` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `shopss`
--

INSERT INTO `shopss` (`id`, `store`, `item`, `price`) VALUES
(1, 'Techniczny', 'lockpick', 5000),
(7, 'Techniczny', 'phone', 800),
(8, 'Techniczny', 'handcuffs', 5000),
(9, 'DarkShop', 'pistol', 65000),
(11, 'DarkShop', 'microsmg', 1200000),
(12, 'DarkShop', 'assaultrifle', 10000000),
(14, 'DarkShop', 'knife', 2000),
(15, 'DarkShop', 'heavypistol', 350000),
(16, 'DarkShop', 'smg_ammo', 900),
(17, 'DarkShop', 'rifle_ammo', 1000),
(19, 'DarkShop', 'pistol_ammo', 70),
(20, 'DarkShop', 'vintagepistol', 290000),
(21, 'DarkShop', 'snspistol_mk2', 52000),
(22, 'Techniczny', 'fixkit', 6000),
(23, 'DarkShop', 'snspistol', 40000),
(24, 'Shop', 'bread', 10),
(25, 'Shop', 'bulka', 8),
(26, 'Shop', 'fanta', 16),
(27, 'Shop', 'herbata', 20),
(28, 'Shop', 'hotdog', 17),
(29, 'Shop', 'icetea', 16),
(30, 'Shop', 'kanapka', 22),
(31, 'Shop', 'kawa', 30),
(32, 'Shop', 'monster', 30),
(33, 'Shop', 'szampan', 400),
(34, 'Shop', 'vodka', 200),
(35, 'Shop', 'water', 8),
(36, 'Shop', 'wino', 300),
(37, 'Shop', 'scratchcard', 500),
(38, 'Shop', 'scratchcardgold', 1500),
(39, 'Shop', 'scratchcardpremium', 12000),
(40, 'Techniczny', 'bat', 3000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statystyki`
--

CREATE TABLE `statystyki` (
  `ID` int(10) NOT NULL,
  `identifier` varchar(1000) NOT NULL,
  `stamina` varchar(1000) NOT NULL,
  `sila` varchar(1000) NOT NULL,
  `pp` varchar(1000) NOT NULL,
  `zj` varchar(1000) NOT NULL,
  `zl` varchar(1000) NOT NULL,
  `zs` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `statystyki`
--

INSERT INTO `statystyki` (`ID`, `identifier`, `stamina`, `sila`, `pp`, `zj`, `zl`, `zs`) VALUES
(16, '110000115a5ea25', '36', '0', '2', '4', '0', '0'),
(17, '1100001479df7f9', '10', '0', '1', '0', '0', '0'),
(18, '110000140e97ef6', '16', '0', '1', '1', '0', '0'),
(19, '110000144511153', '1', '0', '0', '0', '0', '0'),
(20, '1100001430a643f', '2', '0', '0', '0', '0', '0'),
(21, '11000013c1beefe', '7', '0', '0', '0', '0', '0'),
(22, '1100001365d4c9f', '4', '0', '0', '1', '0', '0'),
(23, '11000010abcd934', '4', '0', '0', '0', '0', '0'),
(24, '110000141024428', '1', '0', '0', '1', '0', '0'),
(25, '110000147efb296', '3', '0', '0', '0', '0', '0'),
(26, '11000010c68ca4c', '16', '0', '2', '5', '0', '0'),
(27, '1100001369d2602', '5', '0', '0', '0', '0', '0'),
(28, '1100001183f79f1', '3', '0', '0', '0', '0', '0'),
(29, '1100001454c06a0', '1', '0', '0', '0', '0', '0'),
(30, '1100001124f0954', '0', '0', '0', '0', '0', '0'),
(31, '11000011769c15e', '1', '0', '0', '0', '0', '0'),
(32, '11000013fca94a6', '1', '0', '0', '0', '0', '0'),
(33, '11000013b094ff8', '1', '0', '0', '0', '0', '0'),
(34, '110000132efe10b', '0', '0', '0', '0', '0', '0'),
(35, '11000013e2efbf1', '2', '0', '0', '0', '0', '0'),
(36, '110000116a199f2', '7', '0', '1', '6', '0', '0'),
(37, '11000011b29d297', '10', '0', '1', '7', '0', '0'),
(38, '11000011451424b', '2', '0', '2', '1', '0', '0'),
(39, '110000148e94bde', '17', '3', '0', '1', '0', '0'),
(40, '1100001178e5843', '57', '2', '2', '7', '0', '0'),
(41, '110000141e40c52', '1', '0', '0', '0', '0', '0'),
(42, '11000011cf9d388', '1', '0', '0', '0', '0', '0'),
(43, '11000013571d092', '8', '0', '0', '1', '0', '0'),
(44, '11000011ce74f56', '1', '0', '0', '0', '0', '0'),
(45, '11000013f755f8b', '1', '0', '0', '0', '0', '0'),
(46, '110000107c1bed3', '4', '0', '0', '0', '0', '0'),
(47, '1100001403bfd98', '0', '0', '0', '0', '0', '0'),
(48, '110000113c980af', '8', '0', '1', '1', '0', '0'),
(49, '11000013eb9d59c', '2', '0', '0', '0', '0', '0'),
(50, '11000013d8d00d6', '0', '0', '0', '0', '0', '0'),
(51, '11000013e808767', '4', '0', '0', '0', '0', '0'),
(52, '110000146ddcaf3', '0', '0', '0', '0', '0', '0'),
(53, '11000010e4eb1bd', '1', '0', '0', '0', '0', '0'),
(54, '11000014775b5fe', '1', '0', '0', '0', '0', '0'),
(55, '11000010ee7807f', '2', '0', '0', '0', '0', '0'),
(56, '110000147a942c6', '1', '0', '0', '0', '0', '0'),
(57, '11000014683ac22', '2', '0', '0', '0', '0', '0'),
(58, '110000139e3f4ee', '1', '0', '0', '0', '0', '0'),
(59, '110000119d83bde', '1', '0', '0', '0', '0', '0'),
(60, '110000113cd6594', '0', '0', '0', '0', '0', '0'),
(61, '110000145326cbc', '1', '0', '0', '0', '0', '0'),
(62, '110000114a0ca04', '1', '0', '0', '0', '0', '0'),
(63, '11000011a7ecaeb', '1', '0', '0', '0', '0', '0'),
(64, '11000011900882c', '1', '0', '0', '0', '0', '0'),
(65, '1100001477d658b', '7', '0', '0', '0', '0', '0'),
(66, '110000145685a64', '1', '0', '0', '0', '0', '0'),
(67, '1100001434e9535', '0', '0', '0', '0', '0', '0'),
(68, '11000014689c24f', '1', '0', '0', '0', '0', '0'),
(69, '11000013f9be48d', '2', '0', '0', '0', '0', '0'),
(70, '11000011b827064', '0', '0', '0', '0', '0', '0'),
(71, '11000010f856cdc', '1', '0', '0', '0', '0', '0'),
(72, '110000136d722b6', '1', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_notatki`
--

CREATE TABLE `tablet_notatki` (
  `identifier` varchar(100) NOT NULL,
  `notatka` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tablet_notatki`
--

INSERT INTO `tablet_notatki` (`identifier`, `notatka`) VALUES
('steam:110000145f9ff30', ''),
('steam:110000140e97ef6', ''),
('steam:11000013571d092', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_ogloszenia`
--

CREATE TABLE `tablet_ogloszenia` (
  `ogloszenie` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tablet_ogloszenia`
--

INSERT INTO `tablet_ogloszenia` (`ogloszenie`, `policjant`, `data`) VALUES
('61 | BOY | STATUS 5', 'Jacob Prince', '2021-06-22 00:25:29'),
('02, 61 | EADWARD | STATUS 5 | Centralne LS', 'Jacob Prince', '2021-06-24 19:22:00'),
('01| SEU| 5', 'Kaspian Klimek', '2021-07-01 21:14:22'),
('60, 42, 43 | EDWARD | STATUS 5 | Centralny LS', 'Piter Watson', '2021-07-02 13:33:39'),
('60, 82, 83 | EDWARD | STATUS 5 | Centralny LS', 'Piter Watson', '2021-07-02 13:34:37'),
('02,86 |BOY| Całe LS', 'Bob Esmano', '2021-07-02 13:34:42'),
('60, 83 | Adam | Całe LS', 'Piter Watson', '2021-07-02 14:33:41'),
('83 | adam (victoria) STatus 5 całe LS\n', 'Szymon Koksik', '2021-07-02 17:40:30'),
('83,86 | ADAM | Status 5\n', 'Szymon Koksik', '2021-07-02 20:13:51'),
('83,86 | EDAWRD | Status 5\n', 'Szymon Koksik', '2021-07-02 20:35:53'),
('raport z patrolu uszkodzenia brak 2 szyb zarysowany l. błotnik oraz tylnie l. drzwi wgniecony błotnik oraz maska oraz lefrektor ', 'Szymon Koksik', '2021-07-04 22:19:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_ogloszenia_seen`
--

CREATE TABLE `tablet_ogloszenia_seen` (
  `identifier` varchar(100) NOT NULL,
  `seen` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tablet_ogloszenia_seen`
--

INSERT INTO `tablet_ogloszenia_seen` (`identifier`, `seen`) VALUES
('steam:1100001173a0691', 0),
('steam:110000113c980af', 1),
('steam:11000010c68ca4c', 1),
('steam:110000147efb296', 0),
('steam:110000140e97ef6', 1),
('steam:1100001479df7f9', 0),
('steam:1100001365d4c9f', 1),
('steam:110000116a199f2', 0),
('steam:1100001178e5843', 1),
('steam:11000013571d092', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tablet_raporty`
--

CREATE TABLE `tablet_raporty` (
  `identifier` varchar(100) NOT NULL,
  `raport` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tablet_raporty`
--

INSERT INTO `tablet_raporty` (`identifier`, `raport`, `policjant`, `data`, `status`) VALUES
('steam:110000113c980af', 'Test', 'Jacob Prince', '2021-06-19 21:06:56', 0),
('steam:110000113c980af', 'Test', 'Jacob Prince', '2021-06-21 22:51:04', 1),
('steam:110000113c980af', '61, 89 | BOY | STATUS 5', 'Jacob Prince', '2021-06-21 22:58:40', 0),
('steam:1100001479df7f9', 'test', 'Matthew Wiliams', '2021-06-21 23:00:26', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
(1, 'pidzama', 'joemama', '/html/static/img/twitter/default_profile.png'),
(2, 'Dominik', 'Dominik5', '/html/static/img/twitter/default_profile.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `twitter_likes`
--

INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `twitter_tweets`
--

INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES
(1, 1, '110000148e94bde', 'Witam.', '2021-07-04 18:51:02', 1),
(2, 1, '110000148e94bde', 'ide do wiezienia :(', '2021-07-04 20:58:48', 0),
(3, 1, '110000148e94bde', 'jednak nie, nie zorientowali sie ze ja napad zrobilem', '2021-07-04 21:12:14', 0),
(4, 2, '110000115a5ea25', 'rh', '2021-07-08 10:35:58', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext,
  `status` longtext,
  `isDead` varchar(100) DEFAULT 'false',
  `phone_number` varchar(10) DEFAULT NULL,
  `w_org` varchar(50) DEFAULT 'unemployed',
  `w_org_grade` varchar(50) DEFAULT '0',
  `tattoos` varchar(255) DEFAULT '{}',
  `kartoteka_avatar` varchar(50) DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT '0',
  `last_property` varchar(255) DEFAULT NULL,
  `job_callsing` varchar(1000) NOT NULL DEFAULT '{}',
  `armour` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `health` tinyint(3) UNSIGNED NOT NULL DEFAULT '200'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `isDead`, `phone_number`, `w_org`, `w_org_grade`, `tattoos`, `kartoteka_avatar`, `jail`, `last_property`, `job_callsing`, `armour`, `health`) VALUES
('11000010718553b', '{\"money\":0,\"bank\":5000000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":29.3,\"y\":-869.7,\"x\":-197.7,\"heading\":333.8}', 'Tom', 'Jones', '06-06-1990', 'm', 190, '{\"chain_1\":0,\"lipstick_4\":0,\"chest_1\":0,\"beard_2\":10,\"chest_3\":0,\"bracelets_2\":0,\"age_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"sex\":0,\"complexion_1\":0,\"glasses_2\":0,\"sun_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"tshirt_2\":0,\"complexion_2\":0,\"decals_2\":0,\"eyebrows_1\":0,\"decals_1\":0,\"bodyb_1\":0,\"chain_2\":0,\"pants_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"torso_2\":8,\"blush_2\":0,\"face\":0,\"tshirt_1\":15,\"moles_1\":0,\"eyebrows_3\":0,\"mask_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"makeup_4\":0,\"makeup_1\":0,\"pants_1\":7,\"bodyb_2\":0,\"beard_1\":10,\"beard_4\":0,\"helmet_1\":-1,\"bproof_1\":0,\"arms\":0,\"bracelets_1\":-1,\"lipstick_1\":0,\"lipstick_3\":0,\"hair_1\":2,\"ears_2\":0,\"moles_2\":0,\"shoes_2\":0,\"blush_3\":0,\"beard_3\":0,\"glasses_1\":0,\"bags_2\":0,\"mask_2\":0,\"bags_1\":0,\"eyebrows_2\":10,\"watches_1\":3,\"torso_1\":0,\"ears_1\":-1,\"shoes_1\":0,\"sun_1\":0,\"hair_color_1\":0,\"skin\":0,\"helmet_2\":0,\"watches_2\":0,\"hair_color_2\":0,\"eye_color\":0,\"age_1\":0,\"chest_2\":10,\"eyebrows_4\":0,\"blush_1\":0}', '[{\"val\":982100,\"percent\":98.21,\"name\":\"hunger\"},{\"val\":986575,\"percent\":98.6575,\"name\":\"thirst\"}]', 'false', '469-7585', 'unemployed', '0', '{}', NULL, 0, NULL, '{}', 0, 200),
('11000010c68ca4c', '{\"money\":0,\"bank\":5000000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":31.2,\"y\":-955.3,\"x\":-269.4,\"heading\":205.8}', 'Bob', 'Esmano', '15-07-1999', 'm', 180, NULL, '[{\"val\":997000,\"percent\":99.7,\"name\":\"hunger\"},{\"val\":997750,\"percent\":99.775,\"name\":\"thirst\"}]', 'false', '456-9212', 'unemployed', '0', '{}', NULL, 0, NULL, '{}', 0, 200),
('110000140e97ef6', '{\"money\":0,\"bank\":5000020,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":30.7,\"y\":-981.2,\"x\":440.3,\"heading\":271.1}', 'SEX ', 'Z PEDALAMI', '02/02/2000', 'm', 190, '{\"chain_1\":0,\"lipstick_4\":0,\"chest_1\":0,\"beard_2\":0,\"chest_3\":0,\"bracelets_2\":0,\"age_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"sex\":1,\"complexion_1\":0,\"glasses_2\":0,\"bracelets_1\":-1,\"lipstick_2\":0,\"makeup_1\":0,\"tshirt_2\":0,\"complexion_2\":0,\"decals_2\":0,\"eyebrows_1\":0,\"decals_1\":0,\"glasses_1\":0,\"chain_2\":0,\"hair_1\":3,\"bproof_2\":0,\"makeup_2\":0,\"torso_2\":0,\"blush_2\":0,\"face\":5,\"tshirt_1\":0,\"moles_1\":0,\"helmet_1\":-1,\"mask_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"pants_1\":4,\"bodyb_2\":0,\"blush_1\":0,\"beard_4\":0,\"ears_2\":0,\"bproof_1\":0,\"eye_color\":0,\"pants_2\":0,\"makeup_3\":0,\"lipstick_3\":0,\"shoes_2\":0,\"shoes_1\":0,\"hair_color_2\":0,\"watches_1\":-1,\"moles_2\":0,\"beard_3\":0,\"beard_1\":0,\"bags_2\":0,\"mask_2\":0,\"bags_1\":0,\"eyebrows_2\":0,\"sun_2\":0,\"torso_1\":57,\"lipstick_1\":0,\"ears_1\":-1,\"sun_1\":0,\"blush_3\":0,\"skin\":5,\"helmet_2\":0,\"watches_2\":0,\"hair_color_1\":2,\"arms\":0,\"age_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"bodyb_1\":0}', '[{\"val\":980300,\"percent\":98.03,\"name\":\"hunger\"},{\"val\":985225,\"percent\":98.52250000000001,\"name\":\"thirst\"}]', 'false', '368-4233', 'unemployed', '0', '{}', NULL, 0, NULL, '{}', 0, 200),
('11000014510565e', '{\"money\":0,\"bank\":5000020,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":28.6,\"y\":-1018.0,\"x\":115.6,\"heading\":183.0}', 'Janusz', 'Jelonek', '31-01-1976', 'm', 200, '{\"chain_1\":0,\"lipstick_4\":0,\"chest_1\":0,\"beard_2\":0,\"chest_3\":0,\"bracelets_2\":0,\"age_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"sex\":0,\"complexion_1\":0,\"glasses_2\":0,\"sun_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"tshirt_2\":0,\"complexion_2\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"decals_1\":0,\"eye_color\":0,\"blush_1\":0,\"hair_1\":73,\"bproof_2\":0,\"makeup_2\":0,\"torso_2\":0,\"blush_2\":0,\"face\":1,\"tshirt_1\":0,\"moles_1\":0,\"eyebrows_3\":0,\"mask_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"makeup_4\":0,\"watches_2\":0,\"pants_1\":6,\"bodyb_2\":0,\"bracelets_1\":-1,\"beard_4\":0,\"helmet_1\":-1,\"bproof_1\":0,\"chain_2\":0,\"beard_1\":0,\"watches_1\":-1,\"lipstick_3\":0,\"pants_2\":0,\"makeup_1\":0,\"moles_2\":0,\"shoes_2\":0,\"hair_color_2\":0,\"beard_3\":0,\"hair_color_1\":0,\"ears_2\":0,\"mask_2\":0,\"bags_1\":0,\"eyebrows_2\":0,\"glasses_1\":3,\"torso_1\":258,\"decals_2\":0,\"bags_2\":0,\"sun_1\":0,\"blush_3\":0,\"skin\":5,\"helmet_2\":0,\"arms\":0,\"shoes_1\":2,\"bodyb_1\":0,\"age_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"ears_1\":-1}', '[{\"val\":961100,\"percent\":96.11,\"name\":\"hunger\"},{\"val\":970825,\"percent\":97.08250000000001,\"name\":\"thirst\"}]', 'false', '551-8589', 'unemployed', '0', '{}', NULL, 0, NULL, '{}', 0, 200),
('1100001477d658b', '{\"money\":0,\"bank\":5000040,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":33.8,\"y\":-540.4,\"x\":90.7,\"heading\":137.8}', 'Dominik', 'Baxter', '03-06-1995', 'm', 200, '{\"chain_1\":0,\"lipstick_4\":0,\"chest_1\":0,\"beard_2\":0,\"chest_3\":0,\"bracelets_2\":0,\"age_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"sex\":0,\"beard_1\":0,\"glasses_2\":0,\"sun_2\":0,\"lipstick_2\":0,\"makeup_1\":0,\"shoes_1\":0,\"complexion_2\":0,\"decals_2\":0,\"eyebrows_1\":0,\"decals_1\":0,\"glasses_1\":0,\"bags_2\":0,\"pants_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"torso_2\":0,\"blush_2\":0,\"face\":0,\"tshirt_1\":16,\"moles_1\":0,\"helmet_1\":-1,\"mask_1\":0,\"blemishes_1\":0,\"hair_2\":0,\"ears_2\":0,\"bracelets_1\":-1,\"pants_1\":0,\"bodyb_2\":0,\"arms\":0,\"beard_4\":0,\"blush_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"hair_1\":2,\"ears_1\":-1,\"lipstick_3\":0,\"moles_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"shoes_2\":0,\"lipstick_1\":0,\"beard_3\":0,\"bodyb_1\":0,\"hair_color_2\":0,\"mask_2\":0,\"bags_1\":0,\"eyebrows_2\":0,\"complexion_1\":0,\"torso_1\":1,\"tshirt_2\":15,\"makeup_3\":0,\"sun_1\":0,\"hair_color_1\":29,\"skin\":0,\"helmet_2\":0,\"watches_2\":0,\"chain_2\":0,\"eye_color\":0,\"age_1\":0,\"chest_2\":0,\"eyebrows_4\":0,\"blush_1\":0}', '[{\"name\":\"hunger\",\"percent\":93.63,\"val\":936300},{\"name\":\"thirst\",\"percent\":95.2225,\"val\":952225}]', 'false', '844-3120', 'unemployed', '0', '{}', NULL, 0, NULL, '{}', 0, 200);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_kartoteka`
--

CREATE TABLE `user_kartoteka` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci,
  `grzywna` int(11) DEFAULT NULL,
  `ilosc_lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user_kartoteka`
--

INSERT INTO `user_kartoteka` (`identifier`, `policjant`, `powod`, `grzywna`, `ilosc_lat`, `data`) VALUES
('steam:1100001369d2602', 'Piter Watson', 'Ucieczka przed lssd, Kradzież Pojazdu', 15000, '10', '2021-07-02 11:57:37'),
('steam:110000115a5ea25', 'Szymon Koksik', 'Jazda bez prawa jazdy, Ucieczka przed LSSD', 5000, '10', '2021-07-02 13:49:18'),
('steam:110000148e94bde', 'Bob Esmano', 'Licencja na broń | Bob Esmano Sheriff 02', 30000, 'Brak', '2021-07-04 20:12:58'),
('steam:110000148e94bde', 'Martin Zara', 'Poruszanie się niesprawnym technicznie pojadzem. (x1)', 500, 'Brak', '2021-07-04 23:37:10'),
('steam:11000010ee7807f', 'Bob Esmano', 'Ucieczka przed policją, Napad na sklep, Posiadanie broni bez zezwolenia', 40000, '45', '2021-07-05 15:08:28'),
('steam:11000013e808767', 'Bob Esmano', 'Ucieczka przed policją, Napad na sklep, Posiadanie broni bez zezwolenia', 40000, '50', '2021-07-05 15:11:53'),
('steam:110000115a5ea25', 'Dominik Baxter', 'Test', 1, '10', '2021-07-07 09:02:53'),
('steam:110000115a5ea25', 'Dominik Baxter', '1', 1, '100', '2021-07-07 09:10:08'),
('steam:110000115a5ea25', 'Dominik Baxter', '1', 1, '600', '2021-07-07 09:11:42'),
('steam:110000115a5ea25', 'Dominik Baxter', 'Test TestTest TestTest TestTest Test', 1, '100', '2021-07-07 09:12:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL DEFAULT '0',
  `owner` varchar(40) NOT NULL,
  `time` int(50) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `label`, `owner`, `time`) VALUES
(125, 'drive_bike', '0', '11000010c68ca4c', -1),
(126, 'drive', '0', '11000010c68ca4c', -1),
(127, 'drive_truck', '0', '11000010c68ca4c', -1),
(128, 'weapon', '0', '11000010c68ca4c', -1),
(129, 'weapon_long', '0', '11000010c68ca4c', -1),
(130, 'dmv', '0', '1100001369d2602', -1),
(131, 'drive', '0', '1100001369d2602', -1),
(132, 'dmv', '0', '110000116a199f2', -1),
(133, 'drive', '0', '110000116a199f2', -1),
(134, 'dmv', '0', '110000141e40c52', -1),
(135, 'drive', '0', '110000141e40c52', -1),
(136, 'dmv', '0', '11000011b29d297', -1),
(137, 'drive', '0', '11000011b29d297', -1),
(138, 'drive_bike', '0', '11000011b29d297', -1),
(139, 'drive_truck', '0', '11000011b29d297', -1),
(140, 'weapon', '0', '11000011b29d297', -1),
(141, 'dmv', '0', '110000148e94bde', -1),
(142, 'drive', '0', '110000148e94bde', -1),
(143, 'drive_bike', '0', '11000013571d092', -1),
(144, 'drive_truck', '0', '11000013571d092', -1),
(145, 'weapon', '0', '11000013571d092', -1),
(146, 'weapon_long', '0', '11000013571d092', -1),
(147, 'weapon', '0', '110000148e94bde', -1),
(148, 'drive_bike', '0', '1100001178e5843', -1),
(149, 'drive', '0', '1100001178e5843', -1),
(150, 'drive_truck', '0', '1100001178e5843', -1),
(151, 'weapon', '0', '1100001178e5843', -1),
(154, 'weapon', '0', '110000115a5ea25', -1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_poszukiwania`
--

CREATE TABLE `user_poszukiwania` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci,
  `pojazd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user_poszukiwania`
--

INSERT INTO `user_poszukiwania` (`identifier`, `policjant`, `powod`, `pojazd`, `data`) VALUES
('11000011b29d297', 'Matthew Williams', 'Przekroczenie prędkości w mieście (150km/h), Ucieczka przed policją.', '---', '2021-07-02 20:18:18'),
('110000148e94bde', 'Martin Zara', 'Napad na sklep x1 | Postrzelenie Funkcjonariusza Sheriff Department x1', 'YHS 639', '2021-07-05 01:13:45'),
('110000115a5ea25', 'Martin Zara', 'Ucieczka ze szpitala x1 | Ucieczka przed LSSD x1 | Strzały w kierunku LSSD | Nielegalny pistolet x1', 'Bati ', '2021-07-05 16:07:50');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_poszukiwania_c7`
--

CREATE TABLE `user_poszukiwania_c7` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci,
  `pojazd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 1500000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 90000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 200000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 250000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 150000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 130000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 1250000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 900000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 2000000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Freecrawler', 'freecrawler', 450000, 'offroad'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 500000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 1250000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 1000000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 1300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Toros ', 'toros', 500000, 'suvs'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 2000000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_parts`
--

CREATE TABLE `vehicle_parts` (
  `id` int(11) NOT NULL,
  `plate` varchar(100) NOT NULL,
  `parts` longtext NOT NULL,
  `mileage` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `veh_km`
--

CREATE TABLE `veh_km` (
  `carplate` varchar(10) NOT NULL,
  `oldcarplate` varchar(100) NOT NULL,
  `km` varchar(255) NOT NULL DEFAULT '0',
  `state` int(1) NOT NULL DEFAULT '0',
  `reset` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `name`, `item`, `price`) VALUES
(46, 'GunShop', 'Pukawka', 'snspistol', 30000),
(57, 'GunShop', 'Naboje do pistoletu ', 'pistol_ammo ', 1000),
(59, 'GunShop', 'Nóż', 'knife', 1000),
(60, 'GunShop', 'Baseball', 'bat', 1000),
(61, 'GunShop', 'Młotek', 'hammer', 600),
(62, 'GunShop', 'łom', 'crowbar', 1500),
(63, 'GunShop', 'Siekiera', 'hatchet', 1500),
(64, 'GunShop', 'Latarka', 'flashlight', 800);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org`
--

CREATE TABLE `w_org` (
  `nazwa` varchar(50) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `kasa` int(11) DEFAULT NULL,
  `kasaB` int(11) DEFAULT NULL,
  `ubrania` varchar(10000) NOT NULL DEFAULT 'BRAK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `w_org`
--

INSERT INTO `w_org` (`nazwa`, `level`, `kasa`, `kasaB`, `ubrania`) VALUES
('CZARNI', 0, 0, 0, '[]'),
('F.A.S.T.F.O.O.D', 0, 3000, 24564, 'BRAK'),
('KF', 0, 0, 0, '[]'),
('MAFIA', 0, 0, 0, '[{\"nazwa\":\"o1\",\"skin\":{\"decals_2\":0,\"helmet_1\":-1,\"bags_1\":0,\"chain_1\":53,\"shoes_1\":10,\"pants_1\":28,\"arms\":20,\"arms_2\":0,\"torso_1\":115,\"tshirt_2\":3,\"helmet_2\":0,\"torso_2\":0,\"mask_1\":0,\"tshirt_1\":75,\"bags_2\":0,\"pants_2\":0,\"decals_1\":0,\"bproof_1\":0,\"mask_2\":0,\"shoes_2\":0}},{\"nazwa\":\"issac\",\"skin\":{\"decals_2\":0,\"helmet_1\":-1,\"shoes_2\":0,\"bags_2\":0,\"shoes_1\":24,\"pants_1\":24,\"arms\":41,\"mask_1\":0,\"torso_1\":34,\"pants_2\":0,\"tshirt_1\":1,\"torso_2\":0,\"tshirt_2\":0,\"bags_1\":0,\"bproof_1\":0,\"chain_1\":0,\"decals_1\":0,\"helmet_2\":0,\"mask_2\":0,\"arms_2\":0}},{\"nazwa\":\"xavier\",\"skin\":{\"decals_2\":0,\"helmet_1\":-1,\"bags_1\":23,\"bags_2\":17,\"shoes_1\":10,\"pants_1\":83,\"arms\":20,\"mask_1\":0,\"torso_1\":25,\"pants_2\":2,\"helmet_2\":0,\"torso_2\":7,\"arms_2\":0,\"shoes_2\":0,\"tshirt_1\":22,\"tshirt_2\":4,\"decals_1\":0,\"bproof_1\":0,\"mask_2\":0,\"chain_1\":53}}]'),
('NVC', 0, 0, 0, '[{\"skin\":{\"helmet_1\":89,\"tshirt_1\":76,\"arms\":48,\"decals_2\":0,\"mask_1\":112,\"helmet_2\":0,\"pants_1\":33,\"bags_1\":0,\"shoes_2\":0,\"chain_1\":0,\"bags_2\":0,\"pants_2\":0,\"torso_1\":230,\"shoes_1\":24,\"mask_2\":0,\"tshirt_2\":1,\"torso_2\":3,\"arms_2\":0,\"bproof_1\":0,\"decals_1\":0},\"nazwa\":\"1\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_bronie`
--

CREATE TABLE `w_org_bronie` (
  `nazwa` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `ammo` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_itemy`
--

CREATE TABLE `w_org_itemy` (
  `nazwa` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `w_org_permisje`
--

CREATE TABLE `w_org_permisje` (
  `ID` int(10) NOT NULL,
  `org` varchar(50) DEFAULT NULL,
  `org_grade` int(11) DEFAULT '0',
  `stankonta` int(11) DEFAULT '0',
  `stankontaB` int(11) DEFAULT '0',
  `wezitem` int(11) DEFAULT '0',
  `wrzucitem` int(11) DEFAULT '0',
  `wrzucpieniadze` int(11) DEFAULT '0',
  `wrzucpieniadzeB` int(11) DEFAULT '0',
  `wyplac` int(11) DEFAULT '0',
  `wyplacB` int(11) DEFAULT '0',
  `wrzucbron` int(11) DEFAULT '0',
  `wezbron` int(11) DEFAULT '0',
  `zapros` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `w_org_permisje`
--

INSERT INTO `w_org_permisje` (`ID`, `org`, `org_grade`, `stankonta`, `stankontaB`, `wezitem`, `wrzucitem`, `wrzucpieniadze`, `wrzucpieniadzeB`, `wyplac`, `wyplacB`, `wrzucbron`, `wezbron`, `zapros`) VALUES
(1, 'F.A.S.T.F.O.O.D', 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 'F.A.S.T.F.O.O.D', 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 'F.A.S.T.F.O.O.D', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'F.A.S.T.F.O.O.D', 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 'F.A.S.T.F.O.O.D', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 'KF', 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(7, 'KF', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'KF', 2, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(9, 'KF', 3, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0),
(10, 'KF', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'NVC', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(12, 'NVC', 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(13, 'NVC', 2, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0),
(14, 'NVC', 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(15, 'NVC', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'CZARNI', 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(17, 'CZARNI', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(18, 'CZARNI', 2, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(19, 'CZARNI', 3, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(20, 'CZARNI', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'MAFIA', 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(22, 'MAFIA', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(23, 'MAFIA', 2, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(24, 'MAFIA', 3, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(25, 'MAFIA', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `anticheat`
--
ALTER TABLE `anticheat`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `fractions_vehicles`
--
ALTER TABLE `fractions_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsn_bankrobbery`
--
ALTER TABLE `hsn_bankrobbery`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redux_user_peds`
--
ALTER TABLE `redux_user_peds`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shopss`
--
ALTER TABLE `shopss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statystyki`
--
ALTER TABLE `statystyki`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_poszukiwania_c7`
--
ALTER TABLE `user_poszukiwania_c7`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `veh_km`
--
ALTER TABLE `veh_km`
  ADD PRIMARY KEY (`carplate`),
  ADD UNIQUE KEY `carplate` (`carplate`),
  ADD KEY `carplate_2` (`carplate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_org`
--
ALTER TABLE `w_org`
  ADD PRIMARY KEY (`nazwa`);

--
-- Indexes for table `w_org_bronie`
--
ALTER TABLE `w_org_bronie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_org_permisje`
--
ALTER TABLE `w_org_permisje`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;
--
-- AUTO_INCREMENT dla tabeli `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489;
--
-- AUTO_INCREMENT dla tabeli `fractions_vehicles`
--
ALTER TABLE `fractions_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;
--
-- AUTO_INCREMENT dla tabeli `hsn_bankrobbery`
--
ALTER TABLE `hsn_bankrobbery`
  MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT dla tabeli `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT dla tabeli `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1108;
--
-- AUTO_INCREMENT dla tabeli `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2416;
--
-- AUTO_INCREMENT dla tabeli `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT dla tabeli `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT dla tabeli `shopss`
--
ALTER TABLE `shopss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT dla tabeli `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `statystyki`
--
ALTER TABLE `statystyki`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT dla tabeli `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT dla tabeli `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT dla tabeli `w_org_bronie`
--
ALTER TABLE `w_org_bronie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `w_org_permisje`
--
ALTER TABLE `w_org_permisje`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
