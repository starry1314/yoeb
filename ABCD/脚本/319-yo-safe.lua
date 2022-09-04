package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="游侠"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="侠客"
--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("匕首|盾")
--设置自己用的装备类型 
SetUseZhuangBeiTypeData("Dex|DexInt|StrDex","衣服")
SetUseZhuangBeiTypeData("Dex","头盔")
SetUseZhuangBeiTypeData("Str|StrInt|Int","手套")
SetUseZhuangBeiTypeData("Dex","鞋子")
SetUseZhuangBeiTypeData("StrInt","项链")
SetUseZhuangBeiTypeData("Str|StrInt","盾")

g_attackDis=20				--攻击距离
g_duobiHpVal=0.2

--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

SetNeedSkillLineData(10,"燃燒箭矢,nil|穿透輔助,nil",2,nil,nil)
SetNeedSkillLineData(95,"元素淨化,nil|受傷時施放輔助,nil|信念浪湧,nil",nil,9,nil)
SetNeedSkillLineData(96,"鋼筋鐵骨,nil|先祖衛士,nil|持續時間延長輔助,nil",nil,4,nil)
SetNeedSkillLineData(97,"冰霜之捷,nil|盜獵者印記,nil|擊中時印記輔助,nil",nil,nil,nil)
SetNeedSkillLineData(98,"凋零之步,nil|召喚寒冰魔像,nil|恢復輔助,nil",nil,nil,nil)
SetNeedSkillLineData(99,"爆裂陷阱,nil|迅速組裝輔助,nil|機率中毒輔助,nil",18,nil,nil)
SetNeedSkillLineData(100,"靈體旋武,nil|夜刃輔助,nil|附加冰冷傷害輔助,nil|霜咬輔助,nil|附加閃電傷害輔助,nil|物理轉閃電輔助,nil|元素攻擊傷害輔助,nil|快速攻擊輔助,nil",nil,nil,nil)

--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面

AddAttackSkillData("靈體旋武","Caustic Arrow")
AddAttackSkillData("爆裂陷阱","Explosive Trap")
AddAttackSkillData("燃燒箭矢","Burning Arrow")
AddAttackSkillData("普通攻击","melee")

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("受傷時施放輔助",nil,1)
SetSkillLimitMaxLv("信念浪湧",nil,1)


-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名

SetNeedFlaskData(1,"生命药剂","nil")
SetNeedFlaskData(2,"生命药剂","nil")
SetNeedFlaskData(3,"水银药剂","nil")
SetNeedFlaskData(4,"魔力药剂","nil")
SetNeedFlaskData(5,"魔力药剂","nil")


g_addHpVal=0.7--HP低于多少吃红药
g_addMpVal=0.2--MP低于多少吃蓝药

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",0.25)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",0.25)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",0.35)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",0.3)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",0.3)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",0.3)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_damage_resistance_%",0.3)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_damage_resistance_%",0.3)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","lightning_damage_resistance_%",0.3)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_movement_velocity_+%",0.3)--基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",0.3)--生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","movement_velocity_+%",0.3)--移动速度 +%

