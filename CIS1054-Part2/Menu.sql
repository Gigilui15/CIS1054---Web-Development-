-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 12:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `price` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `CategoryID`, `name`, `description`, `image`, `price`) VALUES
(0, 1, 'Classic Toast', 'Toasted fresh sliced bread filled with ham and cheese and served with nachos on the side.', 'https://static01.nyt.com/images/2021/02/17/dining/17tootired-grilled-cheese/17tootired-grilled-cheese-articleLarge.jpg?quality=75&auto=webp&disable=upscale', 3),
(1, 1, 'B.L.T.', 'Toasted fresh sliced bread filled with bacon, lettuce, sliced beef, tomatoes and served with nachos ', 'https://images.media-allrecipes.com/userphotos/4543157.jpg', 5),
(2, 1, 'Avocado Toast', 'Toasted maltese bread spread with an avocado crush seasoned with lime and chilli flakes ', 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F7897357.jpg&q=60', 8),
(3, 1, 'GunSlinger Pancakes', '3 stacked pancakes topped with homemade berry compate, mascarpone and finished with a drizzle of maple syrup', 'https://static.onecms.io/wp-content/uploads/sites/19/2008/10/23/MR_Reshoots_Evergreen_001-2000.jpg', 6),
(4, 1, 'Eggs BlackStone', 'Two poached Eggs on a toasted bagel and a bed of sauteed spinach and roasted tomatoes ', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/eggs-benedict-pancakes-bebe955.jpg', 7),
(5, 1, 'Peace Pipe', 'Toasted french baguette filled with sauteed vegetables and finished off with mascarpone cheese.', 'https://media-cdn.tripadvisor.com/media/photo-s/0f/b4/d4/59/ham-cheese-baguette.jpg', 9),
(6, 1, 'The Wild West Breakfast', 'Cowboy breakfast feast consisting of two fried eggs, cripsy bacon rashes, two sausages, slow cooked mushrooms and a roasted tomato', 'https://cdn.tasteatlas.com/images/dishes/b92a3d74b4cf48c28abba34197798049.jpg', 10),
(7, 1, 'The Choctaw', 'The healthy vegetarian breakfast including two poached eggs, roasted peppers and aubergine slices', 'https://www.easycheesyvegetarian.com/wp-content/uploads/2017/04/Vegetarian-full-English-breakfast-4.jpg', 11),
(8, 2, 'The Tomatina', 'Bruschetta style focaccia topped with a tomato cancasso, ruccia and finished off with parmigiano sha', 'https://www.schaer.com/sites/default/files/1843_Bruscheta%20de%20tomates.jpg', 5),
(9, 2, 'Smith & Western', '4 grilled potato skins plated on a dash of sour cream sauce served with house salad and nachos ', 'https://assets.epicurious.com/photos/57978b0c437fcffe02f722e6/master/pass/potato-skins-with-bacon-and-cheese.jpg', 7),
(10, 2, 'The 3 Amigos', 'Hand-breaded and pan-fried cauliflower pattles plated on a dash of roasted garlic sauce ', 'https://www.runningtothekitchen.com/wp-content/uploads/2012/03/Spicy-yogurt-pan-fried-cauliflower.jpg', 8),
(11, 2, 'Buffalo Bill', '6 bone-in grilled buffalo wings tossed in our homemade smoky-flavoured BBQ sauce.', 'https://images-gmi-pmc.edge-generalmills.com/b747b482-21b2-418d-9a34-5e6c1036072c.jpg', 12),
(12, 2, 'Banditos', 'Tortilla chips layered with our homemade chilli con came topped with melted monterey jack cheese and served with bread', 'https://img-global.cpcdn.com/recipes/3a4795b147b92350/1200x630cq70/photo.jpg', 15),
(13, 3, 'Gold Mountain', 'A selection of Spring rolls, chicken wontons, pork and chive dumplings, and chicken skewers ', 'https://dinnerthendessert.com/wp-content/uploads/2018/08/Spring-Rolls.jpg', 25),
(14, 3, 'The Cherokee', 'A selection of cured meats and gourmet cheeses accompanied with kalamata olives, grapes, walnuts and honey', 'https://cdn-abjbp.nitrocdn.com/AXsprRcdCCAAJtycRcqxlimtWftrOgku/assets/static/optimized/rev-08a0ce0/wp-content/uploads/2017/09/Meat-and-Cheese-Platter-8-680x451.jpg', 25),
(15, 3, 'Homeland', 'An authentic maltese delicacy including sun-dries tomatoes, peppered goats cheese, grilled maltese sausage', 'https://media-cdn.tripadvisor.com/media/photo-s/06/bb/85/c2/il-baxa-cafe-bar.jpg', 25),
(16, 3, 'The Alamo', 'A half rack of slow-cooked succelent pork ribs, 4 bone-in grilled buffalo wings tossed in our homema', 'https://jesspryles.com/wp-content/uploads/2019/08/al-pastor-ribs-49.jpg', 25),
(17, 4, 'Olio, Aglio E Peperoncino', 'Spaghetti pasta seasoned with garlic, chilli pepper and a drizzle of extra virgin olive oil.', 'https://theviewfromgreatisland.com/wp-content/uploads/2012/04/Spaghetti-with-Roasted-Garlic-and-Oil-image.jpg', 10),
(18, 4, 'Classic Mac N Cheese', 'Oven baked macaroni pasta tossed in a mature cheddar, red leicester and parmigiano mix ', 'https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Homemade-Cheesy-Mac-and-Cheese.png', 15),
(19, 4, 'Spaghetti Meat Balls', 'Spaghetti pasta tossed in a rich tomato sauce topped with our homemade beef meat balls.', 'https://hips.hearstapps.com/delish/assets/17/39/1506456062-delish-spaghetti-meatballs.jpg', 15),
(20, 4, 'Pacheri Ragu', 'Paccheri pasta tossed in our rich homemade ragu.', 'https://assets.bonappetit.com/photos/57ae09011b334044149759a0/master/pass/classic-ragu-bolognese.jpg', 17),
(21, 4, 'Tagliatelle Acciuga', 'Tagilatelle pasta tossed in a fish stock and topped with baby spinach, anchovy fillets.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfSRCJRSog9puve5RPDDVWVZ_f0H3PbGobSg&usqp=CAU', 17),
(22, 4, 'Linguini Octopus', 'Fresh octopus chunks served on a bed of linguini pasta tossed in our rich tomato sauce and finished with basil', 'https://www.giallozafferano.com/images/227-22759/fettuccine-pasta-with-octopus-and-porcini-mushroom-sauce_1200x800.jpg', 19),
(23, 5, 'New Yorker', 'Homemade pizza base topped with a tomato and basil sauce and mozzarella di bufala', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Pizza_Margherita_stu_spivack.jpg', 8),
(24, 5, 'Wisconsin', 'Homemade pizza base topped with a combination of fresh mozzarella, gorgonzola, parmigiano and pecorino cheese', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Pizza_Margherita_stu_spivack.jpg', 14),
(25, 5, 'North Carolina', 'Homemade pizza base topped with a tomato and basil sauce, shredded mozzarella, hard boiled eggs, mushrooms', 'https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=face&w=420&h=210&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2013%2F10%2F23%2Feggs-bacon-breakfast-pizza-ck-x.jpg', 15),
(26, 5, 'Kentucky', 'Homemade pizza base topped with a tomato and basil sauce, shredded mozzarella, pulled chicken, and grilled peppers', 'https://www.gimmesomeoven.com/wp-content/uploads/2011/06/roasted-garlic-chicken-pizza.jpg', 15),
(27, 5, 'Mexicana', 'Homemade pizza base topped with our homemade chilli con carne, onions, grilled bell peppers and sliced ham', 'https://gradcontent.com/lib/400x296/pizza52.jpg', 15),
(28, 5, 'The Colombia', 'Homemade pizza base topped with a tomato and basil sauce and finished off with a seafood mix.', 'https://images-gmi-pmc.edge-generalmills.com/57be9c18-f2e5-453c-9286-c96d3ddb9555.jpg', 19),
(29, 6, 'The Lone Rider', '250g Angus beef patty served with iceberg lettuce, sliced gherkins, beef, tomato slice.', 'https://images.unsplash.com/photo-1553979459-d2229ba7433b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlnJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80', 16),
(30, 6, 'The Wyatt', 'Pulled pork served with cabbage slaw, red onion, beef, tomato slices and finished off with our homemade salad', 'https://images.unsplash.com/photo-1553979459-d2229ba7433b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlnJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80', 16),
(31, 6, 'Apache', 'Crispy chicken burger served with iceburg lettuce, caramelized onions and finished off with blue cheese', 'https://www.kitchensanctuary.com/wp-content/uploads/2019/08/Crispy-Chicken-Burger-square-FS-4518.jpg', 16),
(32, 6, 'Old Mexico', '250g Angus beef patty served with iceburg lettuce and red onions topped with our homemade chilli con carne', 'https://images.unsplash.com/photo-1553979459-d2229ba7433b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlnJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80', 17),
(33, 6, 'The Lincoln', 'Homemade veggie patty served with iceburg lettuce and topped with sauteed mushrooms, caramelized onions', 'https://www.mealgarden.com/media/recipe/2021/12/bigstock-Pink-Vegan-Burgers-With-Beans--319033306_6Npkf5t.jpeg', 17),
(34, 7, 'Geronimo', 'Chargrilled breast of chicken served with sliced corn on the cob, seasoned steak fries, and lemon', 'https://www.inspiredtaste.net/wp-content/uploads/2021/06/Grilled-Chicken-Recipe-5-1200-1200x800.jpg', 17),
(35, 7, 'Calamity Chick', 'Roasted vallespluga chicken marinated in chefs secret herbs and served on a bed of fresh house salad', 'https://www.inspiredtaste.net/wp-content/uploads/2021/06/Grilled-Chicken-Recipe-5-1200-1200x800.jpg', 19),
(36, 7, 'General Custer', 'Chargrilled full rack of succutent pork ribs marinated and slow-cooked in our smoky-flavored BBQ sauce', 'http://cdn.shopify.com/s/files/1/0582/9056/9369/articles/20210913003947-bbq-baby-back-pork-ribs.jpg?v=1631494016', 25),
(37, 7, 'Wild Bill', '400g of Angus tagliata grilled to your preference and served on a bed of rucola leaves, sliced corn ', 'https://www.giallozafferano.com/images/227-22794/Beef-tagliata_1200x800.jpg', 26),
(38, 7, 'Billy The Kid', '400g of angus rib-eye steak grilled to your preference and served with sliced corn on cob, fresh house sauce', 'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/rib-eye_steak_with_61963_16x9.jpg', 29),
(39, 7, 'Black Jack', '300g of angus filet steak top-crusted with peppercorns and grilled to your preference ', 'https://static.onecms.io/wp-content/uploads/sites/9/2022/01/25/reverse-sear-steak-FT-RECIPE0222.jpg', 33),
(40, 7, 'The Outlaw', 'Mixed combo including 200g chargrilled blackened prime Angus rib-eye, 200g toglata, 10 pork ribs', 'https://static.onecms.io/wp-content/uploads/sites/9/2022/01/25/reverse-sear-steak-FT-RECIPE0222.jpg', 42);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`CategoryID`, `CategoryName`) VALUES
(1, 'Breakfast'),
(2, 'High Noon Starters'),
(3, 'Platters For The Gang'),
(4, 'Pasta'),
(5, 'Pizza'),
(6, 'Burgers'),
(7, 'From The Pit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`CategoryID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`CategoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `type` FOREIGN KEY (`CategoryID`) REFERENCES `menu` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
