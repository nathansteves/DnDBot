SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dnd5echaractergenerator
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dnd5echaractergenerator
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dnd5echaractergenerator` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dnd5echaractergenerator` ;

-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`armor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`armor` (
  `armor_id` INT NOT NULL,
  `armor_name` VARCHAR(45) NULL DEFAULT NULL,
  `armor_ac` INT NULL DEFAULT NULL,
  `armor_maxdex` INT NULL DEFAULT NULL,
  `armor_type` VARCHAR(8) NULL DEFAULT NULL,
  `armor_sneak` BINARY(1) NULL DEFAULT NULL,
  PRIMARY KEY (`armor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO armor VALUES 
(1,'Padded Armor\n',11,5,'light',_binary '0'),
(2,'Leather Armor',11,5,'light',_binary '1'),
(3,'Studded Leather Armor',12,5,'light',_binary '1'),
(4,'Hide Armor',12,2,'medium',_binary '1'),
(5,'Chain Shirt',13,2,'medium',_binary '1'),
(6,'Scale Mail',14,2,'medium',_binary '0'),
(7,'Breastplate',14,2,'medium',_binary '1'),
(8,'Half Plate',15,2,'medium',_binary '0'),
(9,'Ring Mail',14,0,'heavy',_binary '0'),
(10,'Chain Mail',16,0,'heavy',_binary '0'),
(11,'Splint Mail',17,0,'heavy',_binary '0'),
(12,'Plate Mail',18,0,'heavy',_binary '0');


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`armor_enchantment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`armor_enchantment` (
  `enchantment_id` INT NOT NULL,
  `enchantment_name` VARCHAR(45) NULL DEFAULT NULL,
  `enchantment_effect` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`enchantment_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO armor_enchantment VALUES 
