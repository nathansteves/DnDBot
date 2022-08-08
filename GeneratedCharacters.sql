SELECT c.character_id, c.name, r.race_name, cl.class_name, bg.bg_name, bg.bg_alignments, c.strength, c.dexterity, c.constitution, c.wisdom, c.intelligence, c.charisma,
mw.melee_name, rw.ranged_name, a.armor_name, e.enchantment_name, f1.feat_name, f2.feat_name, f3.feat_name, f4.feat_name, f5.feat_name
FROM characters c INNER JOIN races r on c.race_id = r.race_id INNER JOIN classes cl on c.class_id = cl.class_id 
INNER JOIN backgrounds bg on c.background_id = bg.bg_id INNER JOIN melee_weapons mw on c.meleeweapon_id = mw.meleeweapon_id 
INNER JOIN ranged_weapons rw on c.rangedweapon_id = rw.rangedweapon_id INNER JOIN armor a on c.armor_id = a.armor_id 
INNER JOIN armor_enchantment e on c.enchantment_id = e.enchantment_id INNER JOIN feats f1 on c.feat1_id = f1.feat_id
INNER JOIN feats f2 on c.feat2_id = f2.feat_id INNER JOIN feats f3 on c.feat3_id = f3.feat_id 
INNER JOIN feats f4 on c.feat4_id = f4.feat_id INNER JOIN feats f5 on c.feat5_id = f5.feat_id;