SetAtuoChangeEquipData("游侠","项链","additional_strength",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_intelligence",0.2)--
SetAtuoChangeEquipData("游侠","项链","additional_strength_and_intelligence",0.3)--

--游侠
SetAtuoChangeEquipData("游侠","匕首","物理伤害",5,nil)
SetAtuoChangeEquipData("游侠","匕首","Local_Maximum_Added_Fire_Damage",5,nil)
SetAtuoChangeEquipData("游侠","匕首","Local_Maximum_Added_cold_Damage",5,nil)
SetAtuoChangeEquipData("游侠","匕首","Local_Maximum_Added_lightning_Damage",5,nil)
SetAtuoChangeEquipData("游侠","匕首","Local_critical_strike_chance_%",3,nil)
SetAtuoChangeEquipData("游侠","盾","护甲",1,nil)

--游侠--孔色
SetZhengTiColorVarData(2,1,4,1,nil,650,true)
SetZhengTiColorVarData(2,1,5,0,nil,630,true)
SetZhengTiColorVarData(2,1,4,0,nil,600,true)
SetZhengTiColorVarData(2,0,4,1,nil,580,true)
SetZhengTiColorVarData(2,0,5,0,nil,550,true)
SetZhengTiColorVarData(2,0,4,0,nil,450,true)
SetZhengTiColorVarData(2,0,3,1,nil,400,true)
SetZhengTiColorVarData(2,1,3,0,nil,350,true)
SetZhengTiColorVarData(2,0,3,0,nil,300,true)
SetZhengTiColorVarData(2,0,2,1,nil,250,true)
SetZhengTiColorVarData(2,0,2,0,nil,200,true)
SetZhengTiColorVarData(2,0,1,1,nil,150,true)
SetZhengTiColorVarData(2,0,1,0,nil,100)
SetZhengTiColorVarData(2,1,0,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

SetZhengTiColorVarData(3,0,3,0,nil,30,true)
SetZhengTiColorVarData(3,0,2,0,nil,20,true)
SetZhengTiColorVarData(3,0,1,0,nil,10)

SetZhengTiColorVarData(4,3,0,0,nil,300,true)
SetZhengTiColorVarData(4,2,0,0,nil,200,true)
SetZhengTiColorVarData(4,1,0,0,nil,100)

SetZhengTiColorVarData(5,0,4,0,nil,400,true)
SetZhengTiColorVarData(5,0,3,1,nil,300,true)
SetZhengTiColorVarData(5,0,2,0,nil,200,true)
SetZhengTiColorVarData(5,0,1,0,nil,100)

SetZhengTiColorVarData(9,2,0,2,nil,400,true)
SetZhengTiColorVarData(9,1,0,3,nil,350,true)
SetZhengTiColorVarData(9,1,0,2,nil,300,true)
SetZhengTiColorVarData(9,1,0,1,nil,200,true)
SetZhengTiColorVarData(9,0,0,1,nil,100)

SetZhengTiColorVarData(10,0,4,0,nil,400,true)
SetZhengTiColorVarData(10,0,3,0,nil,300,true)
SetZhengTiColorVarData(10,0,2,0,nil,200,true)
SetZhengTiColorVarData(10,0,1,0,nil,100)



AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--主线生效 超过50级就用点金点白色装备
--AddShengJiZhuangBeiGoodsData("束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",0,50,0)
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--主线生效 超过50级就用富豪点蓝色装备

--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

--高级换装设置
SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--做 到風暴飛刃 的时候刷滲血水道到68级再进行下一任务
SetTaskShengJiData("a10q3",nil,"2_9_1",75,true)--做 到風暴飛刃 的时候刷滲血水道到75级再进行下一任务

SetTaskMiGongData("a8q7",nil,1)--大于等于a9q1级 做迷宫1
SetTaskMiGongData("a10q1",nil,2)--大于等于a10q1 做迷宫2
SetTaskMiGongDataByLv(72,3)--大于等于75级 做迷宫3


SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",4)


--SetNeedAddTianFu(tfStr)--设置天赋加点 
SetNeedAddTianFu("游侠=evasion731-閃避和生命|dexterity988-敏捷|dexterity986-敏捷|dexterity984-敏捷|dexterity985-敏捷|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|finesse993-嫻熟|reduced_mana1480-魔力和藥劑效果|mana1478-原始精神|dexterity873-敏捷|dexterity858-敏捷|dexterity968-敏捷|weapon_cold_damage212-武器冰冷傷害|weapon_cold_damage211-武器冰冷傷害|ice_bite433-刺骨寒冰|mastery_cold61-冰冷專精-13267|stun_recovery543-生命和避免暈眩|avoid_stun553-橡木之心|dexterity877-敏捷|might772-壯漢|savant937-原野智慧|life1167-生命和避免元素異常狀態|life1156-生命和避免元素異常狀態|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|mastery_life133-生命專精-47642|bow_critical_strike_chance675-投射物攻擊暴擊率|bow_critical_strike_chance674-投射物攻擊暴擊率|heartpierce676-致命鋒芒|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|one_handed_damage637-武器元素傷害|claws_of_the_pride489-直覺|one_handed_damage1050-攻擊傷害|weapon_artistry620-舞刃宗師|one_handed_attack_speed1027-攻擊傷害|attack_damage_notable2120-山貓之靈|dexterity862-敏捷|life1216-生命|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-64381|dexterity864-敏捷|critical_strike_chance625-暴擊率|critical_strike_chance624-暴擊率|heartseeker626-刺心者|dexterity866-敏捷|dexterity865-敏捷|dexterity856-敏捷|might770-無畏|evasion1692-閃避與元素抗性|evasion_resists_notable1691-死裡逃生|dexterity872-敏捷|weapon_elemental_damage1263-武器元素傷害|weapon_elemental_damage1264-武器元素傷害|weapon_ele_notable1700-自然之力|mastery_elemental99-元素專精-30502|dexterity860-敏捷|dagger_damage2060-匕首傷害和移動速度|dagger_mobility2533-匕首的傷害和移動速度|from_the_shadows471-影刃|mastery_dagger78-匕首專精-44869|dexterity867-敏捷|intelligence927-智慧|intelligence926-智慧|dagger_damage264-匕首傷害|dagger_damage_and_critical_strike_chance465-匕首暴擊率和暴擊加成|dagger_damage_and_critical_strike_multiplier262-匕首暴擊率和加成|dagger_damage_and_critical_strike_multiplier263-匕首暴擊率和加成|dagger_global_crit_notable2527-背刺|dagger_damage_and_attack_speed466-匕首傷害和攻擊速度|dagger_damage_and_attack_speed467-匕首傷害和攻擊速度|dagger_damage_and_attack_speed468-匕首傷害和攻擊速度|flaying266-剝皮刃|accuracy587-命中和暴擊率|accuracy586-命中和暴擊率|deadeye588-潛意識|life1415-生命|life_life_leech1629-嗜血者|life1413-生命|dexterity857-敏捷|dexterity991-敏捷|intelligence962-智慧|intelligence953-智慧|spell_power1227-冷酷計算|intelligence964-智慧|dagger_crit2532-匕首的暴擊率|dagger_damage_and_critical_strike_chance258-匕首暴擊率和偷取|nightstalker261-夜襲|dagger_damage_and_critical_strike_chance257-匕首暴擊加成|mastery_dagger77-匕首專精-63223|mental_acuity1046-詭計|critical_strike_chance1019-暴擊率|assassination1239-刺殺|")
SetNeedAddTianFu("游侠升华=AscendancyRaider5-閃避、猛攻效果|AscendancyRaider6-極速進攻|AscendancyRaider7-閃避、猛攻效果|AscendancyRaider8-追獵使徒|AscendancyRaider3-閃避、狂怒球持續時間|AscendancyRaider2-盜獵者之途|") 
