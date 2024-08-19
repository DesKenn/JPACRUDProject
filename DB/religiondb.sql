-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema religiondb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `religiondb` ;

-- -----------------------------------------------------
-- Schema religiondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `religiondb` DEFAULT CHARACTER SET utf8 ;
USE `religiondb` ;

-- -----------------------------------------------------
-- Table `religion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `religion` ;

CREATE TABLE IF NOT EXISTS `religion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `origin` VARCHAR(45) NULL,
  `date_established` VARCHAR(45) NULL,
  `founder` VARCHAR(45) NULL,
  `idol_of_worship` VARCHAR(45) NULL,
  `beliefs` TEXT NULL,
  `number_of_followers` BIGINT(225) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS religionuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'religionuser'@'localhost' IDENTIFIED BY 'religionuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'religionuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `religion`
-- -----------------------------------------------------
START TRANSACTION;
USE `religiondb`;
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (1, 'Buddhism', 'India', '563-483 BC (5th century BCE)', 'Siddhartha Gautama', 'null', 'he Four Noble Truths of Buddhism: 1) suffering as a characteristic of existence, 2) the cause of suffering is craving and attachment, 3) the ceasing of suffering, called Nirvana, and 4) the path to Nirvana, made up of eight steps, sometimes called the Eightfold Path.\nThe Eightfold Path to Nirvana is to be “right” in all these areas: concentration, views, speech, resolve, action, livelihood, effort and mindfulness.Buddhists believe in reincarnation and that one must stop the cycle of rebirth as a suffering, selfish individual, and must attain Nirvana, which is the highest point and the end of the self.\nKarma is the belief that good deeds/behavior will be visited back on individuals as well as bad deeds/behavior. This is the basis for living a good, moral life.', 448000000);
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (2, 'Christianity', 'Judea (Jerusalem)', ' 30 AD (1st century CE)', 'Jesus Christ', 'Jehovah/Jesus/The Holy Spirit', 'Followers of the Christian religion base their beliefs on the life, teachings and death of Jesus Christ. Christians believe in one God that created heaven, earth and the universe. Jesus was crucified on a cross. His death made salvation and forgiveness of sins possible for all.\nOn the third day after his crucifixion, Jesus arose from the dead. After Jesus’ crucifixion and resurrection, God’s presence remained on earth in the form of the Holy Spirit to be a comforter to all.', 2365000000);
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (3, 'Hinduism', 'India', '2300-1500 BC (15th-23rd century BC)', 'None', 'None', 'The Hindu belief is that gods or divinities can take many forms, but all form one universal spirit called Brahman. The three most important representations of Brahman are Brahma, the creator of the universe, Vishnu, the preserver of the universe and Shiva, the destroyer of the universe.\n\nThe Hindu belief involves reincarnation of the soul, which is rebirth after death. Hindus believe the conditions of one’s present life are due to karma, or accumulated good or bad behavior in past lives.\n\nOne improves one’s conditions through good behavior and creates suffering for oneself through bad behavior. Eventually the soul will achieve moksha, or salvation, and stop the cycle of rebirths to become a part of the absolute soul.\n\nPaths to salvation are called the margas or yogas.\n- Karma Marga - performing social obligations and offering selfless service.\n-Jnana Marga - studying and cultivating an intellectual understanding into one’s identity with Brahman.\n- Bhakti Marga - devotion to one’s personal god.\n- Raja or Dhyana Marga - not as widely recognized as the three outlined in the Bhagavad Gita, this path uses meditation to gain insight into the absolute soul that resides within one’s self.', 1200000000);
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (4, 'Islam', 'Saudi Arabia', '610 CE', 'Muhammad ', 'Allah', 'The followers of Islam, Muslims, believe in one God, Allah, and believe Muhammad was his prophet. They also believe Adam, of the Bible’s Old Testament, was the first prophet.\n\nOther prophets include Abraham, Moses, Noah, David and Jesus.\n\nThere are five “Pillars of Islam” that Muslims follow:\n- The Shahadah - A statement of faith all Muslims recite at least one time in their lives.\n- The Salat or Salah - A daily ritual prayer of faith done five times a day.\n- Zakat - a tax paid to benefit the poor or those in need.\n- Sawm - a fast done during the month of Ramadan.\n- Hajj - a pilgrimage every Muslim must do at least once in his/her life, if he or she can afford it, to the Holy city of Mecca, in modern-day Saudi Arabia. The pilgrimage begins on the seventh or eighth day of the last month of the Islamic lunar calendar, and ends on the 12th day of that same month.', 1900000000);
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (5, 'Scientology', 'Arizona, USA', '1954', 'L. Ron Hubbard', 'Supreme Being', 'Scientology is a belief that each human has a reactive mind that responds to life’s traumas, clouding the analytic mind and keeping us from experiencing reality. Members of the religion submit to a process called auditing to find the sources of this trauma, reliving those experiences in an attempt to neutralize them and reassert the primacy of the analytic mind, working toward a spiritual state called “clear.”', 40000);
INSERT INTO `religion` (`id`, `name`, `origin`, `date_established`, `founder`, `idol_of_worship`, `beliefs`, `number_of_followers`) VALUES (6, 'Paganism ', 'Greece', '19th Century', 'null', 'Deities', 'Pagans believe that nature is sacred and that the natural cycles of birth, growth and death observed in the world around us carry profoundly spiritual meanings. Human beings are seen as part of nature, along with other animals, trees, stones, plants and everything else that is of this earth. Most pagans believe in some form of reincarnation, viewing death as a transition within a continuing process of existence.', 1500000);

COMMIT;