(1,'Armor of Gleaming','Never gets dirty'),
(2,'+1 Armor','Armor provvides +1 AC'),
(3,'Armor +2','Armor provides +2 to AC'),
(4,'Armor +3','Armor provides +3 AC'),
(5,'Cast-Off Armor','Armor can be removed as an action'),
(6,'Last Stand Armor','Armor provides +1 AC. If killed, each celestial, fey, and fiend within 30 feet must make a DC 15 Charisma saving throw or be banished to its home plane of existence.'),
(7,'Living Armor','Armor provides +1 bonus to AC. Symbiotic Natue- this armor cannot be removed from you while attuned to it, and you cannot voluntarily end your attunement to it. If you're targeted by a spell that ends a curse, your attunement to the armor ends, and it detaches from you.'),
(8,'Mariner's Armor','Armor provides a swimming speed equal to your walking speed. If you begin your turn underwater with 0 hit points, rise 60 feet towards the surface.'),
(9,'Mithral Armor','If the armor normally imposes disadvantage on Stealth checks or a minimum strength score, it no longer does'),
(10,'Mizzium Armor','Any critical hit against you becomes a normal hit. When you are subjected to a magical effect that allows you to make a Strength or Constitution saving throw to take only half damage, you instead take no damage if you succeed the saving throw');


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`backgrounds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`backgrounds` (
  `bg_id` INT NOT NULL,
  `bg_name` VARCHAR(45) NULL DEFAULT NULL,
  `bg_features` VARCHAR(45) NULL DEFAULT NULL,
  `bg_skills` VARCHAR(45) NULL DEFAULT NULL,
  `bg_languages` VARCHAR(45) NULL DEFAULT NULL,
  `bg_tools` VARCHAR(45) NULL DEFAULT NULL,
  `bg_alignments` VARCHAR(2) NULL DEFAULT NULL,
  `bg_trait` VARCHAR(255) NULL DEFAULT NULL,
  `bg_flaw` VARCHAR(255) NULL DEFAULT NULL,
  `bg_biome` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`bg_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO backgrounds VALUES 
(1,'Acolyte','Shelter of the Faithful','Insight, Religion','Elven, Gnomish',NULL,'LN','I've spent so long inthe temple that I have little practical experience dealing with people in the outside world','I judge others harshly, and myself even more severely','City'),
(2,'Charlatan','False Identity','Deception, Slight of Hand',NULL,'Disguise Kit, Forgery Kit','CN','I pocket anything I see that might have some value','I can't resist swindling people who are more powerful than me','Outskirts'),
(3,'Entertainer','By Popular Demand','Acrobatics, Performance',NULL,'Disguise Kit, Instrument of Choice','CG','I love a good insult, even one directed at me','I once satirized a noble who still wants my head. It was a mistake that I'll likely repeat.','Farming Village'),
(4,'Far Traveler','All Eyes On You','Insight, Perception','Any one of your choice','Any musical instrument of your choice','TN','I honor my deities by practices that are foreign to this land','I pretend to not understand the local language in order to avoid interactions I would rather not have','Far Away'),
(5,'Gambler','Never Tell Me The Odds','Deception, Insight','Undercommon','Dice','CN','Nothing is certain. Planning is a coward's act','I'm a great gambler. I'm just bad at math and logic','Undercity'),
(6,'Gladiator','By Popular Demand','Acrobatics, Performance',NULL,'Disguise Kit, one musical instrument','LN','I get bitter if I'm not the center of attention','I'll do anything to win fame and renown','Fighting Pits')
(7,'Guild Brewer','Guild Membership','Insight, Persuasion','Dwarven','Brewer's Supplies','NG','I like to talk at length about my profession','I'll do anything to get my hands on something priceless','Tavern'),
(8,'Knight','Retainers','History, Persuasion','Elven','Dragonchess','LG','The common folk love me for my kindness and generosity','I have an insatiable desire for carnal pleasures','Palace'),
(9,'Mercenary Veteran','Mercenary Life','Athletics, Persuasion',NULL,'dice, land vehicles','CE','I can stare down a hellhound without flinching','I have little respect for anyone who is not a proven warrior','The Wastes'),
(10,'Sage','Researcher','Arcana, History','Infernal, Abyssal',NULL,'TN','I'm convinced people are always trying to steal my secrets','Most people scream and run when they see a demon. I stop and take notes of its anatomy.','Library');


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`characters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`characters` (
  `character_id` INT NOT NULL,
  `name` VARCHAR(15) NULL DEFAULT NULL,
  `race_id` INT NULL DEFAULT NULL,
  `class_id` INT NULL DEFAULT NULL,
  `background_id` INT NULL DEFAULT NULL,
  `strength` INT NULL DEFAULT NULL,
  `dexterity` INT NULL DEFAULT NULL,
  `constitution` INT NULL DEFAULT NULL,
  `wisdom` INT NULL DEFAULT NULL,
  `intelligence` INT NULL DEFAULT NULL,
  `charisma` INT NULL DEFAULT NULL,
  `meleeweapon_id` INT NULL DEFAULT NULL,
  `rangedweapon_id` INT NULL DEFAULT NULL,
  `armor_id` INT NULL DEFAULT NULL,
  `enchantment_id` INT NULL DEFAULT NULL,
  `feat1_id` INT NULL DEFAULT NULL,
  `feat2_id` INT NULL DEFAULT NULL,
  `feat3_id` INT NULL DEFAULT NULL,
  `feat4_id` INT NULL DEFAULT NULL,
  `feat5_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`character_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`classes` (
  `class_id` INT NOT NULL,
  `class_name` VARCHAR(45) NULL DEFAULT NULL,
  `class_skills` VARCHAR(100) NULL DEFAULT NULL,
  `class_hitdie` VARCHAR(45) NULL DEFAULT NULL,
  `class_savingthrows` VARCHAR(45) NULL DEFAULT NULL,
  `class_features` VARCHAR(1000) NULL DEFAULT NULL,
  `class_armorprof` VARCHAR(45) NULL DEFAULT NULL,
  `class_weaponprof` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

 INSERT INTO classes VALUES 
 (1,'Artificer','Arcana, Investigation','1d8','Constitution, Intelligence','Magical Tinkering, Right Tool for the Job, Tool Expertise, Flash of Genius, Magic Item Adept, Spell-Storing Item, Magic Item Savant, Magic Item Master, Soul of Artifice','light, medium, shields','simple'),
 (2,'Barbarian','Intimidation, Survival','1d12','Strength, Constitution','Persistent Rage, Unarmored Defense, Reckless Attack, Danger Sense, Extra Attack, Fast Movement, Feral Instinct, Brutal Critical, Indomitable Might, Primal Champion','light, medium, shields','simple, martial'),
 (3,'Bard','Persuasion, Performance, Insight','1d8','Dexterity, Charisma','Bardic Inspiration, Jack of All Trades. Song of Rest, Font of Inspiration, Magical Secrets, Superior Inspiration','light','simple, hand crossbow, longsword, rapier, shortsword'),
 (4,'Cleric','Medicine, Religion','1d8','Wisdom, Charisma','Channel Divinity, Destroy Undead, Divine Intervention','light, medium, shields','simple'),
 (5,'Druid','Nature, Survival','1d8','Intelligence, Wisdom','Druidic, Herbalism Kit, Wild Shape, Timeless Body, Archdruid','light, medium, shields','clubs, daggers, darts, javelins, maces, quarterstaffs, scimitars, sickles, slings, spears'),
 (6,'Fighter','Athletics, Intimidation','1d10','Strenght, Constitution','Fighting Style, Second Wind, Action Surgex2, Indomitablex3, Extra Attackx3','all armor, shields','simple, martial'),
 (7,'Monk','Religion, History','1d8','Strength, Dexterity','Unarmored Defense, Martial Arts, Ki, Unarmored Movement, Deflect Missiles, Slow Fall, Extra Attack, Stunning Strike, Ki-Empowered Strikes, Evasion, Stillness of Mind, Purity of Body, Tongue of Sun and Moon, Diamond Soul, Timeless Body, Empty Body, Perfect Self','none','simple, shortswords'),
 (8,'Paladin','Religion, Persuasion','1d10','Wisdom, Charisma','Divine Sense, Lay on Hands, Fighting Style, Divine Smite, Divine Health, Extra Attack, Aura of Protection, Aura of Courage, Cleansing Touch','all armor, shields','simple, martial'),
 (9,'Ranger','Animal Handling, Nature, Stealth','1d10','Strength, Dexterity','Favored Enemy, Natural Explorer, Fighting Style, Extra Attack, Land's Stride, Hide in Plain Sight, Vanish, Feral Senses, Foe Slayer','light, medium, shields','simple, martial'),
 (10,'Rogue','Sleight of Hand, Deception, Investiation, Stealth','1d8','Dexterity, Intelligence','Expertise, Sneak Attack, Cunning Action, Uncanny Dodge, Evasion, Reliable Talent, Blindsense, Slippery Mind, Elusive, Stroke of Luck','light','simple, hand crossbow, longsword, rapier, shortsword'),
 (11,'Sorcerer','Arcana, Persuasion','1d6','Constitution, Charisma','Font of Magic, Metamagic, Sorcerous Restortion','none','daggers, darts, slings, crossbows, '),
 (12,'Warlock','Arcana, Investigation','1d8','Wisdom, Charisma','Eldritch Invocations, Mystic Arcanum, Eldritch Master','light','simple'),
 (13,'Wizard','Arcana, Insight','1d6','Intelligence, Wisdom','Arcane Recovery, Spell Mastery, Signature Spells','none','daggers, darts, slings, quarterstaffs, light crossbows');


-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`feats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`feats` (
  `feat_id` INT NOT NULL,
  `feat_name` VARCHAR(45) NULL DEFAULT NULL,
  `feat_effect` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`feat_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO feats VALUES (1,'Actor','+1 Charisma, advantage on Deception and Performance checks to pass yourself off as another person.'),
(2,'Alert','+5 to initiative, can't be surprised while conscious'),
 (3,'Athlete','+1 Strength or Dexterity, standing up takes only 5 feet of movement, climbing doesn't cost movement.'),
 (4,'Crusher','+1 Strength or Constitution, when you deal bludgeoning damage, move creature 5 feet to an unoccupied space'),
 (5,'Dungeon Delver','Advantage on Perception and Investigation made to detect secret passages and saving throws against traps. Also resistance to trap damage.'),
 (6,'Durable','+1 Constitution, when you roll a hit die to regain health, minimum number is 2x Constitution modifier'),
 (7,'Grappler','Advantage on attack rolls against creatures you're grappling, use action to try to pin a creature grappled by you.'),
  (8,'Healer','When you use a healer's kit to stabilize a dying creature, that creature also regains 1 HP. As an action, use a healer's kit to restore 1d6+4+creature's remaining hit dice health.'),
  (9,'Inspiring Leader','Spend 10 minutes rallying companions, give up to 6 friendly creatures within 30 feet, they gain temporary health equal to you level + Charisma modifier'),
  (10,'Keen Mind','+1 Intelligence, always know which way is north, always know the hours until sunrise or sunset, accurately recall anything you've seen or heard within the past month'),
   (11,'Linguist','+ Intelligence, learn three languages, ably create written ciphers'),
   (12,'Mobile','Speed increases by 10 feat, difficult terrain does not impede dash action, after you make a melee attack, don't provoke attacks of opportunity'),
  (13,'Observant','+1 Intelligence or Wisdom, can read lips, +5 bonus to passive perception and investigation checks'),
  (14,'Poisoner','Inore resistance to poison damage, apply poison to a weapon as a bonus action, proficiency with poisoner's kit'),
   (15,'Prodigy','Gain one skill proficiency, one tool proficiency, fluency in a language, expertise in a skill you are already proficient in'),
   (16,'Resilient','+1 to any ability score, proficiency in saving throws with that skill'),
   (17,'Sentinel','When you hit a creature with an opportunity attack its speed becomes 0, creatures provoke an attack of opportunity even if they disengage, when a creature within 5 feet of you makes a melee attack against another target you can use your reaction to make a melee attack against that creature'),
   (18,'Skill Expert','+1 to any ability score, gain proficiency in one skill, gain expertise with a skill you are already proficient in'),
   (19,'Skilled','Gain proficiency in 3 skills'),
   (20,'Tough','Hit point maximum increases by an amount equal to twice your level, then an additional 2 HP every time you level up');

-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`melee_weapons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`melee_weapons` (
  `meleeweapon_id` INT NOT NULL,
  `melee_name` VARCHAR(45) NULL DEFAULT NULL,
  `melee_type` VARCHAR(45) NULL DEFAULT NULL,
  `melee_dmg` VARCHAR(4) NULL DEFAULT NULL,
  `melee_effects` VARCHAR(45) NULL DEFAULT NULL,
  `melee_bonus` INT NULL DEFAULT NULL,
  `melee_class` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`meleeweapon_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO melee_weapons VALUES 
   (1,'Spear and Shield','Piercing','1d6','versatile(1d8), +2 AC',3,'simple'),
   (2,'Light Hammer and Shield','Bludgeoning','1d6','light, thrown(20/60), +2 AC',3,'simple'),
   (3,'Greatclub','Bludgeoning','1d8','Two-Handed',3,'simple'),
   (4,'Dual Handaxes','Slashing','1d6','light, thrown(20/60), bonus attack',3,'simple'),
   (5,'Rapier and Dagger','Piercing','1d8','Finesse, bonus attack(1d4)',3,'martial'),
   (6,'Whip and Shield','Slashing','1d4','Finesse, Reach, +2 AC',3,'martial'),
   (7,'Dual Scimitars','Slashing','1d6','Finesse, Light, Bonus Attack(1d6)',3,'martial'),
   (8,'Maul','Bludgeoning','2d6','Heavy, Two-Handed',3,'martial'),
   (9,'Lance','Piercing','1d12','',NULL,NULL),(10,'Greataxe','Slashing','1d12','Heavy, Two-Handed',3,'martial');

-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`races`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`races` (
  `race_id` INT NOT NULL,
  `race_name` VARCHAR(25) NULL DEFAULT NULL,
  `race_proficiencies` VARCHAR(255) NULL DEFAULT NULL,
  `race_scores` VARCHAR(100) NULL DEFAULT NULL,
  `race_speed` INT NULL DEFAULT NULL,
  `race_size` VARCHAR(45) NULL DEFAULT NULL,
  `race_type` VARCHAR(45) NULL DEFAULT NULL,
  `race_feature` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`race_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO races VALUES 
   (1,'Dwarf','mason's tools, battleaxe, handaxe, light hammer, warhammer, dwarvish','Constitution +2, Wisdom +1',25,'Small','Humanoid','Dwarven Toughness, Darkvision, Stonecunning'),
   (2,'Wood Elf','Perception, Elvish, longsword, shortsword, shortbow, longbow','Dexterity +2, Wisdom +1',35,'Medium','Humanoid','Darkvision, Fey Ancestry, Trance, Mask of the Wild'),
   (3,'Forest Gnome','Gnomish','+2 Wisdom, +1 Dexterity',25,'Small','Humanoid','Gnome Cunning, Natural Illusionist, Speak with Small Beasts'),
   (4,'Half-Elf','two skills of oyur choice, Elvish and 1 other language of your choice','+2 Charisma, +1 to two other abilities of your choice',30,'Medium','Humanoid','Fey Ancestry, Darkvision'),
   (5,'Lightfoot Halfling','Halfling','+2 Dexterity, +1 Charisma',25,'Small','Humanoid','Lucky, Brave, Halfling Nimbleness, Naturally Stealthy'),
   (6,'Half-Orc','Intimidation, Orc','+2 Strenght, +1 Constitution',30,'Medium','Humanoid','Darkvision, Savage Attacks, Relentless Endurance'),
   (7,'Human','1 extra language','+1 to all scores',30,'Medium','Humanoid',NULL),
   (8,'Tiefling','Infernal','+2 Charisma, +1 Intelligence',30,'Medium','Humanoid','Darkvision, Hellish Resistance, Infernal Legacy'),
   (9,'Fairy','1 other language','+1 to any 3 skills',30,'Small\n','Fey','Fairy Magic, Flight'),
   (10,'Goliath','Athletics','+2 Strength, +1 Constitution',30,'Medium','Humanoid','Stone's Endurance, Powerful Build, Mountain Born');

-- -----------------------------------------------------
-- Table `dnd5echaractergenerator`.`ranged_weapons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dnd5echaractergenerator`.`ranged_weapons` (
  `rangedweapon_id` INT NOT NULL,
  `ranged_name` VARCHAR(45) NULL DEFAULT NULL,
  `ranged_type` VARCHAR(15) NULL DEFAULT NULL,
  `ranged_dmg` VARCHAR(4) NULL DEFAULT NULL,
  `ranged_effects` VARCHAR(255) NULL DEFAULT NULL,
  `ranged_bonus` INT NULL DEFAULT NULL,
  `ranged_class` VARCHAR(8) NULL DEFAULT NULL,
  `ranged_range` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`rangedweapon_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO ranged_weapons VALUES 
    (1,'Light Crossbow','Piercing','1d8','Ammunition, Loading, Two-Handed',3,'simple','80/320'),
    (2,'Darts','Piercing','1d4','Finesse, Thrown',3,'simple','20/60'),
    (3,'Shortbow','Piercing','1d6','Ammunition, Two-Handed',3,'simple','80/320'),
    (4,'Sling','bludgeooning','1d4','Ammunition',3,'simple','30/120'),
    (5,'Blowgun','piercing','1','Ammunition, Loading',3,'martial','25/100'),
    (6,'Dual Hand Crossbows','piercing','1d6','Ammunition, Light, Loading, Bonus Attack(1d6)',3,'martial','30/120'),
    (7,'Heavy Crossbow','piercing','1d10','Ammunition, Heavy, Loading, Two-Handed',3,'martial','100/400'),
    (8,'Longbow','piercing','1d8','Ammunition, Heavy, Two-Handed',3,'martial','150/600'),
    (9,'Blunderbuss','piercing','2d8','Ammunition, Loading, Two-Handed, Explosive, Improvised Ammunition',3,'firearm','20/60'),
    (10,'Net','N/A','0','Thrown, Restrain Large Creature',0,'martial','15/60');
