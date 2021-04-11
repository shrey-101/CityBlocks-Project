-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 04:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cityblocks`
--

-- --------------------------------------------------------

--
-- Table structure for table `bhopal`
--

CREATE TABLE `bhopal` (
  `id` bigint(20) NOT NULL,
  `areaname` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `population_density` varchar(200) NOT NULL,
  `covid_safety` varchar(200) NOT NULL,
  `Government_building` varchar(200) NOT NULL,
  `Local_police` varchar(200) NOT NULL,
  `Post_address` varchar(200) NOT NULL,
  `Distance_from` varchar(200) NOT NULL,
  `Nearby_places` varchar(200) NOT NULL,
  `Review_table` varchar(200) NOT NULL,
  `wiki` varchar(500) NOT NULL,
  `vc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bhopal`
--

INSERT INTO `bhopal` (`id`, `areaname`, `image`, `population_density`, `covid_safety`, `Government_building`, `Local_police`, `Post_address`, `Distance_from`, `Nearby_places`, `Review_table`, `wiki`, `vc`) VALUES
(6, 'HAMIDIA_ROAD_AREA', 'https://live.staticflickr.com/3706/10466844284_bbaa41c63e_c.jpg', 'Bhopal district density was at 665 people per sq. km.(in acccordance with the 2011 census)', 'RED', 'police chowki, post-office, bank, passport office, UNICEF bhopal office.', '07552677331', 'Postmaster, Post Office HAMIDIA ROAD (SUB OFFICE), BHOPAL, MADHYA PRADESH (MP), India (IN), Pin Code:- 462001', 'railway station : 1.2 km , local taxi rate : 20 Rs to 40 Rs\r\n- bus stand : 1.4 km , local taxi rate : 20 Rs to 40 Rs\r\n- airport :12.9 km , local taxi rate : 7 Rs to 10 Rs per km', 'jumerati market, malls, Qadir khan masjid.', 'HAMIDIA_ROAD_AREA_review', '---', 'AIIMS Bhopal, Gandhi Medical College, JP >Hospital, CMHC, BMHRC and CHCs.'),
(7, 'LALGHATI', 'https://www.krazybutterfly.com/wp-content/uploads/2018/05/Mahaveer-Giri-from-Noor-Us-Sabah-Palace.jpg', 'Bhopal district density was at 665 people per sq. km.(in acccordance with the 2011 census)', 'YELLOW', 'police chowki, post-office, bank, central hospital.', '07552443260', ' Postmaster, Post Office BAIRAGARH (SUB OFFICE), HUZUR, NAYAPURA LALGHATI, AIRPORT ROAD, GOVT. MIDDLE SCHOOL, , BHOPAL, MADHYA PRADESH, India (IN), Pin Code:- 462030', ' railway station : 7.2 km , local taxi rate : 120 Rs to 140 Rs\r\n- bus stand : 7.5 km , local taxi rate : 140 Rs to 160 Rs\r\n- airport : 5.3 km , local taxi rate : 7 Rs to 10 Rs per km', 'shree sidheshwar madir, lake view gardern, gufa mandir.', 'lalghati_review', '----', 'AIIMS Bhopal, Gandhi Medical College, JP  Hospital, CMHC, BMHRC and CHCs.'),
(8, 'AYODHYA_NAGAR', 'https://img.staticmb.com/mbimages/project/Photo_h310_w462/2019/04/05/Project-Photo-19-Eco-Green-Park-Bhopal-5025923_400_850_310_462.jpg', 'Bhopal district density was at 665 people per sq. km.(in acccordance with the 2011 census)', 'YELLOW', 'nagar-nigam office, police chowki, post-office, bank.', '07552677436', 'ostmaster, Post Office AYODHAYA NAGAR (SUB OFFICE), BHOPAL, MADHYA PRADESH (MP), India (IN), Pin Code:- 462041.', 'railway station : 10.2 km <br>\r\n- bus stand : 13.4 km <br>\r\n- airport : 17.7 km <br>\r\nlocal taxi rate : 7 Rs to 10 Rs per km', 'kaali mata madir, nainagiri park, mcf ISRO', 'ayodhya_nagar_review', '--', 'AIIMS Bhopal, Gandhi Medical College, JP  Hospital, CMHC, BMHRC and CHCs.'),
(9, 'HABIB_GANJ', 'https://img.staticmb.com/mbimages/project/Photo_h310_w462/2019/04/05/Project-Photo-19-Eco-Green-Park-Bhopal-5025923_400_850_310_462.jpg', 'Bhopal district density was at 665 people per sq. km.(in acccordance with the 2011 census)', 'RED', 'AIIMS BHOPAL,nagar-nigam office, police chowki, post-office, bank.', '0755-2443790', 'Postmaster, Post Office R.S.NAGAR (SUB OFFICE), HUZUR, HABIBGANJ STATION,  BHOPAL, MADHYA PRADESH, India (IN), Pin Code:- 462016', ' railway station : 10.2 km <br>\r\n- bus stand : 13.4 km <br>\r\n- airport : 17.7 km <br>\r\nlocal taxi rate : 7 Rs to 10 Rs per km<br>', 'Pradshani park, JLN garden.', 'habib_ganj_review', 'Habibganj is a suburb in Bhopal, India, in the BHEL township in the city of Bhopal. It is notable for the Habibganj Railway Station, the second busiest station in the city after the Bhopal Junction.', 'AIIMS Bhopal, Gandhi Medical College, JP  Hospital, CMHC, BMHRC and CHCs.'),
(10, 'ARERA_COLONY_AREA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Campion_Bhopal_Secondary_building.jpg/375px-Campion_Bhopal_Secondary_building.jpg', 'Bhopal district density was at 665 people per sq. km.(in acccordance with the 2011 census)', 'YELLOW', 'Bhopal municipal corporation,police chowki, post-office, bank, Narmada Hospital.', '07552677392', 'Postmaster, Post Office R.S.NAGAR (SUB OFFICE), HUZUR, E-2/51 ARERA COLONY, BHOPAL, MADHYA PRADESH, India (IN), Pin Code:- 462016', '- railway station : 8.5 km <br>\r\n- bus stand : 8.6 km <br>\r\n- airport : 18.5 km <br>\r\nlocal taxi rate : 7 Rs to 10 Rs per km', 'Bittan Market,Savoy Complex.', 'arera_area_review', 'Arera Colony is a sought-after residential area with small parks, cricket grounds, and larger green spaces like Shahpura Joggers’ Park, with its shady paths and views of Shahpura Lake', 'AIIMS Bhopal, Gandhi Medical College, JP  Hospital, CMHC, BMHRC and CHCs.');

-- --------------------------------------------------------

--
-- Table structure for table `cityinfo`
--

CREATE TABLE `cityinfo` (
  `id` bigint(6) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `cityfullname` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `covid-19-help-1` bigint(15) NOT NULL,
  `covid-19-help-2` bigint(15) NOT NULL,
  `covid-19-med-1` bigint(15) NOT NULL,
  `covid-19-med-2` bigint(15) NOT NULL,
  `dm-help-1` bigint(15) NOT NULL,
  `dm-help-2` bigint(15) NOT NULL,
  `place_table_1` varchar(100) NOT NULL,
  `place_table_2` varchar(100) NOT NULL,
  `place_table_3` varchar(100) NOT NULL,
  `place_table_4` varchar(100) NOT NULL,
  `place_table_5` varchar(100) NOT NULL,
  `review_table` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='master table to store all form data';

--
-- Dumping data for table `cityinfo`
--

INSERT INTO `cityinfo` (`id`, `cityname`, `cityfullname`, `description`, `covid-19-help-1`, `covid-19-help-2`, `covid-19-med-1`, `covid-19-med-2`, `dm-help-1`, `dm-help-2`, `place_table_1`, `place_table_2`, `place_table_3`, `place_table_4`, `place_table_5`, `review_table`) VALUES
(1, 'prayagraj', 'Allahabad (Prayagraj)', 'Allahabad, officially known as Prayagraj, also known as Ilahabad, is a metropolis in the Indian state of Uttar Pradesh. It is the administrative headquarters of Allahabad district—the most populous district in the state and 13th most populous district in India—and the Allahabad division', 5322641577, 5322641578, 5322266098, 5322266099, 5322250300, 5322250400, 'allahabad_civillines', 'allahabad_allahpur', 'allahabad_gorgetown', 'allahabad_katra', 'allahabad_teliarganj', 'allahabad_review'),
(2, 'Jhansi', 'Jhansi', 'Jhansi is a historic city in the Indian state of Uttar Pradesh. It lies in the region of Bundelkhand on the banks of the Pahuj River, in the extreme south of Uttar Pradesh. Jhansi is the administrative headquarters of Jhansi district and Jhansi division', 5102332449, 5102321446, 0, 0, 9454417547, 5102331520, 'ORCHHA_GATE_AREA', 'SADAR_BAZAR', 'SIPRI', 'NAGRA', 'CIVIL_LINES', 'jhansi_review'),
(4, 'Bhopal', 'Bhopal M.P.', 'Bhopal is a city in the central Indian state of Madhya Pradesh. It\'s one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare Jain sculptures. Taj-ul-Masjid is one of Asia’s largest mosques, with white domes, minarets and a huge courtyard', 104, 7552527133, 7552556812, 0, 7552540494, 7552540822, 'HAMIDIA_ROAD_AREA', 'LALGHATI', 'AYODHYA_NAGAR', 'HABIB_GANJ', 'ARERA_COLONY_AREA', 'bhopal_review');

-- --------------------------------------------------------

--
-- Table structure for table `jhansi`
--

CREATE TABLE `jhansi` (
  `id` bigint(20) NOT NULL,
  `areaname` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `population_density` varchar(200) NOT NULL,
  `covid_safety` varchar(200) NOT NULL,
  `Government_building` varchar(200) NOT NULL,
  `Local_police` varchar(200) NOT NULL,
  `Post_address` varchar(200) NOT NULL,
  `Distance_from` varchar(200) NOT NULL,
  `Nearby_places` varchar(200) NOT NULL,
  `Review_table` varchar(200) NOT NULL,
  `wiki` varchar(500) NOT NULL,
  `vc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jhansi`
--

INSERT INTO `jhansi` (`id`, `areaname`, `image`, `population_density`, `covid_safety`, `Government_building`, `Local_police`, `Post_address`, `Distance_from`, `Nearby_places`, `Review_table`, `wiki`, `vc`) VALUES
(1, 'ORCHHA_GATE_AREA', 'https://content3.jdmagicbox.com/comp/jhansi/f3/9999px510.x510.171128124716.i1f3/catalogue/orchha-gate-jhansi-o9r04h8wqe.jpg?clr=333333', 'Jhansi district density was at 347 people per sq. km(in acccordance with the 2011 census)', 'RED', 'police chowki, post-office, bank, civil hospital.', '9454403646', ' Postmaster, Post Office ORCHHA GATE (BRANCH OFFICE), JHANSI, UTTAR PRADESH (UP), India (IN), Pin Code:- 284002', 'railway station : 3.5 km , local taxi rate : 60 Rs to 80 Rs <br>\r\n- bus stand : 1.2 km , local taxi rate : 40 Rs to 60 Rs', 'bara bazar, pachkuiya mandir, rani laxmi bai park.', 'ORCHHA_GATE_AREA_review', '----', 'Jhansi Medical College, Paramedical College, District Hospital, TB hospital'),
(2, 'SADAR_BAZAR', 'https://live.staticflickr.com/3015/2859000551_171bddf7a5_b.jpg', 'hansi district density was at 347 people per sq. km(in acccordance with the 2011 census)', 'YELLOW', 'army cantonment board, bank, police chowki, post-office ,cantonment hospital.', '9454403655', ' Postmaster, Post Office JHANSI SADAR BAZAR (SUB OFFICE), JHANSI, UTTAR PRADESH (UP), India (IN), Pin Code:- 284001', 'railway station : 4 km , local taxi rate : 70 Rs to 100 Rs <br>\r\n- bus stand : 1.9 km , local taxi rate : 50 Rs to 70 Rs\r\n', 'cafes, st. jude shrine, central park.', 'SADAR_BAZAR_review', '---', 'Jhansi Medical College, Paramedical College, District Hospital, TB hospital'),
(3, 'SIPRI', 'https://spiderimg.amarujala.com/assets/images/2018/12/09/750x506/sipri-bazaar-jhansi_1544296381.jpeg', 'Jhansi district density was at 347 people per sq. km(in acccordance with the 2011 census)', 'RED', ' bank main office, police chowki, post-office.\r\n', '9454403659', 'Postmaster, Post Office SIPRI BAZAR (SUB OFFICE), JHANSI, UTTAR PRADESH (UP), India (IN), Pin Code:- 284003', ' railway station : 1.8 km , local taxi rate : 50 Rs to 70 Rs\r\n- bus stand : 5.9 km , local taxi rate : 100 Rs to 120 Rs', 'cafes, dhayanchand memorial, heroes field.', 'SIPRI_review', '----', 'Jhansi Medical College, Paramedical College, District Hospital, TB hospital'),
(4, 'NAGRA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/1385726011390-Workshop_main_gate-_photo.jpg/220px-1385726011390-Workshop_main_gate-_photo.jpg', '229 people per km²', 'RED', 'railway offices, police chowki, post-office, railway hospital. ', '9454403653', 'Postmaster, Post Office NAGRA (BRANCH OFFICE), JHANSI, UTTAR PRADESH (UP), India (IN), Pin Code:- 284003', '- railway station : 5.7 km , local taxi rate : 120 Rs to 140 Rs <br>\r\n- bus stand : 7.5 km , local taxi rate : 150 Rs to 180 Rs', '---', 'nagra_review', '----', 'Jhansi Medical College, Paramedical College, District Hospital, TB hospital'),
(5, 'CIVIL_LINES', 'https://360hoardings.com/images_backup/Mig-190.jpg', 'Jhansi district density was at 347 people per sq. km(in acccordance with the 2011 census)', 'BLUE', 'district magistrate office, bank, police chowki, post-office, nagar-nigam office.', '9454401069', 'Postmaster, Post Office SIPRI BAZAR (SUB OFFICE), JHANSI, UTTAR PRADESH (UP), India (IN), Pin Code:- 284003', '- railway station : 1.2 km , local taxi rate : 40 Rs to 50 Rs <br>\r\n- bus stand : 2.4 km , local taxi rate : 50 Rs to 70 Rs\r\n', 'khilona theater, hotels, CKC.', 'civil_lines_jhansi_review', '---', 'Jhansi Medical College, Paramedical College, District Hospital, TB hospital');

-- --------------------------------------------------------

--
-- Table structure for table `prayagraj`
--

CREATE TABLE `prayagraj` (
  `id` bigint(20) NOT NULL,
  `areaname` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `population_density` varchar(200) NOT NULL,
  `covid_safety` varchar(200) NOT NULL,
  `Government_building` varchar(200) NOT NULL,
  `Local_police` varchar(200) NOT NULL,
  `Post_address` varchar(200) NOT NULL,
  `Distance_from` varchar(200) NOT NULL,
  `Nearby_places` varchar(200) NOT NULL,
  `Review_table` varchar(200) NOT NULL,
  `wiki` varchar(500) NOT NULL,
  `vc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prayagraj`
--

INSERT INTO `prayagraj` (`id`, `areaname`, `image`, `population_density`, `covid_safety`, `Government_building`, `Local_police`, `Post_address`, `Distance_from`, `Nearby_places`, `Review_table`, `wiki`, `vc`) VALUES
(1, 'Civil_Lines', 'https://upload.wikimedia.org/wikipedia/commons/0/02/Allahabad_city.jpg', 'The district has a population density of 1,086 inhabitants per square kilometer(in accordance with the 2011 census)', 'BLUE', 'NSSO regional office, public service commission, police chowki, post-office, bank.', ' 09454402822', 'Postmaster, Post Office ALLAHABAD (HEAD OFFICE), ALLAHABAD, CIVIL LINE, LIC BUILDING, MG ROAD, ALLAHABAD, UTTAR PRADESH, India (IN), PinCode:- 211001\r\n', '- railway station : 2 km  <br>\r\n- bus stand : 2.1 km <br>\r\n- airport : 15 km <br>\r\nlocal taxi rate : 7 Rs to 13 Rs per km<br>', 'PVR, hunumat niketan mandir,Allahabad museum.', 'civil_lines_review', 'Civil Lines is a Civil Lines neighborhood of Prayagraj, Uttar Pradesh, India. It is the central business district of the city and is famous for its urban setting, gridiron plan roads, and high rise buildings', 'Nazareth Hospital ,Parvati Hospital Pvt. Ltd, Kamala Nehru Hospital'),
(2, 'Gorge_town', 'https://content3.jdmagicbox.com/comp/allahabad/r3/0532px532.x532.140728141308.k8r3/catalogue/jagat-taran-girls-inter-college-george-town-allahabad-girls-colleges-1ona0gya89.jpg', 'The district has a population density of 1,086 inhabitants per square kilometer(in accordance with the 2011 census)', 'YELLOW', 'Allahabad public library, police chowki, post-office, bank.', ' 09454402825', 'Postmaster, Post Office GEORGE TOWN (SUB OFFICE), ALLAHABAD, UTTAR PRADESH (UP), India (IN), Pin Code:- 211002\r\n', '- railway station : 3 km \r\n- bus stand : 2.3 km \r\n- airport : 13 km \r\nlocal taxi rate : 7 Rs to 13 Rs per km', 'Triveni Sangam, Allahabad fort, khusro bagh.', 'gorge_town_review', 'George Town is a neighborhood of Allahabad, India. Built in 1901, it is a residential area in the central part of the city mainly occupied by the white collar workers. It also houses a large number of hospitals and clinics. Georgetown is famous for is affluent surroundings and apartments', 'Nazareth Hospital ,Parvati Hospital Pvt. Ltd, Kamala Nehru Hospital'),
(3, 'Katra_Area', 'https://360hoardings.com/images_backup/SAKET-031.jpg', 'The district has a population density of 1,086 inhabitants per square kilometer(in acccordance with the 2011 census)', 'RED', 'Commissioner\'s Office, Allahabad police line, Botanical survey of India Central circle, police chowki, post-office, bank.', '0532 2460088', 'Postmaster, Post Office KATRA ALLAHABAD (SUB OFFICE), ALLAHABAD, UTTAR PRADESH (UP), India (IN), Pin Code:- 211002', '- railway station : 5.2 km \r\n- bus stand : 4.6 km \r\n- airport : 17.5 km \r\nlocal taxi rate : 7 Rs to 13 Rs per km', 'Katra market, anand bhawan museum, st. Paul church.', 'katra_area_review', 'Katra is a locality/township of Allahabad, Uttar Pradesh, India. It is one of the major markets of Allahabad city and is located in the Allahabad-02 region of the city. With the passage of time, it has developed a lot and has many branded exclusive showrooms. One can find everything and anything in this market.', 'Nazareth Hospital ,Parvati Hospital Pvt. Ltd, Kamala Nehru Hospital'),
(4, 'teliar_ganj_Area', 'https://360hoardings.com/images_backup/SAKET-031.jpg\r\n', 'he district has a population density of 1,086 inhabitants per square kilometer(in acccordance with the 2011 census)', 'YELLOW', 'NNIT ALLAHABAD, Government Hospital Allahabad, police chowki, post-office, bank.', '09454402853', 'Postmaster, Post Office TELIARGANJ (SUB OFFICE), ALLAHABAD, UTTAR PRADESH (UP), India (IN), Pin Code:- 211004', '- railway station : 7.5 km \r\n- bus stand : 5.8 km \r\n- airport : 16.8 km \r\nlocal taxi rate : 7 Rs to 13 Rs per km', 'Jishan Market, maa kaali temple, nit allahabad.', 'teliar_ganj_review', 'Teliyargunj is a locality/township of Allahabad, Uttar Pradesh, India. MNNIT a prominent engineering college, Northern Regional Institute of Printing Technology and Avtar Cinema Theater are located here. The old Cantonment of Allahabad is located near this area. River Ganga flows adjacent to this locality', 'Nazareth Hospital ,Parvati Hospital Pvt. Ltd, Kamala Nehru Hospital'),
(5, 'Allahpur', 'https://i.10xmt.com/unsafe/768x0/smart/images/media/Billboard-Allahpur-Allahabad-12533.jpg', 'The district has a population density of 1,086 inhabitants per square kilometer(in acccordance with the 2011 census)', 'RED', 'student digital library, police chowki, post-office, bank.\r\n', '09454402825', 'Postmaster, Post Office ALLAHPUR (SUB OFFICE), ALLAHABAD, UTTAR PRADESH (UP), India (IN), Pin Code:- 211006', '- railway station : 6.4 km \r\n- bus stand : 5 km \r\n- airport : 16.6 km \r\nlocal taxi rate : 7 Rs to 13 Rs per km\r\n', ' tulsi park, Allapur Library.', 'allahpur_review', 'Allahpur, Officially Bharadwaj Puram is a locality of Allahabad, Uttar Pradesh, India. Allahpur is a township/mohalla of Allahabad District. It falls under the Phulpur constituency of Uttar Pradhesh\'s legislative assembly.', 'Nazareth Hospital ,Parvati Hospital Pvt. Ltd, Kamala Nehru Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(6) NOT NULL,
  `area_name` varchar(250) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `area_name`, `review`, `email`, `time`, `name`) VALUES
(1, 'civil_lines_review', 'Great market for shopping , had to be extra careful because of RED marked on covid-safety', 'sy425191@gmail.com', '2021-04-10 14:58:09.000000', 'Saurabh Yadav'),
(2, 'civil_lines_review', 'Safe and cool place to hang out , have some decent malls', 'shreshtha@gmail.com', '2021-04-10 14:59:13.000000', 'Shreshtha'),
(6, 'civil_lines_review', 'very good place', '', '2021-04-10 16:04:33.958862', 'someone random'),
(7, 'ORCHHA_GATE_AREA_review', 'best place', '', '2021-04-10 16:37:42.939703', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bhopal`
--
ALTER TABLE `bhopal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cityinfo`
--
ALTER TABLE `cityinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jhansi`
--
ALTER TABLE `jhansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prayagraj`
--
ALTER TABLE `prayagraj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bhopal`
--
ALTER TABLE `bhopal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cityinfo`
--
ALTER TABLE `cityinfo`
  MODIFY `id` bigint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jhansi`
--
ALTER TABLE `jhansi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prayagraj`
--
ALTER TABLE `prayagraj`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
