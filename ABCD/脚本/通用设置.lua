--����ͨ������ ��������
--[[
---------------------------------------------������һ��Ҫ�úÿ������˵��
--�������� -- Ϊע�ͷ��� ע�͵�����ص����ý����������� 
���õ����������������¼��� 
1���߼��� ������״̬ trueΪ�� falseΪ��  ��ҿ�������false��true������ ��֪�������߼�����
2����ֵ�� ֧��С�� ���� ֱ����д���־����� �磺-1 100 0.123 ���ֶ�����ֵ�� ����Ҫ������ 
3���ַ����� ��д��ʱ��ǰ����Ҫ�ð�����Ű������� �磺"���ǲֿ��" ע��ֻ���ַ����͵Ĳ���Ҫ���ߴ�����
Ȼ�����������͵����ݶ���ʹ��nil  nil�ǿ�ֵ ��ʾ���� ����ʾʲô��û�� ���߲���Ҫ����

��������Ҫ�õ������� ����������������������Ҫ��Ŀ¼�µĵ�����Ϣ�鿴����Ȼ������Ϸ�а�HOME���������Դ��� 
�����Ҫ�鿴�����ݵİ�ť�����涼���ҵ�����=name ����=className �����Ƽ����Ҫ��дclassName �������úõ������ܹ�̨ �� ���� ����ͨ��
���������ַ�Ϊ���� 
1�������ͣ�������=���� ���ּ򵥴ֱ��Ķ��Ǳ��������� ֱ�Ӹ��Ǹ����ںź�������ݾ�����
2�������ͣ�������(����1,����2) �����ľ��Ǻ����� �ɺ����������ɸ�������� �������������()������
]]
------------------��������       
g_needMinimizeGame=true			--��С���[�򴰿� trueΪ��С�� false��nilΪ����С��
g_imBoss=false					--����ǲֿ��ҪΪtrue �һ���Ϊfalse
g_yiJieTimeOut=10*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=15*60				--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true			--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=true			--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82			--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ
g_needAutoChangeEquip=true		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=true		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=true	                --����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ��
g_xiaoHaoGetZhuangBei=true		--�һ�����ֿ��������߼���װ�е�װ��
g_youXianMapLv=84                             --ȡͼʱ���������ټ��ʹӸ߽׿�ʼȡ

------------------�һ����
g_needZhuangYuanLv=75                        --������ �����ټ������ׯ԰ nilΪһֱ����
g_yijieNoWhiteMonster=true		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true			--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=78     	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.8		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=95		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=95			--���ڵ��ڶ��ټ�������
g_needLianMoLv=95			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=78	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=95      	--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=95			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=78				--���ڵ��ڶ��ټ�������
g_usePuTongWanChengDuLv=78	--ʹ����ͨ��ͼ��ɶ��Ǹ����õĵȼ������δ������ˢȫͼ Ĭ��Ϊnil��ʹ��
g_yiJieLv=68				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=60		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=true		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=80			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=78			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=80		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=nil		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=75			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=95			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=75			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=6				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����
g_needZaFenLv=80                                         --���ö��ټ���ʼ��������ը���淨
g_needMengYanLv=95                                  --70���Ժ�͵�����
g_needSuDiLv=80                                       --��75����ǿϮ�޵�����
g_notShuaBaiPao=true                    --�Ƿ���Ҫˢ���� trueΪ����Ҫ false��nilΪ��Ҫ
--SetHaveLingTiBossName(bossName,minLv)--��������ֿ�� �������ŵ���������ϵĸ��ã����ͻ�ȥ���������λ���ٻ�����
--bossName �ַ����� ����ֿ�ŵ�����
--minLv ������ �����ټ��Ż�ȥ�ֿ�ż��ٻ� nilΪ���Եȼ�����ȥ
--SetHaveLingTiBossName("55555",nil)

SetYiJieShuaTuModeByMapCnt(20,nil,2)--�ֿ��е�ͼ������20 ������ˢ ֱͨboss
SetYiJieShuaTuModeByMapCnt(10,0.6,0)--�ֿ��е�ͼ������10 ˢ6�� ��Ҫ����BOSS
SetYiJieShuaTuModeByMapCnt(0,1,0)--�ֿ��е�ͼ������0 ˢȫͼ


SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_essence_1_1-����ϡ�ЙC��|atlas_essence_1_5-����ϡ�ЙC��|atlas_essence_1_3-�������A|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_domination_1_2-֧�������m�r�g|atlas_domination_1_1-֧�������m�r�g|atlas_path_21-�����؈D����C��|atlas_harbinger_1_2_-�~�����I��Ƭ|atlas_harbinger_1_4-�~�����I��Ƭ|atlas_harbinger_1_3-���鵽��|atlas_harvest_4_1-�S���~�����`֮��|atlas_harvest_2_3-�S���~�����`֮��|atlas_harvest_2_4-�S���~�����`֮��|atlas_harvest_3_4__-�S��|atlas_harvest_3_5-�S�ՙC��|atlas_harvest_3_2-�S�ՙC��|atlas_harvest_2_1-�S�ՙC��|atlas_harvest_4_2-�S���~�����`֮��|atlas_harvest_2_5_-���S��|atlas_map_drops_20-�����}�u�؈D|atlas_map_drops_3-�����}�u�؈D|atlas_keystone_nofragments_1-���R��|atlas_heist_1_5-�ٱI��ӛ�ѯB����|atlas_heist_1_2-�ٱI��ӛ�ѯB����|atlas_path_30-�����؈D����C��|atlas_essence_4_1-���d�����~�⾫��C��|atlas_essence_4_2-���d�����~�⾫��C��|atlas_essence_4_4-ˮ����|atlas_essence_4_3-���d�����~�⾫��C��|atlas_path_17-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_alva_2_2-��Խ����Ⱥ��С|atlas_alva_2_7-��Խ����Ⱥ��С|atlas_alva_2_1-��Խ����Ⱥ��С|atlas_path_32-��Ʒ����|atlas_essence_2_3-����C��|atlas_essence_2_5-����C��|atlas_essence_2_2-����C��|atlas_essence_2_4-��������|atlas_boss_adjacent_maps_11-��Ʒ������ϡ�ж�|atlas_boss_adjacent_maps_12-��Ʒ������ϡ�ж�|atlas_harvest_3_1-�S�ՙC��|atlas_harvest_2_6-�܈@֮��|atlas_boss_adjacent_maps_10-��Ʒ������ϡ�ж�|atlas_harbinger_2_2-�~�����I�C��|atlas_harbinger_2_4-����|atlas_harvest_2_7-�S�ՙC��|atlas_harvest_3_3-�S�ՙC��|atlas_path_36-��Ʒ����|atlas_path_42-��Ʒ����|atlas_path_34-��Ʒ����|atlas_path_39-��Ʒ����|atlas_path_35-��Ʒ����|atlas_harbinger_2_3-�~�����I�C��|atlas_harbinger_2_5-�~�����I�C��|atlas_path_44-��Ʒ����|atlas_path_61-��Ʒ����|atlas_path_43-��Ʒ����|atlas_path_40-��Ʒ����|atlas_path_33-��Ʒ����|atlas_path_41-��Ʒ����|atlas_essence_3_1-����C��|atlas_essence_3_2-���d�����~�⾫��C��|atlas_essence_3_3-���d�����~�⾫��C��|atlas_essence_3_5-ˮ������|atlas_path_27-�����؈D����C��|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_harvest_1_2-�S���~�����`֮��|atlas_harvest_1_3-�S���~�����`֮��|atlas_harvest_1_1-�S���~�����`֮��|atlas_harvest_1_4-�܈@��|")

---�����ٶ�
g_jiaoYiAddSellGoodsTime=1--������ ����ʱ�Ѷ����ŵ��������ĵȴ�ʱ�� ��λΪ���� Ĭ��Ϊ250

SetQuLingData(nil,80,true,true)
AddYouXianGongPingBuyGoods("Ȩ��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex13","�����","The Squire",true)
AddYouXianGongPingBuyGoods("�ظ�����","Metadata/Items/Belts/Belt4","ħѪ","Mageblood",true)
AddYouXianGongPingBuyGoods("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",true)
AddYouXianGongPingBuyGoods("Ƥ������","Metadata/Items/Belts/Belt3","����","Headhunter",true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",true)
AddYouXianGongPingBuyGoods("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",true)
AddYouXianGongPingBuyGoods("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",true)
AddYouXianGongPingBuyGoods("ħ�R��Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",true)
AddYouXianGongPingBuyGoods("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash",true)
AddYouXianGongPingBuyGoods("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",true)
AddYouXianGongPingBuyGoods(nil,nil,"���","Unnatural Instinct",true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("�����o���","Metadata/Items/Amulets/Amulet8","����֮��","Badge of the Brotherhood",true)
AddYouXianGongPingBuyGoods("����ۑ�","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("�p�ێ�","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,true)
AddYouXianGongPingBuyGoods("�C�^������","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("�����׎�","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,true)
AddYouXianGongPingBuyGoods("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("�ґ����","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,true)
AddYouXianGongPingBuyGoods("ه�Ԟ���","Metadata/Items/DivinationCards/DivinationCardTheSustenance",true)
AddYouXianGongPingBuyGoods("��ʼ�ߵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",true)
AddYouXianGongPingBuyGoods("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon",true)
AddYouXianGongPingBuyGoods("Ϧꖼt�","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",true)
AddYouXianGongPingBuyGoods("�����c��","Metadata/Items/DivinationCards/DivinationCardTheOldMan",true)
AddYouXianGongPingBuyGoods("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,true)
AddYouXianGongPingBuyGoods("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,true)

AddYouXianGongPingBuyGoods("�o�펟","Metadata/Items/DivinationCards/DivinationCardTheNurse",true)
AddYouXianGongPingBuyGoods(nil,nil,"�ļs","Pledge of Hands",true)
AddYouXianGongPingBuyGoods(nil,nil,"Ԫ�صı��o","Prism Guardian",true)
AddYouXianGongPingBuyGoods(nil,nil,"��˹�����Թ��","Cospri's Malice",true)
AddYouXianGongPingBuyGoods(nil,nil,"�L��֮��","Storm Secret",true)
AddYouXianGongPingBuyGoods(nil,nil,"ؐ�׿˵Ļ��c��֮��","Berek's Respite",true)
AddYouXianGongPingBuyGoods(nil,nil,"̫ƽ","The Halcyon",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"�����b�O","The Primordial Chain",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮��","Voll's Devotion",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮��","Xoph's Heart",true)
AddYouXianGongPingBuyGoods(nil,nil,"���ڂ�ȯ","The Ephemeral Bond",true)
AddYouXianGongPingBuyGoods(nil,nil,"��ʿ�z��","Warrior's Legacy",true)
AddYouXianGongPingBuyGoods(nil,nil,"���K��ҕ","Calamitous Visions",true)
AddYouXianGongPingBuyGoods(nil,nil,"��Ӱ���|","The Red Nightmare",true)
AddYouXianGongPingBuyGoods(nil,nil,"��֪�ğ���","Inspired Learning",true)
AddYouXianGongPingBuyGoods(nil,nil,"��������","Primordial Might",true)
AddYouXianGongPingBuyGoods(nil,nil,"�����","Soul Ripper",true)
AddYouXianGongPingBuyGoods(nil,nil,"����","Dying Sun",true)
AddYouXianGongPingBuyGoods(nil,nil,"ƿ������","Bottled Faith",true)
AddYouXianGongPingBuyGoods(nil,nil,"�ɠa�Y","Cinderswallow Urn",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"����","Taste of Hate",true)
AddYouXianGongPingBuyGoods(nil,nil,"���׵��`ˎ","Rumi's Concoction",true)
AddYouXianGongPingBuyGoods(nil,nil,"���}����","The Sorrow of the Divine",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"Ѫ�|�N�A","Ascent From Flesh",true)
AddYouXianGongPingBuyGoods(nil,nil,"Թ�����","Hateforge",true)
AddYouXianGongPingBuyGoods(nil,nil,"����","Pure Talent",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"��Ɲ���}��","Atziri's Foible",true)
AddYouXianGongPingBuyGoods(nil,nil,"��־��","Call of the Brotherhood",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"AsenathsMarkFated",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"RareAncientConstructDropsAtzirisFoible",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"UnbearableWhispers5",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"AtzirisMirrorFated",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"TheFeralLord5",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"ThePlaguemaw5",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets",true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"TheUnbreathingQueen5",true)
AddYouXianGongPingBuyGoods("��ԣ����","Metadata/Items/DivinationCards/DivinationCardDeck")
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollRare",true)

AddYouXianGongPingBuyGoods(nil,nil,"������֮��","Arakaali's Fang",true)
AddYouXianGongPingBuyGoods(nil,nil,"��ŭ�]�i","Fury Valve",true)
AddYouXianGongPingBuyGoods(nil,nil,"�ǿ�֮Ӱ","Astral Projector",true)
AddYouXianGongPingBuyGoods(nil,nil,"ų����z�a","Coward's Legacy",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮�h","Circle of Guilt",true)
AddYouXianGongPingBuyGoods(nil,nil,"��������֮��","Arakaali's Fang",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮ӡ","Mark of the Elder",true)
AddYouXianGongPingBuyGoods(nil,nil,"�����ğ���","Arn's Anguish",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮�h","Cyclopean Coil",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"Ѫ�|�N�A","Ascent From Flesh",true)
AddYouXianGongPingBuyGoods(nil,nil,"�M���_����","Farrul's Fur",true)
AddYouXianGongPingBuyGoods(nil,nil,"˹����֮��","Saqawal's Nest",true)
AddYouXianGongPingBuyGoods(nil,nil,"�D�˹�������","Tukohama's Fortress",true)
AddYouXianGongPingBuyGoods(nil,nil,"�ļs","Pledge of Hands",true)
AddYouXianGongPingBuyGoods(nil,nil,"Ԫ�صı��o","Prism Guardian",true)
AddYouXianGongPingBuyGoods(nil,nil,"��˹�����Թ��","Cospri's Malice",true)
AddYouXianGongPingBuyGoods(nil,nil,"ؐ�׿˵Ļ��c��֮��","Berek's Respite",true)
AddYouXianGongPingBuyGoods(nil,nil,"̫ƽ","The Halcyon",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"�����b�O","The Primordial Chain",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮��","Voll's Devotion",true)
AddYouXianGongPingBuyGoods(nil,nil,"����֮��","Xoph's Heart",true)
AddYouXianGongPingBuyGoods(nil,nil,"���ڂ�ȯ","The Ephemeral Bond",true)
AddYouXianGongPingBuyGoods(nil,nil,"��ʿ�z��","Warrior's Legacy",true)
AddYouXianGongPingBuyGoods(nil,nil,"���K��ҕ","Calamitous Visions",true)
AddYouXianGongPingBuyGoods(nil,nil,"��Ӱ���|","The Red Nightmare",true)
AddYouXianGongPingBuyGoods(nil,nil,"��֪�ğ���","Inspired Learning",true)
AddYouXianGongPingBuyGoods(nil,nil,"��������","Primordial Might",true)
AddYouXianGongPingBuyGoods(nil,nil,"�����","Soul Ripper",true)
AddYouXianGongPingBuyGoods(nil,nil,"����","Dying Sun",true)
AddYouXianGongPingBuyGoods(nil,nil,"ƿ������","Bottled Faith",true)
AddYouXianGongPingBuyGoods(nil,nil,"�ɠa�Y","Cinderswallow Urn",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"����","Taste of Hate",true)
AddYouXianGongPingBuyGoods(nil,nil,"���׵��`ˎ","Rumi's Concoction",true)
AddYouXianGongPingBuyGoods(nil,nil,"���}����","The Sorrow of the Divine",true)
-- AddYouXianGongPingBuyGoods(nil,nil,"Ѫ�|�N�A","Ascent From Flesh",true)
AddYouXianGongPingBuyGoods(nil,nil,"Թ�����","Hateforge",true)
AddYouXianGongPingBuyGoods(nil,nil,"����","Pure Talent",true)
AddYouXianGongPingBuyGoods(nil,nil,"��Ɲ���}��","Atziri's Foible",true)
AddYouXianGongPingBuyGoods(nil,nil,"��־��","Call of the Brotherhood",true)
AddYouXianGongPingBuyGoods("��ԣ����","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,true)

AddYouXianGongPingBuyGoods(nil,nil,"�{�۵Ęsҫ֮��","Lioneye's Remorse",true)



AddYouXianGongPingBuyGoods("�X�c��","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,true)
AddYouXianGongPingBuyGoods("���Լ�","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,true)
AddYouXianGongPingBuyGoods("�}ͽ֮ؔ","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,true)
AddYouXianGongPingBuyGoods("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,true)
AddYouXianGongPingBuyGoods("�֑�֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,true)
AddYouXianGongPingBuyGoods("ƽ��","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,true)
AddYouXianGongPingBuyGoods("ȼ��֮Ѫ","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardTheGulf",nil,nil,true)
AddYouXianGongPingBuyGoods("��˹�Ȃ��Ĉ��","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,true)
AddYouXianGongPingBuyGoods("Մ��","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,true)
AddYouXianGongPingBuyGoods("�C�˵Ī��p","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,true)
AddYouXianGongPingBuyGoods("�W�g��","Metadata/Items/DivinationCards/DivinationCardTheAcademic",nil,nil,true)
AddYouXianGongPingBuyGoods("Ů��","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,true)
AddYouXianGongPingBuyGoods("�������R","	Metadata/Items/DivinationCards/DivinationCardAFamiliarCall",nil,nil,true)
AddYouXianGongPingBuyGoods("�׻�","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,true)
AddYouXianGongPingBuyGoods("Ů����","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,true)
AddYouXianGongPingBuyGoods("؈���h��","Metadata/Items/DivinationCards/DivinationCardCouncilOfCats",nil,nil,true)
AddYouXianGongPingBuyGoods("�����ļs","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,true)
AddYouXianGongPingBuyGoods("�X��","Metadata/Items/DivinationCards/DivinationCardTheAwakened",nil,nil,true)
AddYouXianGongPingBuyGoods("���[�F��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,true)
AddYouXianGongPingBuyGoods("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ��Ƭ","Metadata/Items/Currency/CurrencyAddModToRareShard",nil,nil,true)
AddYouXianGongPingBuyGoods("��","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,true)
AddYouXianGongPingBuyGoods("���Ѵ��","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,true)
AddYouXianGongPingBuyGoods("���}ʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("�d����","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric")
AddYouXianGongPingBuyGoods("���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror")
AddYouXianGongPingBuyGoods("Ѫ�n��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal")
AddYouXianGongPingBuyGoods("������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")
AddYouXianGongPingBuyGoods("��y��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")

-- SetZhuangBeiBoss(bossName,srvName)--���÷�װ�ֿ�� bossName=��װ������ �ַ����� srvName=���������֣�����������ͬһ�����õĻ����Ϸ��������ֿɵ������� ������ǿɺ��� ����nil 
--SetZhuangBeiBoss("��ǿ��Ϣ�İ���","�����}��")--��װ���Ĳֿ�� �������Ҫ ��ע�͵�
--���������ĳ������ʱ�����ܱ�ʯ

--���������ĳ������ʱ�����ܱ�ʯ
--AddNeedBuySkillTime(city,task)-- city=����������ֵ�� 1-11 task=�������� �ַ����� �������������ڵ��Դ����е�� �������� ��ť�鿴��
----A1
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(1,"a1q7")
----A2
AddNeedBuySkillTime(2,"a2q7")
AddNeedBuySkillTime(1,"a2q6")
AddNeedBuySkillTime(2,"a2q9")
AddNeedBuySkillTime(1,"a2q9")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(1,"a2q8")
AddNeedBuySkillTime(1,"a2q2")
-----A3
AddNeedBuySkillTime(2,"a3q1")
AddNeedBuySkillTime(2,"a3q7")
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
----A4
AddNeedBuySkillTime(3,"a4q2")
AddNeedBuySkillTime(3,"a4q6")
AddNeedBuySkillTime(3,"a4q3")
AddNeedBuySkillTime(3,"a4q4")
AddNeedBuySkillTime(4,"a4q5")
AddNeedBuySkillTime(3,"a4q1")
----A5
AddNeedBuySkillTime(3,"a5q3")
AddNeedBuySkillTime(4,"a5q5")

AddNeedBuySkillTime(6,"a6q1")	--�ڵ�6�µľ���֮��ʱ ��⹺��һ��
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(6,"a6q5")
AddNeedBuySkillTime(6,"a7q2")
AddNeedBuySkillTime(6,"a8q2")
AddNeedBuySkillTime(6,"a10q2")	--��10�µ��������������� ��⹺��һ��
AddNeedBuySkillTime(11,"a11q1")	--��ʰȡ��Ƭ �������ʱ��⹺��һ��

--ҩƿ�ڷ�
-- SetNeedFlaskData(pos,flask)--����ҩ  pos=λ�� 1-5  flask=ҩ �ַ����ͣ�֧������ (����ҩ��,ħ��ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,ˮ��ҩ��,�Ͼ�ҩ��,ʯӢҩ��,����ҩ��,ʯ��ҩ��,����ҩ��,����ҩ��,���ҩ��,����ҩ��,����ҩ��)
SetNeedFlaskData(1,"����ҩ��","�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",20)
SetNeedFlaskData(2,"����ҩ��","�ΰK֮,FlaskPoisonImmunity3",20)
SetNeedFlaskData(3,"ħ��ҩ��")
SetNeedFlaskData(4,"����ҩ��")
SetNeedFlaskData(5,"ˮ��ҩ��")

--AddNotMakeTaskData(taskClassName)--��Ӳ���Ҫ�������� taskClassNameΪ��������
AddNotMakeTaskData("a2q5")--����ʥ��
AddNotMakeTaskData("a2q10")--��ɫ����
AddNotMakeTaskData("a3q13")--�����Ŀ���
AddNotMakeTaskData("a3q12")--����֮��
AddNotMakeTaskData("a6q5")--��˹�ش���
AddNotMakeTaskData("a7q5")--��ɫ��׹
AddNotMakeTaskData("a7q8")--��˹�ص�Ĺ��
AddNotMakeTaskData("a8q5")--��˹����֮��
AddNotMakeTaskData("a9q4")--����֮��
AddNotMakeTaskData("a10q4")--�ް��ɻ�
AddNotMakeTaskData("a10q5")--�֮·

-- SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--������ͼʱ�Թ� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� migongIndexΪ�Թ������� 1=��һ���Թ� 2=�ڶ����Թ�
SetTaskMiGongData("a4q3",nil,1)--��5�� ���Թ�1
SetTaskMiGongData("a9q3",nil,2)--��9�� ���Թ�2
SetTaskMiGongDataByLv(74,3)--����ȼ����Թ�3

-- SetZhongShenData(className1,className2)--����Ҫ�ӵ���������� className1=�߽��������� �ַ����� className2=�ͽ��������� �ַ����� 
SetZhongShenData("Lunaris","Gruthkul")--������ӰŮ��֮�������֮ĸ ��³˿��֮��

SetChatData(1,"Ann, do you want fragments?|++|Take Mara|Scarab|Card group++|Thief's coin|Tarnish illusion|Delirium fragment|Oiling|spider|Does Ann have it now|Things are too difficult to hit QAQ|I'm lucky today|Are you there++|I found something good|Probably not today|I think there should be|Make some at will|���� ����Ƭ��?|�����������|������Ҫ��?|�Ͻ���|���������|66|�кö���Ŷ|������񻹿���|���п������|������?|����㿴��?|������|���Ǳ߻���û��|���뻹���Ǻ� �㿴����Ҫ��ʲô|�ж��� ���Զ��� û��ϵ|XDD ++|����������|����Ҫ��ʲô���� �ҿ�������û��|�ж�|���Ʒ���|666|��ϲ����|Ұ�����Ұ������|��|����𣬺�������Ȱ���ѣ�������|�糿ЦһЦȫ�����������|���ڴ�֪��|���ǿ��ֵ����|������ϵ������|�㶮�ģ�|��ļ���|���ѵı���|����ʱʱ��˳��|΢Ц�ڰ�����|������׷����|һ�ﻨ��������|���������Ľｶ|������������|�˽�â��ʮ���|�Ҹ�|��į|������һ���ƣ�ֻ��һ�ھͻ���|�Ͷ�����|�����壻��Ҫ�٣���Ҫϡ���ڶ���|����ʱ���������|�������|����ǻ�|��ÿ���|�������|�������Լ�������������|Ϊ�Լ��Ȳʣ�Ϊ�Լ��ж�|���ۺ�ʱ����Ҫ̤ʵ���ߺ�ÿһ��|����ϸ�µĹ���ÿһ��|Ŭ����Զ����ƭ��|����һ����ᷢ�֣���ļ�ֻر����������|Ŭ��Ӧ����һ��ϰ�ߣ�������һʱ����|���������ã�����Ϊ��û�м������ȥ|���������ж������ɲ���ʱ����������һС��|ÿ�춼Ҫ��������Լ�|�����ڣ�û����֪������Ҫʲô|��ȥ�����κ��뷨��ֻ���Ժ�����Ӿ|�������Ų�����Զ�Ҳ�����ǰ���ķ���|��ʵ���ǿ��ֻ����������㵹æ|ϣ����ÿ���������������|�������ԸΥ������������һ�����а���|����ʧȥ�ģ�����������һ�ַ�ʽ����|Ŭ�����Ͻ�|����������|������ۣ����Ժܿࡣ���ǻ���Ҫ��������Ŭ��|��Ȼϲ��������������Լ��ͱ���䲻η��δ֪���������ˡ���ϣ���Ұ����˼ǵ��ҡ�|Ŭ������Լ���Ҫ��ɵ����飬�������껪��������ʱ�⣡��Ȼʱ����룬����ȻŬ��ִ�ţ�|�׾Թ�϶��ʱ������|�껪��ȥҲ�����ǵ�ָһ�Ӽ����|���Լ�ϲ���ķ�ʽ�����ӣ�������������á���|δ�����ڣ�|ʲôҲ�����ˣ�����ȴ�ܲ������ֻԸ�úõģ�|������裬���־��̹�����|���ϵĿ��֣����˿��õ��������ʹ����˭�ܸо�����|����ı����ԣ�������һ�������ˣ�����������һ��Ӯ�ˡ�|��˵�ֵ������㡣���ǣ��������ǻ�����ļ�֫��|���ֵ�˵��˿�಻��ÿ��Ů���Ӷ����Դ��ġ�|���������ڿ�ʼʱ������ν���ڽ���ʱʹ���ķ�")

SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/TigerBestiary")--�M���_�ͻ��ëF
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary")--˹�����r�B
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlagueBestiary")--�ƶ��z�߲�֩��
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlatedBestiary")--�ƶ��z��Ѫ֩��
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/GemFrogBestiary")--����ɺ����
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/TigerBestiarySpiritBoss")--��ʼ֮���M���_
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SpiderPlatedBestiarySpiritBoss")--��ʼ֮ҹ�ƶ��z
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/BestiarySpiker")--�M���_�ޫF
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/RootSpiderBestiary_")--�ƶ��z���ɫF
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SnakeBestiary2")--˹������Ѫ����
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/InsectSpawnerBestiary")--�ƶ��zŮ��
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SquidBestiary")--����ɺ������
-- SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/SandLeaperBestiary")--�ƶ��z�v�y��

------------------��ַ���
-- SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--���ô��ҳ�� 
-- SaveType ��Ʒ���� �ַ����� ֧���������� ������nil ����������|�ֿ� -- SaveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|������Ʒ�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--pageName �ֿ�ҳ���� �ַ����� ���������м���|����
--goodsName ��Ʒ�� �ַ����� ������nil
--goodsClassName ��Ʒ���� �ַ����� ������nil
--wordName ��׺�� �ַ����� ������nil
--wordClassName ��׺���� �ַ����� ������nil
--pageType �ֿ�ҳ���� ��ֵ�� �����nil��0 Ϊ��ͨ�ֿ� 1Ϊͨ��ҳ 2Ϊ���˿�ҳ  3Ϊ��Ƭҳ

-------ע��Ҫ������ǰ С�� ���������ں������
SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1|2|3|4")
SetSaveIndex("����ͼ","2|5|6|7|8")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","1|2|3|4|8")
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ|�鱦|���˿�|�·�|��|����|��ͼ��Ƭ|��Լ|����̽��������Ƕ��ͨ��","4|5|6|7|8")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��|��Լ|��ͼ��Ƭ|Ԥ��","4|5|6|7|8")
SetSaveIndex(nil,"4|5|6|7|8","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4|5|6|7|8","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours")
SetSaveIndex(nil,"4|5|6|7|8","����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4|5|6|7|8","��ӡ�ķ�ħ֮��","Metadata/Items/Currency/CurrencyItemisedCapturedMonster")
SetSaveIndex(nil,"1|5|6|7|8","���۵Ļ���ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollRare")
SetSaveIndex(nil,"4|5|6|7|8","���۵Ļ�ɫʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours")
SetSaveIndex(nil,"1|5|6|7|8","���۵���ʥ����","Metadata/Items/Currency/CurrencyHellscapeUpgradeModTier")
SetSaveIndex(nil,"1|5|6|7|8","���۵ĳ��ʯ","Metadata/Items/Currency/CurrencyHellscapeAddModToRare")
-- SetSaveIndex(nil,"1|5|6|7|8","���۵Ĺ���ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers")
SetSaveIndex(nil,"4|5|6|7|8","���۵�����ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketLinks")
SetSaveIndex(nil,"4|5|6|7|8","���۵�ף��","Metadata/Items/Currency/CurrencyLabyrinthEnchantCorrupt")
--SetSaveIndex(nil,"4|5|6|7|8","������Ƭ","Metadata/Items/Currency/CurrencyRitualSplinter")
--SetSaveIndex(nil,"4|5|6|7|8","���뱮��","Metadata/Items/Currency/CurrencyRitualStone")
SetSaveIndex("HarvestSeed","4")--����
SetSaveIndex("HeistBlueprint","4|1")--��ͼ
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/ClassicVaultKey")--�ŵ��z�
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/340VaultKey")--�����z�
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/VaalVaultKey")--�ߠ��z�
SetSaveIndex(nil,"4|5|6|7|8","̽�U���I","Metadata/Items/Expedition/ExpeditionLogbook")
SetSaveIndex(nil,"4",nil,"Metadata/Items/MapFragments/RitualFragment")--��Ѫ����

--�����鱦
-- SetSaveIndex(nil,"2",nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")--��������
-- SetSaveIndex(nil,"2",nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")--��������

SetSaveIndex(nil,"1|2|4","����","Metadata/Items/Currency/CurrencyRefreshGambler")
SetSaveIndex(nil,"1|2|4","�ͽ�����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_1")
SetSaveIndex(nil,"1|2|4","��ͨ����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_2")
SetSaveIndex(nil,"1|2|4","�߽�����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_3")
SetSaveIndex(nil,"1|2|4","��ΰ����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_4")
SetSaveIndex(nil,"1|2|4","�ͽ׺ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_1")
SetSaveIndex(nil,"1|2|4","��ͨ�ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_2")
SetSaveIndex(nil,"1|2|4","�߽׺ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_3")
SetSaveIndex(nil,"1|2|4","��ΰ�ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_4")
SetSaveIndex(nil,"1|2|4","�ͽ���������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_1")
SetSaveIndex(nil,"1|2|4","��ͨ��������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_2")
SetSaveIndex(nil,"1|2|4","�߽���������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_3")
SetSaveIndex(nil,"1|2|4","��ΰ��������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_4")
SetSaveIndex(nil,"1|2|4","�ͽ��W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_1")
SetSaveIndex(nil,"1|2|4","��ͨ�W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_2")
SetSaveIndex(nil,"1|2|4","�߽��W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_3")
SetSaveIndex(nil,"1|2|4","��ΰ�W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_4")

SetSaveIndex(nil,"4|5|6|7|8","�{�D��չ�[�� ","Metadata/Items/Heist/HeistBlueprintReliquary")
SetSaveIndex(nil,"4|5|6|7|8","�{�D���ص�","Metadata/Items/Heist/HeistBlueprintRobotTunnels")
SetSaveIndex(nil,"4|5|6|7|8","�{�D�������^��","Metadata/Items/Heist/HeistBlueprintLibrary")
SetSaveIndex(nil,"4|5|6|7|8","�{�D�������","Metadata/Items/Heist/HeistBlueprintDungeon")
SetSaveIndex("���","4")




--���ö�����װ����C
SetChangeLimitCnt("ͷ��|����|Ь��",3)
SetChangeLimitCnt("����",4)
SetChangeLimitCnt("����|��ָ",15)
SetChangeLimitCnt("����|�·�",2)



--��ͼ���
-- SetNotMapGoMap(className,cnt) �����޵�ͼ��δ���ȼ�ʱҪˢ�ľ����ͼ className�ַ����� ��ͼ���� cnt=����
SetNotMapGoMap("2_9_1",10)	--�޵�ͼʱˢѪɫͨ��

--�һ���ͼ
g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
-- SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����
g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
-- SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����


--�Ե�ͼʹ��ʥ�׳�
--AddMapUseGoods("Rusted Divination Scarab","Metadata/Items/Scarabs/ScarabDivinationCards1","1|2",78,true)--���˿�50%
--AddMapUseGoods("Polished Divination Scarab","Metadata/Items/Scarabs/ScarabDivinationCards2","1|2",78,true)--���˿�100%
--AddMapUseGoods("Gilded Divination Scarab","Metadata/Items/Scarabs/ScarabDivinationCards3","1|2",78,true)--���˿�150%
--AddMapUseGoods("Rusted Expedition Scarab","Metadata/Items/Scarabs/ScarabPerandus1","1|2",78,true)--ը��
--AddMapUseGoods("Polished Expedition Scarab","Metadata/Items/Scarabs/ScarabPerandus2","1|2",78,true)--ը��
--AddMapUseGoods("Gilded Expedition Scarab","Metadata/Items/Scarabs/ScarabPerandus3","1|2",78,true)--ը��
--AddMapUseGoods("Rusted Torment Scarab","Metadata/Items/Scarabs/ScarabTorment1","1|2",78,true)--���
--AddMapUseGoods("Polished Torment Scarab","Metadata/Items/Scarabs/ScarabTorment2","1|2",78,true)--���
--AddMapUseGoods("Gilded Torment Scarab","Metadata/Items/Scarabs/ScarabTorment3","1|2",78,true)--���
--AddMapUseGoods("Rusted Reliquary Scarab","Metadata/Items/Scarabs/ScarabUniques1","1|2",78,true)--�����b
--AddMapUseGoods("Polished Reliquary Scarab","Metadata/Items/Scarabs/ScarabUniques2","1|2",78,true)--�����b
--AddMapUseGoods("Gilded Reliquary Scarab","Metadata/Items/Scarabs/ScarabUniques3","1|2",78,true)--�����b
--AddMapUseGoods("Rusted Legion Scarab","Metadata/Items/Scarabs/ScarabLegion1","1|2",78,true)--܊�F
--AddMapUseGoods("Polished Legion Scarab","Metadata/Items/Scarabs/ScarabLegion2","1|2",78,true)--܊�F
--AddMapUseGoods("Gilded Legion Scarab","Metadata/Items/Scarabs/ScarabLegion3","1|2",78,true)--܊�F
--AddMapUseGoods("Rusted Breach Scarab","Metadata/Items/Scarabs/ScarabBreach1","1|2",78,true)--��϶
--AddMapUseGoods("Polished Breach Scarab","Metadata/Items/Scarabs/ScarabLegion2","1|2",78,true)--��϶
--AddMapUseGoods("Gilded Breach Scarab","Metadata/Items/Scarabs/ScarabLegion3","1|2",78,true)--��϶
--AddMapUseGoods("Rusted Ambush Scarab","Metadata/Items/Scarabs/ScarabStrongbox1","1|2",78,true)--������
--AddMapUseGoods("Polished Ambush Scarab","Metadata/Items/Scarabs/ScarabStrongbox2","1|2",78,true)--������
--AddMapUseGoods("Gilded Ambush Scarab","Metadata/Items/Scarabs/ScarabStrongbox3","1|2",78,true)--������
--AddMapUseGoods("Rusted Harbinger Scarab","Metadata/Items/Scarabs/ScarabHarbinger1","1|2",78,true)--����
--AddMapUseGoods("Polished Harbinger Scarab","Metadata/Items/Scarabs/ScarabHarbinger2","1|2",78,true)--����
--AddMapUseGoods("Gilded Harbinger Scarab","Metadata/Items/Scarabs/ScarabHarbinger3","1|2",78,true)--����
--AddMapUseGoods("Rusted Metamorph Scarab","Metadata/Items/Scarabs/ScarabMetamorph1","1|2",78,true)--�ֱ�
--AddMapUseGoods("Polished Metamorph Scarab","Metadata/Items/Scarabs/ScarabMetamorph2","1|2",78,true)--�ֱ�
--AddMapUseGoods("Gilded Metamorph Scarab","Metadata/Items/Scarabs/ScarabMetamorph3","1|2",78,true)--�ֱ�
--AddMapUseGoods("Rusted Abyss Scarab","Metadata/Items/Scarabs/ScarabAbyss1","1|2",78,true)--��Ԩ
--AddMapUseGoods("Polished Abyss Scarab","Metadata/Items/Scarabs/ScarabAbyss2","1|2",78,true)--��Ԩ
--AddMapUseGoods("Gilded Abyss Scarab","Metadata/Items/Scarabs/ScarabAbyss3","1|2",78,true)--��Ԩ


-- SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����
SetYouXianUseMapData("����Ĺ��","Metadata/Items/Maps/MapWorldsBurialChambers","0|1|2")
SetYouXianUseMapData("糺����","Metadata/Items/Maps/MapWorldsCrimsonTemple","0|1|2")
SetYouXianUseMapData("����֮��","Metadata/Items/Maps/MapWorldsSpiderForest","0|1|2")
SetYouXianUseMapData("������̲","Metadata/Items/Maps/MapWorldsStrand","0|1|2")
SetYouXianUseMapData("¶̨��԰","Metadata/Items/Maps/MapWorldsTerrace","0|1|2")
SetYouXianUseMapData("ĺ�⺣̲","Metadata/Items/Maps/MapWorldsShore","0|1|2")
SetYouXianUseMapData("�������","Metadata/Items/Maps/MapWorldsIvoryTemple","0|1|2")
SetYouXianUseMapData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion","0|1|2")
SetYouXianUseMapData("����֮��","Metadata/Items/Maps/MapWorldsPrecinct","0|1|2")
SetYouXianUseMapData("濾����","Metadata/Items/Maps/MapWorldsMoonTemple","0|1|2")
SetYouXianUseMapData("��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera","0|1|2")
SetYouXianUseMapData("�����ԭ","Metadata/Items/Maps/MapWorldsPlateau","0|1|2")
SetYouXianUseMapData("ʧ�����","Metadata/Items/Maps/MapWorldsPort","0|1|2")
SetYouXianUseMapData("����Ͽ��","Metadata/Items/Maps/MapWorldsCoves","0|1|2")
SetYouXianUseMapData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb","0|1|2")
SetYouXianUseMapData("����֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard","0|1|2")

-- SetNoUseMapShuXing(className)--���ò�ʹ�ô���ĳ�����Եĵ�ͼ,���� classNameΪ��������
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--���ò�������������
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ

-- SetSellGoodsData(name,className,cnt,color)--������(��)�ĵ�ͼ 
--name=��Ʒ�� className=��Ʒ���� ��ʶ����Ʒ�� ʶ�𲻵���ʶ������ cnt=������ȥ�� color=��ɫ 0�� 1�� 2�� �����|����
SetSellGoodsData("����Ĺ��","Metadata/Items/Maps/MapWorldsBurialChambers",5,"0|1|2|")
SetSellGoodsData("糺����","Metadata/Items/Maps/MapWorldsCrimsonTemple",5,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsSpiderForest",5,"0|1|2|")
SetSellGoodsData("������̲","Metadata/Items/Maps/MapWorldsStrand",5,"0|1|2|")
SetSellGoodsData("¶̨��԰","Metadata/Items/Maps/MapWorldsTerrace",5,"0|1|2|")
SetSellGoodsData("ĺ�⺣̲","Metadata/Items/Maps/MapWorldsShore",5,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsIvoryTemple",5,"0|1|2|")
SetSellGoodsData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion",5,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsPrecinct",5,"0|1|2|")
SetSellGoodsData("濾����","Metadata/Items/Maps/MapWorldsMoonTemple",5,"0|1|2|")
SetSellGoodsData("��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera",5,"0|1|2|")
SetSellGoodsData("�����ԭ","Metadata/Items/Maps/MapWorldsPlateau",5,"0|1|2|")
SetSellGoodsData("ʧ�����","Metadata/Items/Maps/MapWorldsPort",5,"0|1|2|")
SetSellGoodsData("����Ͽ��","Metadata/Items/Maps/MapWorldsCoves",5,"0|1|2|")
SetSellGoodsData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb",5,"0|1|2|")
SetSellGoodsData("����֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard",5,"0|1|2|")
SetSellGoodsData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways",2,"0|1|2|")
SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsMausoleum",2,"0|1|2|")
SetSellGoodsData("�Ǽ���Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",2,"0|1|2|")
SetSellGoodsData("�Ų����","Metadata/Items/Maps/MapWorldsMuseum",2,"0|1|2|")
SetSellGoodsData("����Ĺ�V","Metadata/Items/Maps/MapWorldsSepulchre",2,"0|1|2|")
SetSellGoodsData("ŭ��֮��","Metadata/Items/Maps/MapWorldsPier",2,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsThicket",2,"0|1|2|")
SetSellGoodsData("ħ�����","Metadata/Items/Maps/MapWorldsPhantasmagoria",2,"0|1|2|")
SetSellGoodsData("�����","Metadata/Items/Maps/MapWorldsSilo",2,"0|1|2|")
SetSellGoodsData("ʵ�����","Metadata/Items/Maps/MapWorldsLaboratory",2,"0|1|2|")
SetSellGoodsData("���֮��","Metadata/Items/Maps/MapWorldsTemple",2,"0|1|2|")
SetSellGoodsData("��ԭС��","Metadata/Items/Maps/MapWorldsFrozenCabins",2,"0|1|2|")
SetSellGoodsData("ʪ�ؿ�ɽ","Metadata/Items/Maps/MapWorldsMineralPools",2,"0|1|2|")
SetSellGoodsData("���n����","Metadata/Items/Maps/MapWorldsFactory",2,"0|1|2|")
SetSellGoodsData("ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",2,"0|1|2|")
SetSellGoodsData("Ǭ���ֵ�","Metadata/Items/Maps/MapWorldsPeninsula",2,"0|1|2|")
SetSellGoodsData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade",2,"0|1|2|")
SetSellGoodsData("��ɽ����","Metadata/Items/Maps/MapWorldsVolcano",2,"0|1|2|")
SetSellGoodsData("�ҽ��ۺ�","Metadata/Items/Maps/MapWorldsLavaLake",1,"0|1|2|")
SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",1,"0|1|2|")
SetSellGoodsData("�ż�����","Metadata/Items/Maps/MapWorldsCastleRuins",1,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsCage",1,"0|1|2|")
SetSellGoodsData("�߶�������","Metadata/Items/Maps/MapWorldsVaalPyramid",1,"0|1|2|")
SetSellGoodsData("����ɽ��","Metadata/Items/Maps/MapWorldsAtoll",1,"0|1|2|")
SetSellGoodsData("���鱤��","Metadata/Items/Maps/MapWorldsCoralRuins",1,"0|1|2|")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsSpiderLair",1,"0|1|2|")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest",1,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsResidence",1,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsBog",1,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsAcidLakes",1,"0|1|2|")
SetSellGoodsData("���ʴ��","Metadata/Items/Maps/MapWorldsSulphurVents",1,"0|1|2|")
SetSellGoodsData("��ԭ��ñ","Metadata/Items/Maps/MapWorldsIceberg",1,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsTribunal",1,"0|1|2|")
SetSellGoodsData("�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",1,"0|1|2|")

-- SetCompoundDivinationCard(name,className,nType) --������Ҫ�ϳɵ����˿� name=��Ƭ�� className=��Ƭ���� nType=�ϳɳ��� nil����Ϊ���ۺ�ʱ���ϳ� 0Ϊû��ˢ���ź� 1Ϊֻ��ˢ���ź�
SetCompoundDivinationCard("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�|��֮��","Metadata/Items/DivinationCards/DivinationCardCovetedPossession",1)--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ؔ����","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������","Metadata/Items/DivinationCards/DivinationCardTheInventor")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheUnion")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����İû�","Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�m������","Metadata/Items/DivinationCards/DivinationCardAcclimatisation")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--���úϳ��ҳ����˿�
--SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�}ͽ֮ؔ","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�o��","Metadata/Items/DivinationCards/DivinationCardNoTraces")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheFool")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������ʦ","Metadata/Items/DivinationCards/DivinationCardMasterArtisan")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",0)--���úϳ��ҳ����˿�
SetCompoundDivinationCard("���","Metadata/Items/DivinationCards/DivinationCardTheVoid")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�۹����Ų�","Metadata/Items/DivinationCards/DivinationCardImperialLegacy")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("Ѫ��֮�|","Metadata/Items/DivinationCards/DivinationCardTheBody")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ʯ�������Z","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardDemigodsWager")--�N�A��ـע
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheSeeker")--̽����
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardThePuzzle")--�i
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheObscured")--�ޝ�
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardLuckyDeck")--���\�ƽM enName:lucky-deck
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheHoarder")--���� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheAwakened")--���� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardAcclimatisation")--������Ӧ enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")--����֮�� enName:the-hoarder
SetCompoundDivinationCard(nil,"Metadata/Items/DivinationCards/DivinationCardTheTinkerersTable")--�I��֮��
SetCompoundDivinationCard("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�{��","Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")--���úϳ��ҳ����˿�


-- SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--���ÿ�ʼˢ���ʱ���⹺��ָ����Ʒ
--name=�Լ��е�ͨ���� className=�Լ��е�ͨ������ cnt=�����ٸ����� 0��nil ���ᴥ�� buyName=��Ҫ�������Ʒ�� buyClassName=��Ҫ�������Ʒ����

g_buyNpcData={
mapClassName="2_8_town"
,className="Metadata/NPC/Act8/ClarissaTown"
}--������3�� 2_8_town ��NPC�¹��� name:������ɯ className:Metadata/NPC/Act8/ClarissaTown 

SetNeedBuyGoodsData("֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,"����","Metadata/Items/Currency/CurrencyPortal")
SetNeedBuyGoodsData("���;���","Metadata/Items/Currency/CurrencyPortal",nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",100,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",80,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",80,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",80,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",10,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")

-- SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)-- ����Ҫ��������Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� -- SaveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--czType:�ַ����� 0Ϊʰ 1�� 2�� 3�� 4���� �ɶ���м���|����
--name �ַ����� ��Ʒ������ �������� nil
--className �ַ����� ��Ʒ������ �������� nil
--wordName �ַ����� ��Ʒ�Ĵ�׺�� �������� nil
--wordClassName �ַ����� ��Ʒ�Ĵ�׺���� �������� nil
--pingzhi ������ ��Ʒ��Ʒ�� �������� nil
--cnt ������ �������� �������� nil
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
-- SocketCnt ������ �ܶ����� �������� nil
--lineCnt ������ �������� �������� nil
--checkCangKu ���㱣������ʱ�Ƿ����ֿ��ڵ�����Ҳ�����ȥ nil��falseΪ������ֿ� true Ϊ��Ҫ����
SetGoodsCaoZuo("ͨ��|�ɶѵ�ͨ��|����ͼ","0|2")--����������ü��
SetGoodsCaoZuo("�������ܱ�ʯ|�������ܱ�ʯ","0|2",nil,nil,nil,nil,5)--ʰȡƷ�ʳ���5�ļ��ܱ�ʯ

SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--ʰȡ ���� ���۳�ɫ��Ʒ
SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,30)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,30)--���˾Ͳ�����
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6��װ���ü���
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6����װ���ü���
--SetGoodsCaoZuo("����","0|1|4",nil,nil,nil,nil,nil,nil,"2")--���������Ļ�צ��
--SetGoodsCaoZuo("���ָ�","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
--SetGoodsCaoZuo("����","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
--SetGoodsCaoZuo("ذ��","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
--SetGoodsCaoZuo("ϸ��","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("�鱦|��Ԩ�鱦","0|1|4",nil,nil,nil,nil,nil,nil,"2")--ʰȡ ���� ���ۻ�ɫ��Ʒ�鱦
SetGoodsCaoZuo(nil,"1|3","���긣��","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")--ĥ��ʯ����
SetGoodsCaoZuo(nil,"0","����Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")--����Ƭ����
SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyIdentificationShard")--������Ƭ��
SetGoodsCaoZuo(nil,"3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")--��Ԥ��
-- SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyRitualSplinter")
-- SetGoodsCaoZuo(nil,"3","���뱮��","Metadata/Items/Currency/CurrencyRitualStone")
-- SetGoodsCaoZuo(nil,"1|3","ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit")--
SetGoodsCaoZuo(nil,"1|3","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")--
SetGoodsCaoZuo(nil,"1|3","���`ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard")--
SetGoodsCaoZuo(nil,"1|3","����ʯ��Ƭ","Metadata/Items/Currency/CurrencyStrongboxQualityShard")--
SetGoodsCaoZuo(nil,"1|3","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")--
SetGoodsCaoZuo(nil,"1|3","ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt17","�����ĸ���","Chains of Command")
SetGoodsCaoZuo(nil,"1|3","Ƥ������","Metadata/Items/Belts/Belt3","����","Immortal Flesh")
-- SetGoodsCaoZuo(nil,"1|3","ʥ��","Metadata/Items/Currency/CurrencyRerollDefences")
-- SetGoodsCaoZuo(nil,"1|3","���۵Ļ���Ƭ","Metadata/Items/Currency/CurrencyHellscapeArmourQuality")
-- SetGoodsCaoZuo(nil,"1|3","���۵�ĥ��ʯ","Metadata/Items/Currency/CurrencyHellscapeWeaponQuality")
-- SetGoodsCaoZuo(nil,"1|3","���۵�ף��","Metadata/Items/Currency/CurrencyLabyrinthEnchantCorrupt")
-- SetGoodsCaoZuo(nil,"1|3","���۵Ĺ���ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers")
-- SetGoodsCaoZuo(nil,"1|3","���۵ĳ��ʯ","Metadata/Items/Currency/CurrencyHellscapeAddModToRare")
-- SetGoodsCaoZuo(nil,"1|3","���۵Ļ�ɫʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours",nil,nil,nil,nil)
--SetGoodsCaoZuo(nil,"1|3","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours")
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--�ħ�X�費��
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--�ħ�۾�����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--�ħ���K����
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--�ħ���K����
SetGoodsCaoZuo(nil,"3","��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,80,nil,nil,nil,true)



SetGoodsCaoZuo("��Լ","0|2",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>85 end)
SetGoodsCaoZuo(nil,"0","�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin")--ֻ�񲻴�ᱦ��
-- SetGoodsCaoZuo(nil,nil,"�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,10000)--���˾Ͳ�����


SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Heist/HeistBlueprintDungeon")--�{�D�������
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Heist/HeistBlueprintReliquary")--�{�D��չ�[��
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Heist/HeistBlueprintLibrary")--�{�D�������^��
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels")--�{�D���ص�


-- ������ͼ
SetGoodsCaoZuo("����ͼ","1|3","����֮��","Metadata/Items/Maps/MapWorldsLavaChamber")
SetGoodsCaoZuo("����ͼ","1|3","糺�С��","Metadata/Items/Maps/MapWorldsCrimsonTownship")
--SetGoodsCaoZuo("����ͼ","1|3","ŭ��֮��","Metadata/Items/Maps/MapWorldsPier")
--SetGoodsCaoZuo("����ͼ","1|3","��Ӱ�e��","Metadata/Items/Maps/MapWorldsVilla")
--SetGoodsCaoZuo("����ͼ","1|3","����Σ��","Metadata/Items/Maps/MapWorldsLookout")
--SetGoodsCaoZuo("����ͼ","1|3","�Ÿ��و�","Metadata/Items/Maps/MapWorldsRacecourse")
--SetGoodsCaoZuo("����ͼ","1|3","Ѫ���ӝ�","Metadata/Items/Maps/MapWorldsPrimordialPool")
--SetGoodsCaoZuo("����ͼ","1|3","��犘�","Metadata/Items/Maps/MapWorldsBelfry")
--SetGoodsCaoZuo("����ͼ","1|3","������","Metadata/Items/Maps/MapWorldsArena")
--SetGoodsCaoZuo("����ͼ","1|3","ħ������","Metadata/Items/Maps/MapWorldsVault")
--SetGoodsCaoZuo("����ͼ","1|3","ꎻ�����","Metadata/Items/Maps/MapWorldsMudGeyser")
--SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid")
--SetGoodsCaoZuo("����ͼ","1|3","�V��","Metadata/Items/Maps/MapWorldsPlaza")
--SetGoodsCaoZuo("����ͼ","1|3","�Ͼ��Vɽ","Metadata/Items/Maps/MapWorldsCrystalOre")
--SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsColonnade")
--SetGoodsCaoZuo("����ͼ","1|3","�ۻ��Ҟ�","Metadata/Items/Maps/MapWorldsEstuary")
--SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsWastePool")
--SetGoodsCaoZuo("����ͼ","1|3","���g֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard")
--SetGoodsCaoZuo("����ͼ","1|3","Ԏ�H����","Metadata/Items/Maps/MapWorldsGeode")
--SetGoodsCaoZuo("����ͼ","1|3","����֮��","Metadata/Items/Maps/MapWorldsLavaChamber")
--SetGoodsCaoZuo("����ͼ","1|3","�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket")
--SetGoodsCaoZuo("����ͼ","1|3","ħ�`�êz","Metadata/Items/Maps/MapWorldsPhantasmagoria")
--SetGoodsCaoZuo("����ͼ","1|3","���`�WԺ","Metadata/Items/Maps/MapWorldsAcademy")
--SetGoodsCaoZuo("����ͼ","1|3","�}��","Metadata/Items/Maps/MapWorldsBasilica")
--SetGoodsCaoZuo("����ͼ","1|3","��ɽ�׿�","Metadata/Items/Maps/MapWorldsCaldera")
--SetGoodsCaoZuo("����ͼ","1|3","Σ�C����","Metadata/Items/Maps/MapWorldsReef")
--SetGoodsCaoZuo("����ͼ","1|3","�z�E�U��","Metadata/Items/Maps/MapWorldsCastleRuins")
--SetGoodsCaoZuo("����ͼ","1|3","��ꖍ{��","Metadata/Items/Maps/MapWorldsCanyon")
--SetGoodsCaoZuo("����ͼ","1|3","�ű�","Metadata/Items/Maps/MapWorldsChateau")
--SetGoodsCaoZuo("����ͼ","1|3","��������","Metadata/Items/Maps/MapWorldsResidence")

SetGoodsCaoZuo("����ͼ","1|3","Vault Map","Metadata/Items/Maps/MapWorldsVault",nil,nil,nil,nil,"0|1|2")--���ر���---���ܴ�---15��
SetGoodsCaoZuo("����ͼ","1|3","Summit Map","Metadata/Items/Maps/MapWorldsSummit",nil,nil,nil,nil,"0|1|2")--����֮��--16��
SetGoodsCaoZuo("����ͼ","1|3","Laboratory Map","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")--ʵ������---��Ҫ�������Ѵ�---5��
SetGoodsCaoZuo("����ͼ","1|3","Crater Map","Metadata/Items/Maps/MapWorldsTribunal",nil,nil,nil,nil,"0|1|2")--�ɿ�---���θ���---3��
SetGoodsCaoZuo("����ͼ","1|3","Terrace Map","Metadata/Items/Maps/MapWorldsTerrace",nil,nil,nil,nil,"0|1|2")--����̨��---boss�����Ѵ�---4��
SetGoodsCaoZuo("����ͼ","1|3","Pier Map","Metadata/Items/Maps/MapWorldsPier",nil,nil,nil,nil,"0|1|2")--ŭ��֮��---boss�׶ζ�---���ض�---2��

--SetGoodsCaoZuo("����ͼ","1|3","�����Ҟ�","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"0|1|2|3")
SetGoodsCaoZuo("����ͼ","1|3","�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
--SetGoodsCaoZuo("����ͼ","1|3","ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")

SetGoodsCaoZuo(nil,"1|3","������˹���","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","����","Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","���ܵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","ұ倵Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","���|�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","��ĥ�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","���Դ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","��׃�߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,nil)
SetGoodsCaoZuo(nil,"1|3","���ٴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,nil)





SetGoodsCaoZuo(nil,"1|3","��͸��ƿ","Metadata/Items/Currency/Mushrune1")
SetGoodsCaoZuo(nil,"1|3","�����ƿ","Metadata/Items/Currency/Mushrune2")
SetGoodsCaoZuo(nil,"1|3","������ƿ","Metadata/Items/Currency/Mushrune3")
SetGoodsCaoZuo(nil,"1|3","��G��ƿ","Metadata/Items/Currency/Mushrune4")
SetGoodsCaoZuo(nil,"1|3","��G��ƿ","Metadata/Items/Currency/Mushrune5")
SetGoodsCaoZuo(nil,"1|3","���{��ƿ","Metadata/Items/Currency/Mushrune6")
SetGoodsCaoZuo(nil,"1|3","��ɫʥ��","Metadata/Items/Currency/Mushrune7")

--��Ƭ����
SetGoodsCaoZuo(nil,"0|2","�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetGoodsCaoZuo(nil,"0|2","�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"0|2","ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken")
SetGoodsCaoZuo(nil,"0|2","�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")
SetGoodsCaoZuo(nil,"0|2","��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")
SetGoodsCaoZuo(nil,"0|2","��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")
SetGoodsCaoZuo(nil,"0|2","����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")
SetGoodsCaoZuo(nil,"0|2","�|��֮��","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")
SetGoodsCaoZuo(nil,"0|2","������","Metadata/Items/DivinationCards/DivinationCardTheInventor")
SetGoodsCaoZuo(nil,"0|2","��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")
SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/DivinationCards/DivinationCardTheUnion")
SetGoodsCaoZuo(nil,"0|2","Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetGoodsCaoZuo(nil,"0|2","�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")
SetGoodsCaoZuo(nil,"0|2","����İû�","Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")
SetGoodsCaoZuo(nil,"0|2","����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")
SetGoodsCaoZuo(nil,"0|2","�m������","Metadata/Items/DivinationCards/DivinationCardAcclimatisation")
SetGoodsCaoZuo(nil,"0|2","�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty")
SetGoodsCaoZuo(nil,"0|2","��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer")
SetGoodsCaoZuo(nil,"0|2","�o��","Metadata/Items/DivinationCards/DivinationCardNoTraces")
SetGoodsCaoZuo(nil,"0|2","��","Metadata/Items/DivinationCards/DivinationCardTheInnocent")
SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/DivinationCards/DivinationCardTheFool")
SetGoodsCaoZuo(nil,"0|2","��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler")
SetGoodsCaoZuo(nil,"0|2","������ʦ","Metadata/Items/DivinationCards/DivinationCardMasterArtisan")
SetGoodsCaoZuo(nil,"0|2","���","Metadata/Items/DivinationCards/DivinationCardTheVoid")
SetGoodsCaoZuo(nil,"0|2","�۹����Ų�","Metadata/Items/DivinationCards/DivinationCardImperialLegacy")
SetGoodsCaoZuo(nil,"0|2","Ѫ��֮�|","Metadata/Items/DivinationCards/DivinationCardTheBody")
SetGoodsCaoZuo(nil,"0|2","��ʯ�������Z","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise")
SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger")
SetGoodsCaoZuo(nil,"0|2","����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")
SetGoodsCaoZuo(nil,"0|2","����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetGoodsCaoZuo(nil,"0|2","�{��","Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")

SetGoodsCaoZuo(nil,"1|3","���׻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingFire")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���L��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCold")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��䓻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLightning")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingPhysical")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�خ���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingChaos")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","ԭʼ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLife")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ܻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingDefences")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���໯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingElemental")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��û�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��͸��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMana")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSockets")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","Ѫ�n��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�U�ջ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAbyss")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��y��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�Ɂy��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingRandom")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���}��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","肽�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���g��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�o覻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��ħ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--�ɶѯBͨ؛


--SetGoodsCaoZuo(nil,"1|3","��ӡ�ķ�ħ֮��","Metadata/Items/Currency/CurrencyItemisedCapturedMonster")
--SetGoodsCaoZuo(nil,"1|3","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceHatred1")
--SetGoodsCaoZuo(nil,"1|3","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceHatred2")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred3")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred4")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred5")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceHatred6")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceHatred7")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceWoe1")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮��૾���","Metadata/Items/Currency/CurrencyEssenceWoe2")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe3")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe4")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe5")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮��Х����","Metadata/Items/Currency/CurrencyEssenceWoe6")
--SetGoodsCaoZuo(nil,"1|3","��ʹ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWoe7")
--SetGoodsCaoZuo(nil,"1|3","̰��֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceGreed1")
--SetGoodsCaoZuo(nil,"1|3","̰��֮��૾���","Metadata/Items/Currency/CurrencyEssenceGreed2")
--SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed3")
--SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed4")
--SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed5")
--SetGoodsCaoZuo(nil,"1|3","̰��֮��Х����","Metadata/Items/Currency/CurrencyEssenceGreed6")
--SetGoodsCaoZuo(nil,"1|3","̰��֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceGreed7")
--SetGoodsCaoZuo(nil,"1|3","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceContempt1")
--SetGoodsCaoZuo(nil,"1|3","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceContempt2")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt3")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt4")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt5")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceContempt6")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceContempt7")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮��૾���","Metadata/Items/Currency/CurrencyEssenceSorrow1")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow2")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow3")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow4")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮��Х����","Metadata/Items/Currency/CurrencyEssenceSorrow5")
--SetGoodsCaoZuo(nil,"1|3","��ϧ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSorrow6")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮��૾���","Metadata/Items/Currency/CurrencyEssenceAnger1")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger2")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger3")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger4")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnger5")
--SetGoodsCaoZuo(nil,"1|3","��ŭ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnger6")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮��૾���","Metadata/Items/Currency/CurrencyEssenceTorment1")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment2")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment3")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment4")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮��Х����","Metadata/Items/Currency/CurrencyEssenceTorment5")
--SetGoodsCaoZuo(nil,"1|3","��ĥ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceTorment6")
--SetGoodsCaoZuo(nil,"1|3","�־�֮��૾���","Metadata/Items/Currency/CurrencyEssenceFear1")
--SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear2")
--SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear3")
--SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear4")
--SetGoodsCaoZuo(nil,"1|3","�־�֮��Х����","Metadata/Items/Currency/CurrencyEssenceFear5")
--SetGoodsCaoZuo(nil,"1|3","�־�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceFear6")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering1")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering2")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering3")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceSuffering4")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSuffering5")
--SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage1")
--SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage2")
--SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage3")
--SetGoodsCaoZuo(nil,"1|3","��Ű֮��Х����","Metadata/Items/Currency/CurrencyEssenceRage4")
--SetGoodsCaoZuo(nil,"1|3","��Ű֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceRage5")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath1")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath2")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath3")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceWrath4")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWrath5")
--SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt1")
--SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt2")
--SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt3")
--SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDoubt4")
--SetGoodsCaoZuo(nil,"1|3","�ɻ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDoubt5")
--SetGoodsCaoZuo(nil,"1|3","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish1")
--SetGoodsCaoZuo(nil,"1|3","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish2")
--SetGoodsCaoZuo(nil,"1|3","�尾֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnguish3")
--SetGoodsCaoZuo(nil,"1|3","�尾֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnguish4")
--SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing1")
--SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing2")
--SetGoodsCaoZuo(nil,"1|3","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceLoathing3")
--SetGoodsCaoZuo(nil,"1|3","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceLoathing4")
--SetGoodsCaoZuo(nil,"1|3","�̶�֮��������","Metadata/Items/Currency/CurrencyEssenceSpite1")
--SetGoodsCaoZuo(nil,"1|3","�̶�֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceSpite2")
--SetGoodsCaoZuo(nil,"1|3","�̶�֮��Х����","Metadata/Items/Currency/CurrencyEssenceSpite3")
--SetGoodsCaoZuo(nil,"1|3","�̶�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSpite4")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceZeal1")
--SetGoodsCaoZuo(nil,"1|3","����֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceZeal2")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceZeal3")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceZeal4")
--SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceMisery1")
--SetGoodsCaoZuo(nil,"1|3","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceMisery2")
--SetGoodsCaoZuo(nil,"1|3","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceMisery3")
--SetGoodsCaoZuo(nil,"1|3","�ɵ�֮��������","Metadata/Items/Currency/CurrencyEssenceDread1")
--SetGoodsCaoZuo(nil,"1|3","�ɵ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDread2")
--SetGoodsCaoZuo(nil,"1|3","�ɵ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDread3")
--SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceScorn1")
--SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceScorn2")
--SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceScorn3")
--SetGoodsCaoZuo(nil,"1|3","�ɶ�֮��������","Metadata/Items/Currency/CurrencyEssenceEnvy1")
--SetGoodsCaoZuo(nil,"1|3","�ɶ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceEnvy2")
--SetGoodsCaoZuo(nil,"1|3","�ɶ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceEnvy3")
--SetGoodsCaoZuo(nil,"1|3","���侫��","Metadata/Items/Currency/CurrencyEssenceHysteria1")
--SetGoodsCaoZuo(nil,"1|3","���Ҿ���","Metadata/Items/Currency/CurrencyEssenceInsanity1")
--SetGoodsCaoZuo(nil,"1|3","���־���","Metadata/Items/Currency/CurrencyEssenceHorror1")
--SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyEssenceDelirium1")
--SetGoodsCaoZuo(nil,"1|3","��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachFireShard")
--SetGoodsCaoZuo(nil,"1|3","��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachLightningShard")

--------------------------------------------------------------
--------------------------------------------------------------

--AddJiaoYiTime(startHour,endHour)--��ӽ���ʱ��δ��ڵ���startHour ����С�ڵ���endHour ʱ���⽻��
-- StartHour ������ ��ʼ���׵�Сʱ 
--endHour ������ �������׵�Сʱ
AddJiaoYiTime(0,24)--����11�㵽8��ǰ���⽻��

AddJiaoYiBossName("fan_ku",nil,nil,nil,true)


--AddJiaoYiTime(startHour,endHour)--��ӽ���ʱ��δ��ڵ���startHour ����С�ڵ���endHour ʱ���⽻��
--startHour ������ ��ʼ���׵�Сʱ 
--endHour ������ �������׵�Сʱ
AddJiaoYiTime(0,24)--����11�㵽8��ǰ���⽻��

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--����ֿ���

SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1|7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("���˿�","2|7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("�鱦","7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|�·�|��|����|Ь��|ͷ��|","7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("����|����|��ָ|","7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("����ͼ","7|8|9|10|11",nil,nil,nil,nil,nil,true)
SetSaveIndex("�������ܱ�ʯ|�������ܱ�ʯ","7|8|9|10|11",nil,nil,nil,nil,nil,true)

-- SetSaveIndex(nil,"6|17|18",nil,"Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,true)--����ʯ
-- SetSaveIndex(nil,"17|17|17",nil,"Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,true)--��ɫʯ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareShard",nil,nil,nil,true)--�c��ʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRemoveModShard",nil,nil,nil,true)--�oЧʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollUniqueShard",nil,nil,nil,true)--��׃ʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAddModToRareShard",nil,nil,nil,true)--���ʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollRareShard",nil,nil,nil,true)--����ʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollMagicShard",nil,nil,nil,true)--����ʯ��Ƭ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,true)--����ʯ

--SetSaveIndex(nil,"14",nil,"Metadata/Items/Currency/CurrencyEnkindlingOrb",nil,nil,nil,true)--�cȼʯ
--SetSaveIndex(nil,"14",nil,"Metadata/Items/Currency/CurrencyInstillingOrb",nil,nil,nil,true)--��עʯ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEldritchIchor1",nil,nil,nil,true)--���A�����`Һ
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEldritchEmber1",nil,nil,nil,true)--���A���ܻҠa

SetSaveIndex("MiscMapItem","14|14|14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--��϶֮ʯԿ��
SetSaveIndex("HeistBlueprint","14|14|14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--��ͼ
SetSaveIndex("MapFragment","3|7|8|9|10|11",nil,nil,nil,nil,nil,true)--�}���x
SetSaveIndex("���ͼ��������Ʒ","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--���ͼ��������Ʒ
SetSaveIndex("HarvestSeed","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--����
SetSaveIndex("ExpeditionLogbook","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--̽�U���I
SetSaveIndex("MetamorphosisDNA","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--�ħ�ӱ�
SetSaveIndex("HeistContract","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--���s��
SetSaveIndex("SentinelDrone","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--����
SetSaveIndex("DelveSocketableCurrency","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--��z���ͨ؛
SetSaveIndex("DelveStackableSocketableCurrency","14|7|8|9|10|11",nil,nil,nil,nil,nil,true)--��z�ɶѯB�в��ͨ؛

SetSaveIndex(nil,"14|7|8|9|10|11",nil,"Metadata/Items/Metamorphosis/CurrencyItemisedProphecy",nil,nil,nil,true)--�A��
SetSaveIndex(nil,"14|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyItemisedCapturedMonster",nil,nil,nil,true)--��ӡ�F���� enName:
SetSaveIndex(nil,"14|7|8|9|10|11",nil,"Metadata/Items/Heist/HeistCoin",nil,nil,nil,true)--�I�\֮ӡ enName:rogues-marker
--SetSaveIndex(nil,"14|14|14|14|14|2|2|1|5|6",nil,"Metadata/Items/Currency/CurrencyRitualStone",nil,nil,nil,true)--���뱮��

SetSaveIndex(nil,"14|7|8|9|10|11",nil,"Metadata/Items/Belts/Belt3",nil,nil,nil,true)--Ƥ������
SetSaveIndex(nil,"14|7|8|9|10|11",nil,nil,nil,"The Squire",nil,true)--"�����"
SetSaveIndex(nil,"14|7|8|9|10|11",nil,nil,nil,"Mageblood",nil,true)--"ħѪ"
SetSaveIndex(nil,"14|7|8|9|10|11",nil,nil,nil,"Headhunter",nil,true)--"�C��"
SetSaveIndex(nil,"14|7|8|9|10|11",nil,"Metadata/Items/Armours/Shields/ShieldStrDex13",nil,nil,nil,true)--���F�A��

 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollDefences",nil,nil,nil,true)--�}��
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours",nil,nil,nil,true)--���۵Ļ�ɫʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketLinks",nil,nil,nil,true)--���۵�朽Yʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers",nil,nil,nil,true)--���۵Ĺ���ʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeRerollRare",nil,nil,nil,true)--���۵Ļ���ʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeAddModToRare",nil,nil,nil,true)--���۵ĳ��ʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeUpgradeToUnique",nil,nil,nil,true)--���۵���Ԓʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeArmourQuality",nil,nil,nil,true)--���۵��o��Ƭ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeWeaponQuality",nil,nil,nil,true)--���۵�ĥ��ʯ
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyHellscapeUpgradeModTier",nil,nil,nil,true)--���۵����}�I��
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLabyrinthEnchantCorrupt",nil,nil,nil,true)--���۵�ף��

-- SetSaveIndex(nil,"18|17|16|11",nil,"Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,true)--�c��ʯ
-- SetSaveIndex(nil,"18|17|16|11",nil,"Metadata/Items/Currency/CurrencyWeaponQuality",nil,nil,nil,true)--ĥ��ʯ
-- SetSaveIndex(nil,"18|17|16|11",nil,"Metadata/Items/Currency/CurrencyArmourQuality",nil,nil,nil,true)--�o��Ƭ
-- SetSaveIndex(nil,"11|20",nil,"Metadata/Items/Currency/CurrencyAtlasPassiveRefund",nil,nil,nil,true)--���Nʯ
-- SetSaveIndex(nil,"11|19|1|2|3|5|6",nil,"Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,nil,true)--�[�����ʯ

SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRefreshGambler",nil,nil,nil,true)--����
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRefreshDealer",nil,nil,nil,true)--�U����
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRefreshBarter",nil,nil,nil,true)--������T
SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRefreshSaga",nil,nil,nil,true)--���᪄��

 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyUpgradeMapTier",nil,nil,nil,true)--����ʯ=���Iʯ
-- SetSaveIndex(nil,"11|16|17|3|14|19|1|2|5|6|4",nil,"Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,true)--�u�D���փx�����A
 SetSaveIndex(nil,"1|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,true)--�u�D���փx���X��

SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionShard",nil,nil,nil,true)--�����Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyAfflictionFragment",nil,nil,nil,true)--���񮐽�
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/ClassicVaultKey",nil,nil,nil,true)--�ŵ��z�
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/340VaultKey",nil,nil,nil,true)--�����z�
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/VaalVaultKey",nil,nil,nil,true)--�ߠ��z�
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/RitualFragment",nil,nil,nil,true)--��Ѫ����

--�ŵ�E301
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,true)--��ؔ����
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,true)--�}ͽ֮ؔ
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,true)--�T��֮��
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,true)--����
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,nil,true)--����ؔ��
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,nil,true)--ͯ��܊
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,nil,true)--����˼ enName:unrequited-love
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,true)--�N�A��ـע	
SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,true)--����֮�� enName:the-sephirot

 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,true)--Ů����
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,true)--���²��� enName:the-undaunted
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,true)--�a�v
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,true)--��ħ enName:the-demon
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,true)--ħ��
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,true)--���t enName:the-doctor
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,true)--�o�펟
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,nil,true)--����
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,true)--���R
 SetSaveIndex(nil,"2|7|8|9|10|11",nil,"Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,true)--����ù�\

SetSaveIndex(nil,"7|8|9|10|11",nil,"ԭʼ�Y�����`֮��","Metadata/Items/Currency/HarvestSeedBlue",nil,nil,nil,nil)
SetSaveIndex(nil,"7|8|9|10|11",nil,"���}�Y�����`֮��","Metadata/Items/Currency/HarvestSeedBoss",nil,nil,nil,1)
SetSaveIndex(nil,"7|8|9|10|11",nil,"Ұ�ԽY�����`֮��","Metadata/Items/Currency/HarvestSeedRed",nil,nil,nil,nil)
SetSaveIndex(nil,"7|8|9|10|11",nil,"�`�F�Y�����`֮��","Metadata/Items/Currency/HarvestSeedGreen",nil,nil,nil,nil)


SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,true)--������Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,true)--������Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,true)--���S��Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,true)--���������Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,true)--�Ğ�����Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/BreachFragmentFire",nil,nil,nil,true)--�����Ѻ�ʯ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/BreachFragmentCold",nil,nil,nil,true)--�����Ѻ�ʯ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/BreachFragmentLightning",nil,nil,nil,true)--���S�Ѻ�ʯ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/BreachFragmentPhysical",nil,nil,nil,true)--��������Ѻ�ʯ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/BreachFragmentChaos",nil,nil,nil,true)--�Ğ����Ѻ�ʯ

SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,true)--���a������Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,true)--���a�R����˹��Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,true)--���a����ۇ���Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,true)--���a�}����Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,true)--���a�ߠ���Ƭ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyLegionFragmentKarui",nil,nil,nil,true)--���a������ӡ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyLegionFragmentMaraketh",nil,nil,nil,true)--���a�R����˹��ӡ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyLegionFragmentEternal",nil,nil,nil,true)--���a����ۇ���ӡ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyLegionFragmentTemplar",nil,nil,nil,true)--���a�}�ڻ�ӡ
SetSaveIndex(nil,"3|7|8|9|10|11",nil,"Metadata/Items/MapFragments/CurrencyLegionFragmentVaal",nil,nil,nil,true)--���a�ߠ���ӡ

SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,true)--�����Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,true)--���ܵĴ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,true)--��ĥ�Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,true)--ұ倵Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,true)--�����Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,true)--�ච�Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,true)--���|�Ĵ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,true)--���Դ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,true)--���ٴ߻���
SetSaveIndex(nil,"4|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,true)--��׃�߻���

-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune1",nil,nil,nil,true)--��͸��ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune2",nil,nil,nil,true)--�����ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune3",nil,nil,nil,true)--������ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune4",nil,nil,nil,true)--��G��ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune5",nil,nil,nil,true)--��G��ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune6",nil,nil,nil,true)--���{��ƿ
-- SetSaveIndex(nil,"14|14|14|19|1|2|3|5|6|4",nil,"Metadata/Items/Currency/Mushrune6b",nil,nil,nil,true)--������ƿ
SetSaveIndex(nil,"5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune7",nil,nil,nil,true)--�g����ƿ
SetSaveIndex(nil,"14|5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune8",nil,nil,nil,true)--�p�t��ƿ
SetSaveIndex(nil,"14|5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune9",nil,nil,nil,true)--�����ƿ
SetSaveIndex(nil,"14|5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune10",nil,nil,nil,true)--�����ƿ
SetSaveIndex(nil,"14|5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune11",nil,nil,nil,true)--���y��ƿ
SetSaveIndex(nil,"14|5|7|8|9|10|11",nil,"Metadata/Items/Currency/Mushrune12",nil,nil,nil,true)--���S��ƿ

--������Ƭ
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheDarkMage",nil,nil,nil,true)--�ڰ��g�� enName:the-dark-mage
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheCelestialJusticar",nil,nil,nil,true)--���È̷��� enName:the-celestial-justicar
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,true)--���`֮� enName:the-chains-that-bind
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheWarlord",nil,nil,nil,true)--��܊�y enName:the-warlord
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,true)--���` enName:the-ethereal
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,true)--�O�²��� enName:the-dapper-prodigy
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,true)--�������� enName:emperor-of-purity
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,true)--���o enName:the-porcupine
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheSacrifice",nil,nil,nil,true)--���� enName:the-sacrifice
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardImperialLegacy",nil,nil,nil,true)--�����}�� enName:imperial-legacy
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheWhiteKnight",nil,nil,nil,true)--���Tʿ enName:the-white-knight
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardDrapedInDreams",nil,nil,nil,true)--����

--�濨Ƭ
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardBuriedTreasure",nil,nil,nil,true)--����z�� enName:buried-treasure
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,true)--؝���o�M enName:more-is-never-enough
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheDeal",nil,nil,nil,true)--�I�u enName:the-deal
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardCameriasCut",nil,nil,nil,true)--�����v��֮�� enName:camerias-cut
-- SetSaveIndex(nil,"1|2|3|5|6|14|19|13",nil,"Metadata/Items/DivinationCards/DivinationCardTheCardSharp",nil,nil,nil,true)--��ǧ

SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingDefences",nil,nil,nil,true)--���ܻ�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison",nil,nil,nil,true)--���g��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingElemental",nil,nil,nil,true)--���໯ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingCasterMods",nil,nil,nil,true)--��û�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingAttackMods",nil,nil,nil,true)--���X��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMana",nil,nil,nil,true)--��͸��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSpeed",nil,nil,nil,true)--���ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras",nil,nil,nil,true)--���ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality",nil,nil,nil,true)--�o覻�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant",nil,nil,nil,true)--��ħ��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets",nil,nil,nil,true)--��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingFire",nil,nil,nil,true)--���׻�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingCold",nil,nil,nil,true)--������ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingLightning",nil,nil,nil,true)--������ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingPhysical",nil,nil,nil,true)--��ݻ�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingChaos",nil,nil,nil,true)--���仯ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingLife",nil,nil,nil,true)--ԭʼ��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingGemLevel",nil,nil,nil,true)--���滯ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingVaal",nil,nil,nil,true)--��Ѫ��ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingAbyss",nil,nil,nil,true)--�οջ�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMirror",nil,nil,nil,true)--���ѻ�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence",nil,nil,nil,true)--��̻�ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingRandom",nil,nil,nil,true)--������ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls",nil,nil,nil,true)--ʥ�໯ʯ
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSellPrice",nil,nil,nil,true)--���ʯ
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred1",nil,nil,nil,true)--����֮���Z����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred2",nil,nil,nil,true)--����֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred3",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred4",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred5",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred6",nil,nil,nil,true)--����֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHatred7",nil,nil,nil,true)--����֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe1",nil,nil,nil,true)--��ʹ֮���Z����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe2",nil,nil,nil,true)--��ʹ֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe3",nil,nil,nil,true)--��ʹ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe4",nil,nil,nil,true)--��ʹ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe5",nil,nil,nil,true)--��ʹ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe6",nil,nil,nil,true)--��ʹ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWoe7",nil,nil,nil,true)--��ʹ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed1",nil,nil,nil,true)--؝��֮���Z����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed2",nil,nil,nil,true)--؝��֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed3",nil,nil,nil,true)--؝��֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed4",nil,nil,nil,true)--؝��֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed5",nil,nil,nil,true)--؝��֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed6",nil,nil,nil,true)--؝��֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceGreed7",nil,nil,nil,true)--؝��֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt1",nil,nil,nil,true)--�pҕ֮���Z����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt2",nil,nil,nil,true)--�pҕ֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt3",nil,nil,nil,true)--�pҕ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt4",nil,nil,nil,true)--�pҕ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt5",nil,nil,nil,true)--�pҕ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt6",nil,nil,nil,true)--�pҕ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceContempt7",nil,nil,nil,true)--�pҕ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow1",nil,nil,nil,true)--��ϧ֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow2",nil,nil,nil,true)--��ϧ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow3",nil,nil,nil,true)--��ϧ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow4",nil,nil,nil,true)--��ϧ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow5",nil,nil,nil,true)--��ϧ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSorrow6",nil,nil,nil,true)--��ϧ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger1",nil,nil,nil,true)--��ŭ֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger2",nil,nil,nil,true)--��ŭ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger3",nil,nil,nil,true)--��ŭ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger4",nil,nil,nil,true)--��ŭ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger5",nil,nil,nil,true)--��ŭ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnger6",nil,nil,nil,true)--��ŭ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment1",nil,nil,nil,true)--��ĥ֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment2",nil,nil,nil,true)--��ĥ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment3",nil,nil,nil,true)--��ĥ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment4",nil,nil,nil,true)--��ĥ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment5",nil,nil,nil,true)--��ĥ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceTorment6",nil,nil,nil,true)--��ĥ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear1",nil,nil,nil,true)--�֑�֮��૾���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear2",nil,nil,nil,true)--�֑�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear3",nil,nil,nil,true)--�֑�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear4",nil,nil,nil,true)--�֑�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear5",nil,nil,nil,true)--�֑�֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceFear6",nil,nil,nil,true)--�֑�֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSuffering1",nil,nil,nil,true)--���y֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSuffering2",nil,nil,nil,true)--���y֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSuffering3",nil,nil,nil,true)--���y֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSuffering4",nil,nil,nil,true)--���y֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSuffering5",nil,nil,nil,true)--���y֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceRage1",nil,nil,nil,true)--��Ű֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceRage2",nil,nil,nil,true)--��Ű֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceRage3",nil,nil,nil,true)--��Ű֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceRage4",nil,nil,nil,true)--��Ű֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceRage5",nil,nil,nil,true)--��Ű֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWrath1",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWrath2",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWrath3",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWrath4",nil,nil,nil,true)--����֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceWrath5",nil,nil,nil,true)--����֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDoubt1",nil,nil,nil,true)--�ɻ�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDoubt2",nil,nil,nil,true)--�ɻ�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDoubt3",nil,nil,nil,true)--�ɻ�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDoubt4",nil,nil,nil,true)--�ɻ�֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDoubt5",nil,nil,nil,true)--�ɻ�֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnguish1",nil,nil,nil,true)--�尾֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnguish2",nil,nil,nil,true)--�尾֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnguish3",nil,nil,nil,true)--�尾֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceAnguish4",nil,nil,nil,true)--�尾֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceLoathing1",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceLoathing2",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceLoathing3",nil,nil,nil,true)--����֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceLoathing4",nil,nil,nil,true)--����֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSpite1",nil,nil,nil,true)--�̶�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSpite2",nil,nil,nil,true)--�̶�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSpite3",nil,nil,nil,true)--�̶�֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceSpite4",nil,nil,nil,true)--�̶�֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceZeal1",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceZeal2",nil,nil,nil,true)--����֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceZeal3",nil,nil,nil,true)--����֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceZeal4",nil,nil,nil,true)--����֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceMisery1",nil,nil,nil,true)--���K֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceMisery2",nil,nil,nil,true)--���K֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceMisery3",nil,nil,nil,true)--���K֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDread1",nil,nil,nil,true)--�ɑ�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDread2",nil,nil,nil,true)--�ɑ�֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDread3",nil,nil,nil,true)--�ɑ�֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceScorn1",nil,nil,nil,true)--��ҕ֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceScorn2",nil,nil,nil,true)--��ҕ֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceScorn3",nil,nil,nil,true)--��ҕ֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceEnvy1",nil,nil,nil,true)--�ɶ�֮��������
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceEnvy2",nil,nil,nil,true)--�ɶ�֮��[����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceEnvy3",nil,nil,nil,true)--�ɶ�֮�ƿվ���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHysteria1",nil,nil,nil,true)--���F����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceInsanity1",nil,nil,nil,true)--�e�y����
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceHorror1",nil,nil,nil,true)--�O�־���
SetSaveIndex(nil,"6|7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyEssenceDelirium1",nil,nil,nil,true)--�d������

SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_1",nil,nil,nil,true)--���A����֮�h����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_2",nil,nil,nil,true)--��ͨ����֮�h����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_3",nil,nil,nil,true)--���A����֮�h����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_4",nil,nil,nil,true)--�ꂥ����֮�h����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_1",nil,nil,nil,true)--���A�ڰ�Ѫ�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_2",nil,nil,nil,true)--��ͨ�ڰ�Ѫ�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_3",nil,nil,nil,true)--���A�ڰ�Ѫ�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_4",nil,nil,nil,true)--�ꂥ�ڰ�Ѫ�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_1",nil,nil,nil,true)--���A��������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_2",nil,nil,nil,true)--��ͨ��������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_3",nil,nil,nil,true)--���A��������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_4",nil,nil,nil,true)--�ꂥ��������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_1",nil,nil,nil,true)--���A�W�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_2",nil,nil,nil,true)--��ͨ�W�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_3",nil,nil,nil,true)--���A�W�����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_4",nil,nil,nil,true)--�ꂥ�W�����

SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique",nil,nil,nil,true)--׿Խ�ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone",nil,nil,nil,true)--�����ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden",nil,nil,nil,true)--ȫ��ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted",nil,nil,nil,true)--�ߠ��ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium",nil,nil,nil,true)--�d���ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced",nil,nil,nil,true)--�����ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted",nil,nil,nil,true)--����ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian",nil,nil,nil,true)--�����ɲ���
SetSaveIndex(nil,"14|14|14|14|14|14|2|4",nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers",nil,nil,nil,true)--̽�U�҂ɲ���

SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyItemiseSextantModifier",nil,nil,nil,true)--�{��T���_�P
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyItemisedSextantModifier",nil,nil,nil,true)--���ܵ��_�P
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollSkillQualityType",nil,nil,nil,true)--���A�Y��֮�R
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyRerollSupportQualityType",nil,nil,nil,true)--���A�Y��֮�R

--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbCurrency",nil,nil,nil,true)--����֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbUniques",nil,nil,nil,true)--׿Խ֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbGems",nil,nil,nil,true)--���g֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbWeapons",nil,nil,nil,true)--�F��֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbArmour",nil,nil,nil,true)--�o��֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbMaps",nil,nil,nil,true)--�u�D֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets",nil,nil,nil,true)--�Ʒ֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbAbyss",nil,nil,nil,true)--��Y֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbPerandus",nil,nil,nil,true)--����֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger",nil,nil,nil,true)--�A��֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbBreach",nil,nil,nil,true)--�ޝ�֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbEssences",nil,nil,nil,true)--���Z֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbFragments",nil,nil,nil,true)--��Ƭ֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbScarabs",nil,nil,nil,true)--�w��֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbFossils",nil,nil,nil,true)--ʯ��֮�d����
--SetSaveIndex(nil,"14|14|14|14|14|19|2|6|4",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbProphecies",nil,nil,nil,true)--�A��֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards",nil,nil,nil,true)--�}��֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbGeneric",nil,nil,nil,true)--�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbTalismans",nil,nil,nil,true)--��ʼ֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth",nil,nil,nil,true)--����֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbIncubators",nil,nil,nil,true)--���a֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbBlight",nil,nil,nil,true)--����֮�d����
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis",nil,nil,nil,true)--׃�B֮�d����

SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyBasic",nil,nil,nil,true)--��������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyMutate",nil,nil,nil,true)--�����������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyUpgradeMod",nil,nil,nil,true)--������������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyAddMod",nil,nil,nil,true)--������������
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyArmour",nil,nil,nil,true)--�o���ؽM�b��
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyWeapon",nil,nil,nil,true)--�����ؽM�b��
SetSaveIndex(nil,"7|8|9|10|11",nil,"Metadata/Items/Currency/SentinelCurrencyJewellery",nil,nil,nil,true)--�Ʒ�ؽM�b��

--�߼���װ���ҳ��
-- SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa",nil,true)
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/Shields/ShieldStrDex9","������������֮��","Daresso's Courage",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Belts/Belt5","������˹֮ӡ","Perandus Blazon",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Amulets/Amulet3","����֮��","The Anvil",nil,true)--����
--SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Rings/Ring10","���ߺ���","Death Rush",nil,true)--�ҽ�ָ
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Rings/Ring1","Ӣ�鱦��","Le Heup of All",nil,true)--���ָ
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/Boots/BootsStrInt6","������¡����;","Alberon's Warpath",nil,true)--Ь��
--SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",nil,true)--ͷ��
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Flasks/FlaskUtility6","��θ��","Rotgut",nil,true)
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Flasks/FlaskUtility5","ʨ�𾫻�","Lion's Roar",nil,true)--ҩˮ
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate",nil,true)--ҩˮ
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","��Խ����","Advancing Fortress",nil,true)--����
--SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Belts/Belt4","ͻΧ��","Siegebreaker",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Armours/Shields/ShieldStr17","�{�۵Ęsҫ֮��","Lioneye's Remorse",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Amulets/Amulet6","��˹�ܵ��Ȧ","Bisco's Collar",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace11","������","Clayshaper",nil,true)--����
SetSaveIndex(nil,"2|2|14|14|19|4",nil,"Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","�|֮�","Ornament of the East","Clayshaper",nil,true)--����

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






--------------------------------------------------------------
--------------------------------------------------------------


-- SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)-- ����Ҫ���׵���Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� -- SaveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--name �ַ����� ��Ʒ������
--className �ַ����� ��Ʒ������
--wordName �ַ����� ��Ʒ�Ĵ�׺��
--wordClassName �ַ����� ��Ʒ�Ĵ�׺����
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--chufaCnt ������ �������׵����� 0��nil Ϊ������
--bossJiaoYiCnt ������ ����ʱ�ֿ�Ž��׸��һ��ŵ�����
--giveFaZhuang �߼��� �Ƿ���Լ�����װ�� trueΪ���Ը���װ�� false ��nil Ϊ����Ҫ
--baoliuCnt ������ �һ��Ž���ʱ����������
--lineSocketCnt ������ �������� ��������nil
--shuXingLimit �ַ����� �������� �Լ���Ҫ������ ��ʽΪ "��������1,������Сֵ1|��������2,������Сֵ2" ��֧�ֶ�������ʱ���붼�����˲��� �м���|���� ��������nil
--funcCheck ���˺�����������Ԥ���Ľӿڣ�������Ҫ�����������nil
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,10)
SetJiaoYiGoods(nil,"�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,nil,1)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,nil,20)--����30�����ʯ ������Ľ��׸��ֿ��
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����Ƭ","Metadata/Items/Currency/CurrencySimulacrumSplinter",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ͽ�����ӡ��","Metadata/Items/Heist/HeistCoin",nil,nil,nil,nil,nil,nil,1000)--����1000���ᱦ�� ������Ľ��׸��ֿ��
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���뱮��","Metadata/Items/Currency/CurrencyRitualStone")
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���Nʯ","Metadata/Items/Currency/CurrencyAtlasPassiveRefund",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ��Ƭ","Metadata/Items/Currency/CurrencyExaltedShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�[�����ʯ","Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,1)
SetJiaoYiGoods(nil,"ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ʶ�Ŀ","Glorious Vanity",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ս������","Militant Faith",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�п��Լ��","Brutal Restraint",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�����Ľ���","Lethal Pride",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","���ŵĿ���","Elegant Hubris",nil,nil)
SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������˹���","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�}��ʿ�ĳ��ʯ","Metadata/Items/Currency/CurrencyCrusadersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"���H�ߵĳ��ʯ","Metadata/Items/Currency/CurrencyRedeemersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"���C�ߵĳ��ʯ","Metadata/Items/Currency/CurrencyHuntersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"����܊�ĳ��ʯ","Metadata/Items/Currency/CurrencyWarlordsExaltedOrb",nil,nil,nil,1)
--
--SetJiaoYiGoods(nil,"��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEnkindlingOrb",nil,nil,nil,nil)--�cȼʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyInstillingOrb",nil,nil,nil,nil)--��עʯ
SetJiaoYiGoods(nil,"�ߠ��z�","Metadata/Items/MapFragments/VaalVaultKey")
SetJiaoYiGoods(nil,"���۵Ļ���ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵Ļ�ɫʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵���ʥ����","Metadata/Items/Currency/CurrencyHellscapeUpgradeModTier",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵ĳ��ʯ","Metadata/Items/Currency/CurrencyHellscapeAddModToRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵Ĺ���ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵�����ʯ","Metadata/Items/Currency/CurrencyHellscapeRerollSocketLinks",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�}��","Metadata/Items/Currency/CurrencyRerollDefences",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵��o��Ƭ","Metadata/Items/Currency/CurrencyHellscapeArmourQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵�ĥ��ʯ","Metadata/Items/Currency/CurrencyHellscapeWeaponQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵�ף��","Metadata/Items/Currency/CurrencyLabyrinthEnchantCorrupt",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���۵���Ԓʯ","Metadata/Items/Currency/CurrencyHellscapeUpgradeToUnique",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/Currency/CurrencyRitualSplinter")

--�����鱦����
-- SetJiaoYiGoods(nil,"���������鱦","Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium")
-- SetJiaoYiGoods(nil,"���������鱦","Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge")

SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"CompletingLabyrinthRewardsTwoEnchantmentUses",nil,nil)--���θ�ħ V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheMagnateFated2",nil,nil)--�����Ă����I��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheIgnomonFated",nil,nil)--ä�� V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheFeralLord5",nil,nil)--Ұ�F֮�� V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"UnbearableWhispers5",nil,nil)--��̶��Z V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ThePlaguemaw5",nil,nil)--�߲������� V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheUnbreathingQueen5",nil,nil)--��ϢŮ�� V
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareAncientConstructDropsAtzirisFoible",nil,nil)--����Ұ��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AsenathsMarkFated",nil,nil)--�z�ˬ�֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"GeofrisCrestFated",nil,nil)--�����z־
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"WindscreamFated",nil,nil)--���ɼ�[
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HyrrisBiteFated",nil,nil)--�ݐu֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingHatebeatWithBlackgleamAddsSpecificMod",nil,nil)--������
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareTunnelerDropsPledgeOfHandsMap",nil,nil)--�ն�����
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HeatshiverFated",nil,nil)--����֮ҕ
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheAmbitiousBandit3",nil,nil)--�I�\��Ұ�� III
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RollingSixSocketBodyArmourLinksAllSockets",nil,nil)--���\�B�Y
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AtzirisMirrorFated",nil,nil)--Ů���I��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",nil,nil)--��ȸ׃�P��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareUndyingArchivistDropsAstramentis",nil,nil)--�zʧ축��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"UniqueLightningGolemAppearsOutsideBubble",nil,nil)--����Ȼ����
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"MapExtraZana",nil,nil)--�ط��Ĵ�ʦ��Ҫ֧��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"MapExtraJun",nil,nil)--�ط��Ĵ�ʦ��Ҫ֧��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"The Mentor",nil,nil)--�����ߵĽK�c
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"The Prison Key",nil,nil)--�η�耳�
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"Nemesis of Greed",nil,nil)--؝���ďͳ�
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"The Flayed Man",nil,nil)--Ƥ�_��`
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"The Bowstring's Music",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"Battle Hardened",nil,nil)--Ӳ��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareSuturedAberrationDropsMaligarosVirtuosity",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingKaomWithKaomsSignAddsSpecificMod",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareUndyingIncineratorDropsSireOfShards",nil,nil)--����֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"MapTempestCorrupt",nil,nil)--�߶��ҷ�
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"IronHeartFated",nil,nil)--����ս

--ֵǮ�ĵ�ͼ
SetJiaoYiGoods(nil,"���a������ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentKarui")
SetJiaoYiGoods(nil,"���a�R����˹��ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentMaraketh")
SetJiaoYiGoods(nil,"���a����ۇ���ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentEternal")
SetJiaoYiGoods(nil,"���a�}�ڻ�ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentTemplar")
SetJiaoYiGoods(nil,"���a�ߠ���ӡ","Metadata/Items/MapFragments/CurrencyLegionFragmentVaal")


SetJiaoYiGoods(nil,"�����o��","Metadata/Items/Gems/SupportGemAdditionalQuality")
SetJiaoYiGoods(nil,"�����o��","Metadata/Items/Gems/SupportGemAdditionalXP")
SetJiaoYiGoods(nil,"�x���o��","Metadata/Items/Gems/SupportGemAdditionalLevel")
SetJiaoYiGoods(nil,"����ͨ뺵��","Metadata/Items/Ultimatum/ItemisedTrial")

SetJiaoYiGoods(nil,"��ӡ�ķ�ħ֮��","Metadata/Items/Currency/CurrencyItemisedCapturedMonster",nil,nil,nil,nil)

SetJiaoYiGoods(nil,nil,nil,nil,"Caer Blaidd, Wolfpack's Den")--"���������׵���Ѩ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vinktar Square")--"�S�����V��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Putrid Cloister")--"����ޒ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Coward's Trial")--"ų�ߵ�ԇ�"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerLow")--"���I֮��wͽ"	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerMid")--"���I֮�����"	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerHigh")--"���I֮����R"	
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerUber")--"���I֮����z"

SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Vigilance")--"�����Ľ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fulcrum")--"֧�c"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Iron Fortress")--"��F�ډ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Storm Secret")--"�L��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Chant")--"��ِ�Ƚz�ĸ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Tyrant")--"�ûʹ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Apep's Supremacy")--"���հԙ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Meadow")--"��̹���Ĳ�ԭ"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Mountain")--"��̹����ɽ�n"
SetJiaoYiGoods(nil,nil,nil,nil,"The Torrent's Reclamation")--"����֮�_��"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Valley")--"��ɯɯ�č{��"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Mountain")--"��ɯɯ��ɽ�n"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Meadow")--"��ɯɯ�Ĳ�ԭ"
SetJiaoYiGoods(nil,nil,nil,nil,"Death's Door")--"�������T"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Mountain")--"��̹����ɽ�n"
SetJiaoYiGoods(nil,nil,nil,nil,"The Torrent's Reclamation")--"����֮�_��"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Valley")--"��ɯɯ�č{��"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Meadow")--"��̹���Ĳ�ԭ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Storm Secret")--"�L��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Legacy")--"ų����z�a"
SetJiaoYiGoods(nil,nil,nil,nil,"Aul's Uprising")--"�W��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Ahkeli's Valley")--"������č{��"
SetJiaoYiGoods(nil,nil,nil,nil,"Ahkeli's Mountain")--"�������ɽ�n"
SetJiaoYiGoods(nil,nil,nil,nil,"Fated End")--"�K�Y"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Valley")--"��̹���č{��"
SetJiaoYiGoods(nil,nil,nil,nil,"Star of Wraeclast")--"�ߠ�����˹֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Ephemeral Bond")--"���ڂ�ȯ"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Mind")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Reefbane")--"�ĵ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Song of the Sirens")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Fate of the Vaal")--"�ߠ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Hidden Blade")--"�[��֮��",
SetJiaoYiGoods(nil,nil,nil,nil,"The Surging Thoughts")--"����֮˼��"
SetJiaoYiGoods(nil,nil,nil,nil,"Duskdawn")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Actum")--"Մ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Disintegrator")--"�������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Unshattered Will")--"������־"


SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHysteria1")--���F����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceInsanity1")--�e�y����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHorror1")--�O�־���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDelirium1")--�d������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceWings")--�������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssencePortal")--�r��֮�T������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceFootprints")--������Ч������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6")--���������ߪ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6Test")--���������ߪ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Leaguestones/EssenceLeaguestone")--������ʯ
SetJiaoYiGoods(nil,"����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetJiaoYiGoods(nil,"����֮��૾���","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetJiaoYiGoods(nil,"��ʹ֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetJiaoYiGoods(nil,"��ʹ֮��૾���","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetJiaoYiGoods(nil,"��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetJiaoYiGoods(nil,"��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetJiaoYiGoods(nil,"��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetJiaoYiGoods(nil,"��ʹ֮��Х����","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetJiaoYiGoods(nil,"��ʹ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetJiaoYiGoods(nil,"̰��֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetJiaoYiGoods(nil,"̰��֮��૾���","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetJiaoYiGoods(nil,"̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetJiaoYiGoods(nil,"̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetJiaoYiGoods(nil,"̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetJiaoYiGoods(nil,"̰��֮��Х����","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetJiaoYiGoods(nil,"̰��֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetJiaoYiGoods(nil,"����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetJiaoYiGoods(nil,"����֮��૾���","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetJiaoYiGoods(nil,"��ϧ֮��૾���","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetJiaoYiGoods(nil,"��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetJiaoYiGoods(nil,"��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetJiaoYiGoods(nil,"��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetJiaoYiGoods(nil,"��ϧ֮��Х����","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetJiaoYiGoods(nil,"��ϧ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetJiaoYiGoods(nil,"��ŭ֮��૾���","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetJiaoYiGoods(nil,"��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetJiaoYiGoods(nil,"��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetJiaoYiGoods(nil,"��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetJiaoYiGoods(nil,"��ŭ֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetJiaoYiGoods(nil,"��ŭ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetJiaoYiGoods(nil,"��ĥ֮��૾���","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetJiaoYiGoods(nil,"��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetJiaoYiGoods(nil,"��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetJiaoYiGoods(nil,"��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetJiaoYiGoods(nil,"��ĥ֮��Х����","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetJiaoYiGoods(nil,"��ĥ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetJiaoYiGoods(nil,"�־�֮��૾���","Metadata/Items/Currency/CurrencyEssenceFear1")
SetJiaoYiGoods(nil,"�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear2")
SetJiaoYiGoods(nil,"�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear3")
SetJiaoYiGoods(nil,"�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear4")
SetJiaoYiGoods(nil,"�־�֮��Х����","Metadata/Items/Currency/CurrencyEssenceFear5")
SetJiaoYiGoods(nil,"�־�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceFear6")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetJiaoYiGoods(nil,"��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage1")
SetJiaoYiGoods(nil,"��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage2")
SetJiaoYiGoods(nil,"��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage3")
SetJiaoYiGoods(nil,"��Ű֮��Х����","Metadata/Items/Currency/CurrencyEssenceRage4")
SetJiaoYiGoods(nil,"��Ű֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceRage5")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetJiaoYiGoods(nil,"�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetJiaoYiGoods(nil,"�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetJiaoYiGoods(nil,"�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetJiaoYiGoods(nil,"�ɻ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetJiaoYiGoods(nil,"�ɻ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetJiaoYiGoods(nil,"�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetJiaoYiGoods(nil,"�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetJiaoYiGoods(nil,"�尾֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetJiaoYiGoods(nil,"�尾֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetJiaoYiGoods(nil,"���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetJiaoYiGoods(nil,"���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetJiaoYiGoods(nil,"���֮��Х����","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetJiaoYiGoods(nil,"���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetJiaoYiGoods(nil,"�̶�֮��������","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetJiaoYiGoods(nil,"�̶�֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetJiaoYiGoods(nil,"�̶�֮��Х����","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetJiaoYiGoods(nil,"�̶�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetJiaoYiGoods(nil,"����֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetJiaoYiGoods(nil,"���֮��������","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetJiaoYiGoods(nil,"���֮��Х����","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetJiaoYiGoods(nil,"���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetJiaoYiGoods(nil,"�ɵ�֮��������","Metadata/Items/Currency/CurrencyEssenceDread1")
SetJiaoYiGoods(nil,"�ɵ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDread2")
SetJiaoYiGoods(nil,"�ɵ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDread3")
SetJiaoYiGoods(nil,"����֮��������","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetJiaoYiGoods(nil,"����֮��Х����","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetJiaoYiGoods(nil,"����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetJiaoYiGoods(nil,"���־���","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetJiaoYiGoods(nil,"�ɶ�֮��������","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetJiaoYiGoods(nil,"�ɶ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetJiaoYiGoods(nil,"�ɶ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceEnvy3")


-- SetJiaoYiGoods(nil,"����","Metadata/Items/Currency/CurrencySilverCoin",nil,nil,nil,nil)

--SetJiaoYiGoods(nil,"�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Դ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��׃�߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ٴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ܵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ĥ�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���|�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ұ倵Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ච�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ū�۔�Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ɔ_��Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Q����Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�֑֔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��̓��Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ܔ�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ǻ۔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���^�ߔ�Ƭ","Metadata/Items/MapFragments/CurrencyFragmentoftheHydra",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��������Ƭ","Metadata/Items/MapFragments/CurrencyFragmentoftheChimera",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ţ�^��Ƭ","Metadata/Items/MapFragments/CurrencyFragmentoftheMinotaur",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�P�˔�Ƭ","Metadata/Items/MapFragments/CurrencyFragmentofthePhoenix",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���젖֮�","Metadata/Items/MapFragments/CurrencyVolkuursKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�","Metadata/Items/MapFragments/CurrencyInyasKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�","Metadata/Items/MapFragments/CurrencyYrielsKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ϣ��֮�","Metadata/Items/MapFragments/CurrencyEbersKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���˵İ���","Metadata/Items/MapFragments/CurrencyMortalGrief",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���˵ğo֪","Metadata/Items/MapFragments/CurrencyMortalIgnorance",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���˵�ϣ��","Metadata/Items/MapFragments/CurrencyMortalHope",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���˵đ�ŭ","Metadata/Items/MapFragments/CurrencyMortalRage",nil,nil,nil,nil)

-- ̽��
SetJiaoYiGoods(nil,"̽�U���I","Metadata/Items/Expedition/ExpeditionLogbook")
SetJiaoYiGoods(nil,"ҩ��","Metadata/Items/Currency/CurrencyRefreshGambler")
SetJiaoYiGoods(nil,"����","Metadata/Items/Currency/CurrencyRefreshGambler")
SetJiaoYiGoods(nil,"�������","Metadata/Items/Currency/CurrencyRefreshBarter")
SetJiaoYiGoods(nil,"�Ͻ���","Metadata/Items/Currency/CurrencyRefreshDealer")
SetJiaoYiGoods(nil,"���ά��","Metadata/Items/Currency/CurrencyRefreshSaga")
SetJiaoYiGoods(nil,"�ͽ�����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_1")
SetJiaoYiGoods(nil,"��ͨ����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_2")
SetJiaoYiGoods(nil,"�߽�����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_3")
SetJiaoYiGoods(nil,"��ΰ����֮������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction1_4")
SetJiaoYiGoods(nil,"�ͽ׺ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_1")
SetJiaoYiGoods(nil,"��ͨ�ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_2")
SetJiaoYiGoods(nil,"�߽׺ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_3")
SetJiaoYiGoods(nil,"��ΰ�ڰ�Ѫ������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction2_4")
SetJiaoYiGoods(nil,"�ͽ���������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_1")
SetJiaoYiGoods(nil,"��ͨ��������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_2")
SetJiaoYiGoods(nil,"�߽���������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_3")
SetJiaoYiGoods(nil,"��ΰ��������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction3_4")
SetJiaoYiGoods(nil,"�ͽ��W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_1")
SetJiaoYiGoods(nil,"��ͨ�W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_2")
SetJiaoYiGoods(nil,"�߽��W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_3")
SetJiaoYiGoods(nil,"��ΰ�W������","Metadata/Items/Expedition/ExpeditionVendorCurrencyFaction4_4")

SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHysteria1")--���F����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceInsanity1")--�e�y����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceHorror1")--�O�־���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEssenceDelirium1")--�d������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceWings")--�������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssencePortal")--�r��֮�T������
SetJiaoYiGoods(nil,nil,"Metadata/Items/MicrotransactionItemEffects/MicrotransactionEssenceFootprints")--������Ч������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6")--���������ߪ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Hideout/HideoutTotemPole6Test")--���������ߪ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Leaguestones/EssenceLeaguestone")--������ʯ



SetJiaoYiGoods(nil,"������ͼ������","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�м���ͼ������","Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʦ��ͼ������","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�������ӡ","Metadata/Items/Currency/CurrencySealMapLow",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�м����ӡ","Metadata/Items/Currency/CurrencySealMapMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʦ���ӡ","Metadata/Items/Currency/CurrencySealMapHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ѽ�֮��","Metadata/Items/Currency/CurrencyRespecShapersOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(����)","Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��϶��Ƭ(�ڶ����)","Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Ğ������Q�Ѻ�ʯ","Metadata/Items/Currency/CurrencyChayulasPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������༃�Q�Ѻ�ʯ","Metadata/Items/Currency/CurrencyUulNetolsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���S���Q�Ѻ�ʯ","Metadata/Items/Currency/CurrencyEshsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ּ��Q�Ѻ�ʯ","Metadata/Items/Currency/CurrencyTulsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�������Q�Ѻ�ʯ","Metadata/Items/Currency/CurrencyXophsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Ğ�����ԣ�Ѻ�ʯ","Metadata/Items/Currency/CurrencyChayulasEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������฻ԣ�Ѻ�ʯ","Metadata/Items/Currency/CurrencyUulNetolsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���S��ԣ�Ѻ�ʯ","Metadata/Items/Currency/CurrencyEshsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ָ�ԣ�Ѻ�ʯ","Metadata/Items/Currency/CurrencyTulsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������ԣ�Ѻ�ʯ","Metadata/Items/Currency/CurrencyXophsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Ğ��������Ѻ�ʯ","Metadata/Items/Currency/CurrencyChayulasChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����������Ѻ�ʯ","Metadata/Items/Currency/CurrencyUulNetolsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���S�����Ѻ�ʯ","Metadata/Items/Currency/CurrencyEshsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ֳ����Ѻ�ʯ","Metadata/Items/Currency/CurrencyTulsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���������Ѻ�ʯ","Metadata/Items/Currency/CurrencyXophsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Ğ����Ѻ�ʯ","Metadata/Items/Currency/CurrencyChayulasstone")
SetJiaoYiGoods(nil,"��������Ѻ�ʯ","Metadata/Items/Currency/CurrencyUulNetolsstone")
SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/Currency/CurrencyTulsstone")
SetJiaoYiGoods(nil,"�����Ѻ�ʯ","Metadata/Items/MapFragments/CurrencyBreachFragmentFire")
SetJiaoYiGoods(nil,"���S�Ѻ�ʯ","Metadata/Items/MapFragments/CurrencyBreachFragmentLightning")

SetJiaoYiGoods(nil,"��϶��Ƭ(������)","Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueFire",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ֵ�ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueCold",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueLightning",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ڶ�����ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniquePhysical",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��������ף��","Metadata/Items/Currency/CurrencyBreachUpgradeUniqueChaos",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���㿨³��Ƭ","Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����������˹��Ƭ","Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����۹���Ƭ","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʥ����Ƭ","Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����߶���Ƭ","Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRemoveMod",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽׵��ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ƽ��ʯ=��ƽʯ","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeMapTier",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx������","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx�����A","Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D���փx���X��","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�}��ʿ�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareCrusader",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���H�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareRedeemer",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"׃�B֮�d����","Metadata/Items/Currency/CurrencyAmorphousDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�d����","Metadata/Items/Currency/CurrencyBlightedDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���a֮�d����","Metadata/Items/Currency/CurrencyTimelessDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�d����","Metadata/Items/Currency/CurrencyImperialDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʼ֮�d����","Metadata/Items/Currency/CurrencyPrimalDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�}��֮�d����","Metadata/Items/Currency/CurrencyDivinersDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�A��֮�d����","Metadata/Items/Currency/CurrencyPortentousDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ʯ��֮�d����","Metadata/Items/Currency/CurrencyFossilisedDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�w��֮�d����","Metadata/Items/Currency/CurrencySkitteringDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��Ƭ֮�d����","Metadata/Items/Currency/CurrencyFragmentedDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���Z֮�d����","Metadata/Items/Currency/CurrencyWhisperingDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ޝ�֮�d����","Metadata/Items/Currency/CurrencyObscuredDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�A��֮�d����","Metadata/Items/Currency/CurrencyForebodingDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�d����","Metadata/Items/Currency/CurrencyDecadentDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��Y֮�d����","Metadata/Items/Currency/CurrencyAbyssalDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Ʒ֮�d����","Metadata/Items/Currency/CurrencyJewellersDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�u�D֮�d����","Metadata/Items/Currency/CurrencyCartographersDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�o��֮�d����","Metadata/Items/Currency/CurrencyArmoursmithsDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�F��֮�d����","Metadata/Items/Currency/CurrencyBlacksmithsDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���g֮�d����","Metadata/Items/Currency/CurrencyThaumaturgesDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"׿Խ֮�d����","Metadata/Items/Currency/CurrencySingularDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����֮�d����","Metadata/Items/Currency/CurrencyFineDeliriumOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���C�ߵĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareHunter",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����܊�ĳ��ʯ","Metadata/Items/AtlasExiles/AddModToRareWarlord",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������֮��","Metadata/Items/AtlasExiles/ApplyInfluence",nil,nil,nil,nil)
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAfflictionOrbPerandus")--������֮�d����



--�򱦹һ�װ
SetJiaoYiGoods(nil,nil,nil,nil,"�{�۵Ęsҫ֮��","Lioneye's Remorse")

SetJiaoYiGoods(nil,"�������R","Metadata/Items/Belts/Belt4","ʼ�����","The Poised Prism","3",nil)
SetJiaoYiGoods(nil,"���m��֮�|","Metadata/Items/Belts/Belt4","��ָ","Kalandra's Touch","3",nil)
--SetJiaoYiGoods(nil,nil,nil,nil,"Sadima's Touch",nil,nil,nil,nil,nil,nil,"base_item_found_quantity_+%,8")--"�C���ߵ��o��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Perandus Blazon",nil,nil,nil,nil,nil,nil,"base_item_found_quantity_+%,7")--"������˹֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Remorse")--"ʨ�۵���ҫ����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Divination Distillate")--"��ҕ���A"
SetJiaoYiGoods(nil,nil,nil,nil,"Astramentis")--"����֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Advancing Fortress")--"��Խ����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tabula Rasa")--"�޾�֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Highwayman")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Rumi's Concoction")--"���׵��`ˎ"
SetJiaoYiGoods(nil,nil,nil,nil,"Iron Flask")--"��Fˎ��"

SetJiaoYiGoods(nil,nil,nil,nil,"The Scourge")--"�ĺ�"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Tremor Rod")--"�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Poet's Pen")--"�W��֮�P"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Shade of Solaris")--"��ҫ֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Shimmeron")--"�ͷ�΢��"
SetJiaoYiGoods(nil,nil,nil,nil,"Void Battery")--"����ħ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Oni-Goroshi")--"����������"
SetJiaoYiGoods(nil,nil,nil,nil,"Fate of the Vaal")--"�ߠ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Rippling Thoughts")--"�i��ڤ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"������"
SetJiaoYiGoods(nil,nil,nil,nil,"Cold Iron Point")--"���֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Paradoxica")--"ì�܌��Q"
SetJiaoYiGoods(nil,nil,nil,nil,"The Rippling Thoughts")--"�i��ڤ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"������"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Midnight Bargain")--"ڤ�s"
--SetJiaoYiGoods(nil,nil,nil,nil,"Honourhome")--"˽�j�Ĺ��x"
SetJiaoYiGoods(nil,nil,nil,nil,"Prism Guardian")--"Ԫ�صı��o"
SetJiaoYiGoods(nil,nil,nil,nil,"Beltimber Blade")--"���h����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Grelwood Shank")--"�ֵ²���"
SetJiaoYiGoods(nil,nil,nil,nil,"Cospri's Malice")--"��˹�����Թ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Soul Taker")--"�_�Ÿ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Nebuloch")--"�y�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Nebulis")--"�y�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Doryani's Catalyst")--"�����Ļû�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Arakaali's Fang")--"��������֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Darkscorn")--"ҹ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Vulconus")--"ף���ұ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Crimson Storm")--"�p�t�L��"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Nurture")--"�����Đۓ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Hopeshredder")--"�Ɯ�֮ϣ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Slivertongue")--"����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Martyr of Innocence")--"��ʿ֮�Q"
SetJiaoYiGoods(nil,nil,nil,nil,"Starforge")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidforge")--"��̓"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Disfavour")--"��Ɲ�������"
SetJiaoYiGoods(nil,nil,nil,nil,"Kingmaker")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Marohi Erqi	")--"����ľ��`֮�N"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Tidebreaker")--"������"
SetJiaoYiGoods(nil,nil,nil,nil,"Pledge of Hands")--"�ļs"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Grey Spire")--"���g�n��"
SetJiaoYiGoods(nil,nil,nil,nil,"Rigwald's Quills")--"���֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Maloney's Mechanism")--"�R����ęC�P"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Whakatutuki o Matua")--"�B��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Light of Lunaris")--"��Ӱ֮ҫ"
SetJiaoYiGoods(nil,nil,nil,nil,"Apep's Supremacy")--"���հԙ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Unyielding Flame")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fracturing Spinner")--"�є���z"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidfletcher")--"̓�ۼ�ʸ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Inception")--"������ʼԴ"
SetJiaoYiGoods(nil,nil,nil,nil,"Aegis Aurora")--"��â�}��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Hrimsorrow")--����֮��
-- SetJiaoYiGoods(nil,nil,nil,nil,"Incandescent Heart")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Acuity")--"������Ľ�˼"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Pincers")--"����ɺ���Q"
SetJiaoYiGoods(nil,nil,nil,nil,"Maligaro's Virtuosity")--"�R�׸��}��ѪȾ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Gentle Touch")--"��ِ�Ƚz�İ���֮�Z"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Grip of the Council")--"�h��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Pounce")--"�M���_�hצ"
SetJiaoYiGoods(nil,nil,nil,nil,"Breathstealer")--"͵Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Nest")--"˹����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Winds")--"˹����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Command of the Pit")--"霺�̖��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Null and Void")--"̓��"
SetJiaoYiGoods(nil,nil,nil,nil,"Offering to the Serpent")--"��Ƥ�I��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shaper's Touch")--"����֮�|"
SetJiaoYiGoods(nil,nil,nil,nil,"Hands of the High Templar")--"�}������"
SetJiaoYiGoods(nil,nil,nil,nil,"Viridi's Veil")--"�S��ϵı���"
SetJiaoYiGoods(nil,nil,nil,nil,"Windshriek")--"�L�["
SetJiaoYiGoods(nil,nil,nil,nil,"The Tempest's Binding")--"�L���ľ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Cadigan's Crown")--"���ϸ��ʹ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Voll's Vision")--"�������hҊ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anticipation")--"����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Algor Mortis")--"�����꣮Ī��˹"
SetJiaoYiGoods(nil,nil,nil,nil,"The Covenant")--"Ѫ��"

SetJiaoYiGoods(nil,nil,nil,nil,"Slavedriver's Hand")--"ū��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Weave")--"�ƶ��zҹ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Storm's Gift")--"�L��֮ٛ"
SetJiaoYiGoods(nil,nil,nil,nil,"Machina Mitts")--"ԎӋħ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Tracks")--"����ɺ֮�E"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Trail")--"��tۙ�E"
SetJiaoYiGoods(nil,nil,nil,nil,"Seven-League Step")--"����֮�E"
SetJiaoYiGoods(nil,nil,nil,nil,"Garukhan's Flight")--"���庲֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Shadows and Dust")--"ɳ�m֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Chase")--"�M���_�Cѥ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Inya's Epiphany")--"���ŵ��D��"
SetJiaoYiGoods(nil,nil,nil,nil,"Skyforth")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Talons")--"˹������צ"
SetJiaoYiGoods(nil,nil,nil,nil,"Omeyocan")--"�W�T�Ƹ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Spinnerets")--"�ƶ��z��ѥ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Stampede")--"����֮ѥ"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidwalker")--"̓������"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Carapace")--"����ɺӲ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Brass Dome")--"���~����"
SetJiaoYiGoods(nil,nil,nil,nil,"Kaom's Heart")--"��ķ�ĉ�־"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Yriel's Fostering")--"���������"
SetJiaoYiGoods(nil,nil,nil,nil,"Hyrri's Ire")--"����đ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Perfect Form")--"�����ˑB"
SetJiaoYiGoods(nil,nil,nil,nil,"Perfidy")--"�������x"
SetJiaoYiGoods(nil,nil,nil,nil,"Garb of the Ephemeral")--"�o���Y��"

SetJiaoYiGoods(nil,nil,nil,nil,"Skin of the Lords")--"����֮�w"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Belly of the Beast")--"�F��"
SetJiaoYiGoods(nil,nil,nil,nil,"Daresso's Defiance")--"���������l��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Rotting Legion")--"����܊�F"

SetJiaoYiGoods(nil,nil,nil,nil,"Skin of the Lords")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Tawm'r Isley")--"���׃���˹��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Garb of the Ephemeral")--"�o���Y��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Wrappings")--"Ѧ�ʵ��o���L��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Shroud")--"�ƶ��z�|��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Queen's Hunger")--"Ů���Ŀ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Gruthkul's Pelt")--"����˹����Ƥ"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Fur")--"�M���_����"
SetJiaoYiGoods(nil,nil,nil,nil,"CLight of Lunaris")--��Ӱ֮ҫ
SetJiaoYiGoods(nil,nil,nil,nil,"Crystal Vault")--"ˮ������"
SetJiaoYiGoods(nil,nil,nil,nil,"Dialla's Malefaction")--�_��
SetJiaoYiGoods(nil,nil,nil,nil,"Sporeguard")--"�������l"
SetJiaoYiGoods(nil,nil,nil,nil,"Maw of Conquest")--���B�^
-- SetJiaoYiGoods(nil,nil,nil,nil,"Tinkerskin")--"����֮�w"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Soul Mantle")--"���`֮�s"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Ivory Tower")--"������"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Defiance")--"�l��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Eternity Shroud")--"���a�Ʋ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Inpulsa's Broken Heart")--"ӡ���_������"
SetJiaoYiGoods(nil,nil,nil,nil,"Shroud of the Lightless")--"�ް��ČƲ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Splendour")--"��Ɲ���}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shadowstitch")--"�pӰ"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Flock")--"˹����֮ͽ"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Cryophile")--"�Ắ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Obscurantis")--"���VԎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Devouring Diadem")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Ceraunophile")--"���׶���"
SetJiaoYiGoods(nil,nil,nil,nil,"Hale Negator")--"�����q�g"
SetJiaoYiGoods(nil,nil,nil,nil,"Indigon")--"��ӡ֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Chitin")--"����ɺ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mask of the Stitched Demon")--"���p֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Tyrant")--"�ûʹ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Brine Crown")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Inward Eye")--"����֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Memory Vault")--"�ؑ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Bite")--"�M���_�A�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vertex")--"�i��"
SetJiaoYiGoods(nil,nil,nil,nil,"Thunderfist")--�Z����
SetJiaoYiGoods(nil,nil,nil,nil,"Abhorrent Interrogation")--"��挏Ӎ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Surrender")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Doryani's Delusion")--"�����Ļ���"
SetJiaoYiGoods(nil,"��Ű������","Metadata/Items/Armours/BodyArmours/BodyDexInt16","�_�堖�ʸ���b",nil,"3",nil)
-- SetJiaoYiGoods(nil,nil,nil,nil,"Ylfeban's Trickery")--"��ܽ���ԎӋ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Vision")--"�{�۵�ҕ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Alpha's Howl")--"�O��֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Abyssus")--"��Y֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"�j��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Mark")--"��ِ�Ƚz��Ѹ��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Devouring Diadem")--"����������"
SetJiaoYiGoods(nil,nil,nil,nil,"Memory Vault")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Windshriek")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Cadigan's Crown")--"���ϸ��ʹ�"


SetJiaoYiGoods(nil,nil,nil,nil,"Conqueror's Efficiency")--"�����ߵ�Ѹ��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Primordial Chain")--"�����b�O"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Heart")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Blood")--"����֮Ѫ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Halcyon")--"̫ƽ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Pandemonius")--"Ⱥħ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fury Valve")--"��ŭ�]�i"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Ascetic")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Presence of Chayula")--"�Ğ���֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Yoke of Suffering")--"ĥ�y֮ܗ"
SetJiaoYiGoods(nil,nil,nil,nil,"Impresence")--"���ڈ��C��"
SetJiaoYiGoods(nil,nil,nil,nil,"Aul's Uprising")--"�W��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Solstice Vigil")--"��ҹ֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Badge of the Brotherhood")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Voll's Devotion")--"���������\֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Eye of Innocence")--"�o��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Eyes of the Greatwolf")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Heart")--"�ɷ���֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Tavukai")--"���`֮ŭ"
SetJiaoYiGoods(nil,nil,nil,nil,"Karui Charge")--"��������"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Queen of the Forest")--"ɭ��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Jinxed Juju")--"�����o��"
SetJiaoYiGoods(nil,nil,nil,nil,"Arborix")--"������˹"
SetJiaoYiGoods(nil,nil,nil,nil,"Bisco's Collar")--"��˹�ܵ��Ȧ"
SetJiaoYiGoods(nil,nil,nil,nil,"Astramentis")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Sunblast")--����
SetJiaoYiGoods(nil,nil,nil,nil,"Aul's Uprising")--"�W��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Solstice Vigil")--"��ҹ֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Foible")--"��Ɲ���}��"

SetJiaoYiGoods(nil,nil,nil,nil,"Calamitous Visions")--"���K��ҕ"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidheart")--"̓�����`"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Icefang Orbit")--"���L܉�E"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Guilt")--"����֮�h"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Winterweave")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Ventor's Gamble")--"ـ��Ҷ�"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Valako's Sign")--"������֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Regret")--"�z��֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Astral Projector")--"�ǿ�֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Snakepit")--"�߳�"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Fear")--"�֑�֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Anguish")--"�尾֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Warrior's Legacy")--"��ʿ�z��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Taming")--"Ԫ��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Revelation")--"Ѧ�ʵĆ�ʾ֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Nostalgia")--"���f֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Berek's Respite")--"ؐ�׿˵Ļ��c��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Call of the Brotherhood")--"��־��"
SetJiaoYiGoods(nil,nil,nil,nil,"Angler's Plait")--"�O��֮�p"
SetJiaoYiGoods(nil,nil,nil,nil,"Vivinsect")--"������ħ"
SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Elder")--"����֮ӡ"
SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Shaper")--"����֮ӡ"


SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Chains")--"ų����i�"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Legacy")--"ų����z�a"
SetJiaoYiGoods(nil,nil,nil,nil,"Headhunter")--"�C��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cyclopean Coil")--"����֮�h"
SetJiaoYiGoods(nil,nil,nil,nil,"Hyperboreus")--"�O������"
SetJiaoYiGoods(nil,nil,nil,nil,"Mother's Embrace")--"ĸ�H�ē�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Flow Untethered")--"������Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Ryslatha's Coil")--"��˹���_֮�p"
SetJiaoYiGoods(nil,nil,nil,nil,"The Nomad")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Bear's Girdle")--"��֮��"


SetJiaoYiGoods(nil,nil,nil,nil,"One With Nothing")--"һ�o����"
SetJiaoYiGoods(nil,nil,nil,nil,"Kitava's Teachings")--"�������Ľ̌W"
SetJiaoYiGoods(nil,nil,nil,nil,"Inspired Learning")--"��֪�ğ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Voices")--"ɤ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Megalomaniac")--"����֢"
SetJiaoYiGoods(nil,nil,nil,nil,"Efficient Training")--"���Ӗ��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Fragility")--"̓��"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Might")--"�����İԙ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Mastery")--"�����ļ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Cunning")--"������ԎӋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Wit")--"�������ǻ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Might")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"Might of the Meek")--"���ӿɽ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Flesh")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Thread of Hope")--"ϣ��֮�L"
SetJiaoYiGoods(nil,nil,nil,nil,"Intuitive Leap")--"ֱ�X֮�S"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Fall")--"�{�۵��E��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Nightmare")--"��Ӱ���|"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Spirit")--"����֮�`"
SetJiaoYiGoods(nil,nil,nil,nil,"Unnatural Instinct")--"���"
SetJiaoYiGoods(nil,nil,nil,nil,"Mantra of Flames")--
SetJiaoYiGoods(nil,nil,nil,nil,"Healthy Mind")--
SetJiaoYiGoods(nil,nil,nil,nil,"Quickening Covenant")--
SetJiaoYiGoods(nil,nil,nil,nil,"Careful Planning")--
SetJiaoYiGoods(nil,nil,nil,nil,"Clear Mind")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Energy From Within")--"���ܷ��o"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelDex",nil,"Grand Spectrum")--"�޹��V" 
SetJiaoYiGoods("�鱦","�۹�֮ʯ",nil,"����鱦","Grand Spectrum",3,1)--�޹�
SetJiaoYiGoods("�鱦","�۹�֮ʯ",nil,"�����鱦","Grand Spectrum",3,1)--�޹�
SetJiaoYiGoods("�鱦","�۹�֮ʯ",nil,"�����鱦","Grand Spectrum",3,1)--�޹�
SetJiaoYiGoods(nil,nil,nil,nil,"Unending Hunger")--"�o�M����"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Harmony")--"������C"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Eminence")--"����׿Խ"
SetJiaoYiGoods(nil,nil,nil,nil,"Fortress Covenant")--"�Ա��ļs"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Dream")--"��Ӱ����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Nightmare")--"��Ӱ���|"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anima Stone")--"�ۻ�ʯ"
SetJiaoYiGoods(nil,nil,nil,nil,"Watcher's Eye")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Conqueror's Potency")--"�����ߵ����� "
SetJiaoYiGoods(nil,nil,nil,nil,"Glorious Vanity")--"�x�͵�̓�s"
SetJiaoYiGoods(nil,nil,nil,nil,"Lethal Pride")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Brutal Restraint")--"����ļo��"
SetJiaoYiGoods(nil,nil,nil,nil,"Militant Faith")--"���M������"
SetJiaoYiGoods(nil,nil,nil,nil,"Elegant Hubris")--"���ŵĸ߰�"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Foible")--"������ʥ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Healthy Mind")--"�`�w�D�Q"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Rain of Splinters")--"�����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Hazardous Research")--"Σ�C�W"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Combat Focus")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Frozen Trail")--"�E��"
--SetJiaoYiGoods(nil,nil,nil,nil,"Heartbreaker")--"������"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Divide and Conquer")--"���v֮ŭ"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Flesh")--"ұ�֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Spirit")--"ұ�֮�`"
SetJiaoYiGoods(nil,nil,nil,nil,"Tempered Mind")--"ұ�֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Glimpse of Chaos")--"����һƳ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Hidden Blade")--"�[��֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Supreme Truth")--"�o������"
--SetJiaoYiGoods(nil,nil,nil,nil,"Victario's Charity")--"�S����W��ؕ�I"
SetJiaoYiGoods(nil,nil,nil,nil,"Mahuxotl's Machination")--"�����_�����\"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Kikazaru")--"�����_��"
SetJiaoYiGoods(nil,nil,nil,nil,"Temptation Step")--"�T�󲽷�"
SetJiaoYiGoods(nil,nil,nil,nil,"Cane of Kulemak")--"���t�R�˵��`��"
SetJiaoYiGoods(nil,nil,nil,nil,"Ulaman's Gaze")--"��������а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Tecrod's Gaze")--"�ؿ��_�µ�а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Kurgal's Gaze")--"�¸��а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Amanamu's Gaze")--"��ķ��ķ��а��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Rainbowstride")--"��Ļ"
SetJiaoYiGoods(nil,nil,nil,nil,"Starlight Chalice")--"�ǹ��}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Olroth's Resolve")--"�W���_˹�ěQ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Gravebind")--"��Ĺ���`"
SetJiaoYiGoods(nil,nil,nil,nil,"Mageblood")--"ħѪ"
SetJiaoYiGoods(nil,nil,nil,nil,"Ralakesh's Impatience")--�����w�S�ļ���
SetJiaoYiGoods(nil,nil,nil,nil,"Stranglegasp")--"��֮Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Squire")--"�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Uul-Netol's Vow")--"�������֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Dead Reckoning")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Fleshcrafter")--"���w����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Gull")--����B�^
SetJiaoYiGoods(nil,nil,nil,nil,"Anatomical Knowledge")--"��֪��Ҋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Shadows and Dust")--"ɳ�m֮Ӱ"
SetJiaoYiGoods(nil,nil,nil,nil,"Doryani's Prototype")--"�����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Stasis Prison")--"�oֹ�λ\"
SetJiaoYiGoods(nil,nil,nil,nil,"The Interrogation")--"����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Carcass Jack")--"����֮�w"
SetJiaoYiGoods(nil,nil,nil,nil,"Survival Secrets")--"�����ؼ�"
SetJiaoYiGoods(nil,"ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4","�������E","Goldwyrm","3",nil)
SetJiaoYiGoods(nil,"�ظ�����","Metadata/Items/Belts/Belt4","��˹���M��","Bisco's Leash","3",nil)
--SetJiaoYiGoods(nil,"�ظ�����","Metadata/Items/Belts/Belt4","��ͽ����","Belt of the Deceiver","3",nil)
SetJiaoYiGoods(nil,"Ǳ��֮��","Metadata/Items/Rings/Ring15","����","The Pariah","3",nil)
SetJiaoYiGoods(nil,nil,nil,nil,"Aegis Aurora")--"��â�}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Apparitions")--"ӳ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Natural Affinity")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Siege")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Child of Violence")--"����֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Front Line")--"ǰ�еľ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Split Personality")--"�˸����"


--SetJiaoYiGoods(nil,nil,nil,nil,"Blood of the Karui")--"����֮Ѫ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Last Breath")--"�ɷ����ĽKϢ"
SetJiaoYiGoods(nil,nil,nil,nil,"Dying Sun")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Taste of Hate")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Vessel of Vinktar")--"�S����Ѫ��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Sin's Rebirth")--"�������"
SetJiaoYiGoods(nil,nil,nil,nil,"Bottled Faith")--"ƿ������"
SetJiaoYiGoods(nil,nil,nil,nil,"Cinderswallow Urn")--"�ɠa�Y"
-- SetJiaoYiGoods(nil,nil,nil,nil,"The Wise Oak")--"�ܙ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Cinderswallow Urn")--"�ɠa�Y"
SetJiaoYiGoods(nil,nil,nil,nil,"Elixir of the Unbroken Circle")--"���ƭh֮�`ˎ"
SetJiaoYiGoods(nil,nil,nil,nil,"Vorana's Preparation")--"�����ȵ��j�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Iron Mass")--"�F�K"
SetJiaoYiGoods(nil,nil,nil,nil,"Vorana's March")--"�����ȵ�܊�"
SetJiaoYiGoods(nil,nil,nil,nil,"Arborix")--"������˹"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Maloney's Mechanism")--"�R����ęC�P"
SetJiaoYiGoods(nil,nil,nil,nil,"Font of Thunder")--"�����}��"
SetJiaoYiGoods(nil,nil,nil,nil,"Blackflame")--"����"

SetJiaoYiGoods(nil,nil,nil,nil,"Panquetzaliztli")--"����֮�N"
SetJiaoYiGoods(nil,nil,nil,nil,"The Dancing Duo")--"�p����"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Rule")--"�������ͳ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Enmity Divine")--"�����}�Z"
SetJiaoYiGoods(nil,nil,nil,nil,"Witchhunter's Judgment")--"�C���ߵČ���"
SetJiaoYiGoods(nil,nil,nil,nil,"The Great Leader of the North")--"�����Ă����I��"
SetJiaoYiGoods(nil,nil,nil,nil,"Choir of the Storm")--"���L֮�Z"
SetJiaoYiGoods(nil,nil,nil,nil,"Ryslatha's Coil")--"��˹���_֮�p"
SetJiaoYiGoods(nil,nil,nil,nil,"Expedition's End")--"�h��֮�M"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"�j��֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Ascent From Flesh")--"Ѫ�|�N�A"
SetJiaoYiGoods(nil,nil,nil,nil,"Hateforge")--"Թ�����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Pure Talent")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"Alpha's Howl")--"�O��֮��"
SetJiaoYiGoods(nil,"�ظ�����","Metadata/Items/Belts/Belt4","ħѪ","Mageblood","3",nil)
SetJiaoYiGoods(nil,"Ȩ��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex13","�����","The Squire","3",nil)
SetJiaoYiGoods(nil,"Ϧĺ�����","Metadata/Items/Amulets/Amulet12","�ڶ����֮��","Uul-Netol's Vow","3",nil)
SetJiaoYiGoods(nil,nil,nil,nil,"Expedition's End")--"�h��֮�M"
SetJiaoYiGoods(nil,nil,nil,nil,"The Admiral")--"�ό�"
SetJiaoYiGoods(nil,nil,nil,nil,"Corpsewalker")--"�Ќ�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"�j��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Fated End")--"���\�K�Y"
SetJiaoYiGoods(nil,nil,nil,nil,"Shattershard")--"����֮м"
SetJiaoYiGoods(nil,nil,nil,nil,"Font of Thunder")--"�����}��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Hidden Blade")--"�[��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Actum")--"Մ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Iron Mass")--"�F�K"
SetJiaoYiGoods(nil,nil,nil,nil,"Apex Mode")--"�p��ģʽ"
SetJiaoYiGoods(nil,nil,nil,nil,"Nadir Mode")--"��Yģʽ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fulcrum")--"֧�c"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Rule")--"��Ɲ��Ľy��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cane of Kulemak")--"���t�R�˵��`��"
SetJiaoYiGoods(nil,nil,nil,nil,"Glimpse of Chaos")--"����һƳ"
SetJiaoYiGoods(nil,nil,nil,nil,"Hateforge")--"Թ�����"
--SetJiaoYiGoods(nil,nil,nil,nil,"Ungil's Harmony")--�������ĺ��C
SetJiaoYiGoods(nil,nil,nil,nil,"Mahuxotl's Machination")--"�����_�����\"
SetJiaoYiGoods(nil,nil,nil,nil,"Relic of the Pact")--"�ŵ�ڤ�s"
SetJiaoYiGoods(nil,nil,nil,nil,"Steelworm")--"�FĻ�x"
SetJiaoYiGoods(nil,nil,nil,nil,"Temptation Step")--"�T�󲽷�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Scales of Justice")--"���x���"
SetJiaoYiGoods(nil,nil,nil,nil,"Yaomac's Accord")--"���R��֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Ulaman's Gaze")--"��������а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Tecrod's Gaze")--"�ؿ��_�µ�а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Kurgal's Gaze")--"�¸��а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Amanamu's Gaze")--"��ķ��ķ��а��"
SetJiaoYiGoods(nil,nil,nil,nil,"Triumvirate Authority")--"���w����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Squire")--"�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Mageblood")--"ħѪ"
SetJiaoYiGoods(nil,nil,nil,nil,"Gravebind")--"��Ĺ���`"
SetJiaoYiGoods(nil,nil,nil,nil,"Stasis Prison")--"�oֹ�λ\"
SetJiaoYiGoods(nil,nil,nil,nil,"Stranglegasp")--"��֮Ϣ"
SetJiaoYiGoods(nil,nil,nil,nil,"Uul-Netol's Vow")--"�������֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Dyadian Dawn")--"�����ϰ��ĳ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Death Rush")--"���ߺ�"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Skirmish")--"С����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Hrimnor's Resolve")--"��ķ�Z�ĺ���"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Alberon's Warpath")--"����ؐ¡����;"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Quickening Covenant")--"�ͮd�ļs"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Anatomical Knowledge")--"��֪��Ҋ"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Remorse")--"ʨ�۵���ҫ֮��"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Snakebite")--"����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Cherrubim's Maleficence")--"Ѧ���e�Đ�����"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Victario's Influence")--"�S����W֮�^�"
SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyFractureRareShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyFractureRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���}֮��","Metadata/Items/DivinationCards/DivinationCardDivineBeauty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��؈","Metadata/Items/DivinationCards/DivinationCardTheInsaneCat",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�Y��Y��","Metadata/Items/DivinationCards/DivinationCardTheWeddingGift",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�m��ӛ��","Metadata/Items/DivinationCards/DivinationCardADustyMemory",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,nil,nil,nil,"Nimis")--"����˹"
SetJiaoYiGoods(nil,nil,nil,nil,"Dyadian Dawn")--"�����ϰ��ĳ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Mark of Submission")--"����֮ӛ"


SetJiaoYiGoods(nil,nil,nil,nil,"Ashes of the Stars")--"�ǉm"
SetJiaoYiGoods(nil,nil,nil,nil,"Black Zenith")--"��ژO�"
SetJiaoYiGoods(nil,nil,nil,nil,"Ceaseless Feast")--"�o�Mʢ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Crystallised Omniscience")--"����ȫ֪"
SetJiaoYiGoods(nil,nil,nil,nil,"Dawnbreaker")--"�ƕ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Inextricable Fate")--"�o����Ó֮��"
SetJiaoYiGoods(nil,nil,nil,nil,"Polaric Devastation")--"�O�ؚ���"
SetJiaoYiGoods(nil,nil,nil,nil,"Sudden Dawn")--"�����E��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Annihilating Light")--"����׹�"
SetJiaoYiGoods(nil,nil,nil,nil,"The Gluttonous Tide")--"�����˳�"
SetJiaoYiGoods(nil,nil,nil,nil,"Dissolution of the Flesh")--"Ѫ���ܽ�"
SetJiaoYiGoods(nil,nil,nil,nil,"Melding of the Flesh")--"Ѫ���ں�"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Divine Inferno")--"���}���z"
SetJiaoYiGoods(nil,nil,nil,nil,"Forbidden Flame")--"��������"
SetJiaoYiGoods(nil,nil,nil,nil,"Forbidden Flesh")--"����Ѫ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Redblade Banner")--"�t�����"
SetJiaoYiGoods(nil,nil,nil,nil,"Galesight")--"�Lҕ"
-- SetJiaoYiGoods(nil,nil,nil,nil,"Soulwrest")--"�TӰ"

SetJiaoYiGoods(nil,"ԭʼ�Y�����`֮��","Metadata/Items/Currency/HarvestSeedBlue",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���}�Y�����`֮��","Metadata/Items/Currency/HarvestSeedBoss",nil,nil,nil,1)
SetJiaoYiGoods(nil,"Ұ�ԽY�����`֮��","Metadata/Items/Currency/HarvestSeedRed",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�`�F�Y�����`֮��","Metadata/Items/Currency/HarvestSeedGreen",nil,nil,nil,nil)

SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/ClassicVaultKey")--�ŵ��z�
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/340VaultKey")--�����z�
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/VaalVaultKey")--�ߠ��z�
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/RitualFragment")--��Ѫ����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyRitualStone")--���鷨��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")--׿Խ�ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")--�����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden")--ȫ��ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")--�ߠ��ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium")--�d���ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced")--�����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted")--����ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")--�����ɲ���
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")--̽�U�҂ɲ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyExtractOil")--���ʹ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchRerollRare")--���ܻ���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchAddModToRare")--���ܳ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchRemoveMod")--���ܟoЧʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/CurrencySirusFragment1")--�W��Ɲ���̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment2")--�͂��̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment3")--�D����˹�̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragment4")--�S�_���၆�̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencySirusFragmentsComplete")--�������ֿ̼y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber1")--���A���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber2")--���A���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber3")--�ꂥ���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchEmber4")--׿Խ���ܻҠa
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor1")--���A�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor2")--���A�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor3")--�ꂥ�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyEldritchIchor4")--׿Խ�����`Һ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyConflictOrb")--�nͻ����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemiseSextantModifier")--�{��T���_�P
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyItemisedSextantModifier")--���ܵ��_�P


-- SetJiaoYiGoods("HeistBlueprint",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.useLv>=68 end)--����ʹ�õȼ����ڵ���68���{�D����
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintDungeon",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D������� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintReliquary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D��չ�[�� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintLibrary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D�������^�� enName:
-- SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--�{�D���ص� enName:

-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRemoveModShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽׵��ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ƽ��ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollMapTypeShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMapTierShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������Ƭ","Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ��ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollUniqueShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyRerollRareShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ��Ƭ","Metadata/Items/Currency/CurrencyAddModToRareShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��Ƭ","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͳ��ħƿ","Metadata/Items/Currency/CurrencyIncursionVialTrap",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ٻ�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialHealing",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialPoison",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ǽ�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialLightning",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialFire",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħƿ","Metadata/Items/Currency/CurrencyIncursionVialMinion",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossFlask",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Խħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossJewel",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�׼�ħƿ","Metadata/Items/Currency/CurrencyIncursionVialBossAmulet",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingFire",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCold",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLightning",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingPhysical",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���仯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingChaos",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLife",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingDefences",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʴ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingElemental",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��̫��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"͸�⻯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMana",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSpeed",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�󸿻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ħ����ʯ","Metadata/Items/Currency/CurrencyDelveCraftingEnchant",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ǻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSockets",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���滯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��Ѫ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�οջ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAbyss",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��̻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingRandom",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ�໯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveSocketableCurrencyUpgrade4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ���ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ�ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveSocketableCurrencyReroll4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ��������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/Delve/DelveStackableSocketableCurrencyUpgrade4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ԭʼ���ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ�ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܻ��ҹ�����","Metadata/Items/Delve/DelveStackableSocketableCurrencyReroll4",nil,nil,nil,nil)


SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion1")--�}���x���n�g���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion2")--�}���x���A�����y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion3")--�}���x��僽���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion4")--�}���x��չ����y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger1")--�}���x���n�g���I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger2")--�}���x���A�����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger3")--�}���x��僽����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger4")--�}���x��չ�����I
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight3")--�}���x��僽����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight4")--�}���x��չ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite3")--�}���x��僽�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite4")--�}���x��չ������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach1")--�}���x���n�g�Ѻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach2")--�}���x���A���Ѻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach3")--�}���x��僽��Ѻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach4")--�}���x��չ���Ѻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps1")--�}���x���n�g�u�D
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps2")--�}���x���A���u�D
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps3")--�}���x��僽��u�D
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps4")--�}���x��չ���u�D
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques1")--�}���x���n�g�}��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques2")--�}���x���A���}��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques3")--�}���x��僽��}��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques4")--�}���x��չ���}��
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts1")--�}���x���n�g�F�C
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts2")--�}���x���A���F�C
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts3")--�}���x��僽�F�C
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4")--�}���x��չ��F�C
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares3")--�}���x��僽�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares4")--�}���x��չ������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares3")--�}���x��僽�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares4")--�}���x��չ������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards1")--�}���x���n�g���\
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards2")--�}���x���A�����\
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards3")--�}���x��僽����\
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards4")--�}���x��չ�����\
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment1")--�}���x���n�g��ʹ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment2")--�}���x���A����ʹ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment3")--�}���x��僽��ʹ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment4")--�}���x��չ���ʹ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox1")--�}���x���n�g����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox2")--�}���x���A������
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox3")--�}���x��僽����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox4")--�}���x��չ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--�}���x���n�g���m��˹
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--�}���x���A�����m��˹
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--�}���x��僽����m��˹
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--�}���x��չ�����m��˹
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph1")--�}���x���n�g�ħ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph2")--�}���x���A���ħ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph3")--�}���x��僽��ħ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph4")--�}���x��չ���ħ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss1")--�}���x���n�g��Y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss2")--�}���x���A����Y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss3")--�}���x��僽���Y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss4")--�}���x��չ����Y
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--�}���x��僽�̽�U
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--�}���x��僽�̽�U
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--�}���x��僽�̽�U
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--�}���x��僽�̽�U

--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingDefences")--���ܻ�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--���g��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingElemental")--���໯ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--��û�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--���X��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingMana")--��͸��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--���ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�o覻�ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--��ħ��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--���}��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--肽�ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--��ħ��ʯ
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets")--��ʯ	

SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/MushruneCorrupt")--�@Ⱦ��ƿ
-- SetJiaoYiGoods(nil,"�峺ʥ��","Metadata/Items/Currency/Mushrune1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"īɫʥ��","Metadata/Items/Currency/Mushrune2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ��ʥ��","Metadata/Items/Currency/Mushrune5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫʥ��","Metadata/Items/Currency/Mushrune7",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"糺�ʥ��","Metadata/Items/Currency/Mushrune8",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune9",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune10",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune11",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ɫʥ��","Metadata/Items/Currency/Mushrune12",nil,nil,nil,nil)


SetJiaoYiGoods(nil,"�����ݑ�","Metadata/Items/DivinationCards/DivinationCardBrokenTruce",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ֶ���","Metadata/Items/DivinationCards/DivinationCardTheShieldbearer",nil,nil,nil,1)--���˿�
SetJiaoYiGoods(nil,"�����˵Ĳ�Ь","Metadata/Items/DivinationCards/DivinationCardTheShepherdsSandals",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ȼ����","Metadata/Items/DivinationCards/DivinationCardTheLeviathan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��I�Ĵ��r","Metadata/Items/DivinationCards/DivinationCardThePriceOfDevotion",nil,nil,nil,1)--���˿�
SetJiaoYiGoods(nil,"��ʯ���đz��","Metadata/Items/DivinationCards/DivinationCardGemcuttersMercy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��܊","Metadata/Items/DivinationCards/DivinationCardCheckmate",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ����|","Metadata/Items/DivinationCards/DivinationCardSomethingDark",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�^���T��","Metadata/Items/DivinationCards/DivinationCardLetheanTemptation",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheOffspring")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardThePriceOfPrescience")--�A֪���r
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheMindsEyes")--���`֮��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTerribleSecretOfSpace")--�o��֑�֮��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheBlessingOfMoosh")--��ʲ��ף��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardCostlyCurio")--���F����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardLachrymalNecrosis")--�F�����c
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDementophobia")--�V��֢
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardAmbitiousObsession")--���M����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDesperateCrusade")--�^���h��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardAStonePerfected")--��ʯ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTreasuresOfTheVaal")--�ߠ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheRabbitsFoot")--���_
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardChasingRisk")--ð�U���y
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardThePrinceOfDarkness")--�ڰ�����
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheCatch")--��̫����~
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardEternalBonds")--���a֮�M
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDisdain")--��ҕ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheScout")--ͯ��܊
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardGuardiansChallenge")--���o�ߵ�����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheForgottenTreasure")--���z���Č���
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheFoxInTheBrambles")--�G���еĺ���
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheAspirant")--�����W
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardJudgingVoices")--����֮
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardBijoux")--�錚
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardSilenceAndFrost")--��Ĭ�c��˪
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardMiseryInDarkness")--�ڰ��еĿ��y
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheTirelessExtractor")--�����W
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheAspirant")--������ȡ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardJustifiedAmbition")--���xҰ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardParasiticPassengers")--��������
--SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDuality")--�p����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheOneThatGotAway")--��Ó
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheTransformation")--׃��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardMagnumOpus")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardImperfectMemories")--�������Ļؑ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEmptiness")--��̓
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEternalWar")--���a��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardPrejudice")--ƫҊ
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardBrushPaintAndPalette")--���P����Ϻ��{ɫ�P
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardDeadlyJoy")--����ϲ��
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardWintersEmbrace")--����
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardSambodhisWisdom")--������ǻ�
SetJiaoYiGoods(nil,nil,"Metadata/Items/DivinationCards/DivinationCardTheEnthusiasts")--������
SetJiaoYiGoods(nil,"�Ի���","Metadata/Items/DivinationCards/DivinationCardThePenitent",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�R�ǌ�ۙ","Metadata/Items/DivinationCards/DivinationCardTheBones name",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���o","Metadata/Items/DivinationCards/DivinationCardTranquillity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���i","Metadata/Items/DivinationCards/DivinationCardTheHook",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheThrone",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ϧꖼt�","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���a֮�M","Metadata/Items/DivinationCards/DivinationCardEternalBonds",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�^���h��","Metadata/Items/DivinationCards/DivinationCardDesperateCrusade",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ð�U���y","Metadata/Items/DivinationCards/DivinationCardChasingRisk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ͯ�Ӿ�","Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThePrinceOfDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����еĺ���","Metadata/Items/DivinationCards/DivinationCardTheFoxInTheBrambles",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������ı���","Metadata/Items/DivinationCards/DivinationCardTheForgottenTreasure",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��̫������","Metadata/Items/DivinationCards/DivinationCardTheCatch",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheAspirant",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/DivinationCards/DivinationCardTreasuresOfTheVaal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʯ","Metadata/Items/DivinationCards/DivinationCardAStonePerfected",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDisdain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOneWithAll",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�`��","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���`","Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ��g��","Metadata/Items/DivinationCards/DivinationCardTheDarkMage",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�t��Ո��","Metadata/Items/DivinationCards/DivinationCardAModestRequest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���`֮��","Metadata/Items/DivinationCards/DivinationCardTheMindsEyes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardThePrimordial",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheProgenyOfLunaris",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"؈���h��","Metadata/Items/DivinationCards/DivinationCardCouncilOfCats",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Tʿ","Metadata/Items/DivinationCards/DivinationCardTheWhiteKnight",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ه�Ԟ���","Metadata/Items/DivinationCards/DivinationCardTheSustenance",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ƽ�o�r��","Metadata/Items/DivinationCards/DivinationCardPeacefulMoments",nil,nil,nil,nil)--���˿�	
SetJiaoYiGoods(nil,"�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheGulf",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����`��","Metadata/Items/DivinationCards/DivinationCardTheBitterBlossom",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�W�g��","Metadata/Items/DivinationCards/DivinationCardTheAcademic",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�C�^������","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,nil,nil)--����
SetJiaoYiGoods(nil,"���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Ѵ��","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheAvenger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʧ���Ź�","Metadata/Items/DivinationCards/DivinationCardTimeLostRelic",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheKingsHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ЭԼ","Metadata/Items/DivinationCards/DivinationCardThePact",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheArtist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardThePackLeader",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů��","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������֮��","Metadata/Items/DivinationCards/DivinationCardTheLastOneStanding",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Զ��","Metadata/Items/DivinationCards/DivinationCardTheTrial",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ǯ��Ȩ","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ƽ��","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮��","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���߱ذ�","Metadata/Items/DivinationCards/DivinationCardPrideBeforeTheFall",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������ʦ","Metadata/Items/DivinationCards/DivinationCardTheThaumaturgist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ǻ�����","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���ϣ��","Metadata/Items/DivinationCards/DivinationCardLastHope",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOffering",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���²���","Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʨ","Metadata/Items/DivinationCards/DivinationCardTheLion",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Σ��","Metadata/Items/DivinationCards/DivinationCardTheRisk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����ʳ��","Metadata/Items/DivinationCards/DivinationCardEarthDrinker",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,1)--���˿�
SetJiaoYiGoods(nil,"���㲻��","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ǧ","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ѽ�֮��","Metadata/Items/DivinationCards/DivinationCardTheEldritchDecay",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDevastator",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardHeterochromia",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"δ֪�����˿�","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,nil)--�ɶѵ�ͨ��
-- SetJiaoYiGoods(nil,"���˴���","Metadata/Items/DivinationCards/DivinationCardLuckyDeck",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�߶��ľ��","Metadata/Items/DivinationCards/DivinationCardLuckOfTheVaal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheWolf",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů֮����","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޼�֮��","Metadata/Items/DivinationCards/DivinationCardTheFormlessSea",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���ɸ��","Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ѧ��","Metadata/Items/DivinationCards/DivinationCardThePolymath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheWolvenKingsBite",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���������","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������R","Metadata/Items/DivinationCards/DivinationCardAFamiliarCall",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRebirth",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��϶","Metadata/Items/DivinationCards/DivinationCardTheBreach",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"׷����","Metadata/Items/DivinationCards/DivinationCardTheDreamer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ɽ���","Metadata/Items/DivinationCards/DivinationCardTheWorldEater",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardImmortalResolve",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheMaster",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��η��","Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ľ��","Metadata/Items/DivinationCards/DivinationCardTheAdmirer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮ʯ","Metadata/Items/DivinationCards/DivinationCardTheCelestialStone",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardPerfection",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ǧ","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ѽ�֮��","Metadata/Items/DivinationCards/DivinationCardTheEldritchDecay",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"׳�Ĳ���","Metadata/Items/DivinationCards/DivinationCardTheHaleHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ׯ԰��","Metadata/Items/DivinationCards/DivinationCardTheMayor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޹���","Metadata/Items/DivinationCards/DivinationCardTheInnocent",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ήõ��","Metadata/Items/DivinationCards/DivinationCardTheWiltedRose",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����͸�","Metadata/Items/DivinationCards/DivinationCardBoonOfTheFirstOnes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Э֮��","Metadata/Items/DivinationCards/DivinationCardTheCacophony",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"īˮ���","Metadata/Items/DivinationCards/DivinationCardADabOfInk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheLifeThief",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ѱ����","Metadata/Items/DivinationCards/DivinationCardTheSeeker",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʹ","Metadata/Items/DivinationCards/DivinationCardTheMessenger",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ó�","Metadata/Items/DivinationCards/DivinationCardTheJourney",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLanding",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������������","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardVanity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ȼ��֮Ѫ","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڰ�֮��","Metadata/Items/DivinationCards/DivinationCardDarkDreams",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����Ķľ�","Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOldMan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ŵ��֮��","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ҳϵĴ���","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֪��","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������Ľ���","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ֲ�֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDamned",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ԫ�����","Metadata/Items/DivinationCards/DivinationCardVoidOfTheElements",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�T�D֮�ڴ�","Metadata/Items/DivinationCards/DivinationCardBaitedExpectations",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����ӛ̖","Metadata/Items/DivinationCards/DivinationCardDeathlyDesigns",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����Ѫ","Metadata/Items/DivinationCards/DivinationCardEtchedInBlood",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʧ��ķ��A","Metadata/Items/DivinationCards/DivinationCardSquanderedProsperity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����ֵܕ�","Metadata/Items/DivinationCards/DivinationCardBrotherhoodInExile",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDrapedInDreams",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ۑ�","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ç��Ұ��","Metadata/Items/DivinationCards/DivinationCardRecklessAmbition",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���o�ߵĸ���","Metadata/Items/DivinationCards/DivinationCardKeepersCorruption",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����׎�","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardDyingLight",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ӱ�p�@","Metadata/Items/DivinationCards/DivinationCardHauntingShadows",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�׻�","Metadata/Items/DivinationCards/DivinationCardTheWhiteout",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڷe","Metadata/Items/DivinationCards/DivinationCardTheCache",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardWintersEmbrace",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���a��","Metadata/Items/DivinationCards/DivinationCardTheEternalWar",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheEnthusiasts",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ϲ��","Metadata/Items/DivinationCards/DivinationCardDeadlyJoy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�t��Ո��","Metadata/Items/DivinationCards/DivinationCardAModestRequest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardBrokenPromises",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�x�͌���","Metadata/Items/DivinationCards/DivinationCardLuminousTrove",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�o�M����","Metadata/Items/DivinationCards/DivinationCardTheEndlessDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�~؜","Metadata/Items/DivinationCards/DivinationCardTheFishmonger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"߅��֮��","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���o�ߵĸ���","Metadata/Items/DivinationCards/DivinationCardKeepersCorruption",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�X��","Metadata/Items/DivinationCards/DivinationCardTheAwakened",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ҫ","Metadata/Items/DivinationCards/DivinationCardTheCraving",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�S�L�hӛ","Metadata/Items/DivinationCards/DivinationCardANoteInTheWind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���`֮��","Metadata/Items/DivinationCards/DivinationCardTheMindsEyes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOffspring",nil,nil,nil,nil)--���˿�


--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ʒ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʯӢ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ʒ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��̷���","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�޽Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ķ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���۷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���׷���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͽ����","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ�Ƿ���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ�Է���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯ����","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��編��","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Է���","Metadata/Items/Weapons/OneHandWeapons/Wands/Wand16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���·���","Metadata/Items/Weapons/OneHandWeapons/Wands/WandM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ټ�����","Metadata/Items/Weapons/OneHandWeapons/Wands/WandAtlas1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ƥ��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�̹ǵ�","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߶���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ͭ�Ͳ���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ��֮��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ҷ�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߶�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ⲩ��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼҶ�ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ѫ��ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���˶̵�","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������֮ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�׽���","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۹���ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ���ذ","Metadata/Items/Weapons/OneHandWeapons/Daggers/Dagger22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ս��","Metadata/Items/Weapons/OneHandWeapons/Daggers/DaggerM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ȭ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�䶤","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"èצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ϯ�۹�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ѣĿצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�־�֮צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��צ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˺�Ѽ�צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��צ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���๳","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʷǰսצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ӥצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����צ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮צ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�̺���","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħצ��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���۹�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۹�սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�־�֮��","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"˫��սצ","Metadata/Items/Weapons/OneHandWeapons/Claws/ClawM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�⸫","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����ָ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�и���","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�Ļ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʴ��ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�о���","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ѫ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��³�Ÿ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ƳǸ�","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�б�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��¾֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxeM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordC",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�⽣","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͭ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ɾ���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ĺɫ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��צ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ͭ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ó���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ⳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʿ������","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���߳���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ȩ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ĺ�ⳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��׽��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʿ����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ų���","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ҹ�ﳤ��","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSword22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/OneHandWeapons/OneHandSwords/OneHandSwordM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"������ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��״����","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�Ŵ�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"С��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��â�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���״̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ŵ�̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ǿ��ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����̽�","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ħ�ϸ��","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/Rapier22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�������","Metadata/Items/Weapons/OneHandWeapons/OneHandThrustingSwords/RapierM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�۶�ľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʯ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���д�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ξ�֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ľ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ҵ�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ǿ��ս��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ᴸ","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʥԼ֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMace22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�͹�ķ��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/OneHandMaceM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ͭ�Ͷ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ʯӢ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ɫ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ƕ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre7",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ӱ�����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre8",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���Ƕ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Զ��֮��","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre9",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ܶ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre10",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre11",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ǧ������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre12",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"Ѫɫ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre13",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ʼҶ���","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre14",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ԩ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre15",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��¹����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��³����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre16",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮ͳ","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre17",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ʯ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre18",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�׽����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre19",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre20",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�������","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre21",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/Sceptre22",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"��ħ����","Metadata/Items/Weapons/OneHandWeapons/OneHandMaces/SceptreM3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"���ƹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̹�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ϳɹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ƹ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʼ��Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���乭","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ֱ��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ϲ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ѻ���","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ի�֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ�Թ�","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow20",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹�֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow21",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������֮��","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow22",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������˹��","Metadata/Items/Weapons/TwoHandWeapons/Bows/BowM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ֮��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ƴ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ͳ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʼҳ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���³���","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ó���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ƴ���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���峤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���鳤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʷ�䳤��","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�籩����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹�����","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���г���","Metadata/Items/Weapons/TwoHandWeapons/Staves/Staff19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʴ����","Metadata/Items/Weapons/TwoHandWeapons/Staves/StaffM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�о޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ذ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���̾޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ��޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����צ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��³�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ѽ׾޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�޸�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxe19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Weapons/TwoHandWeapons/TwoHandAxes/TwoHandAxeM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��߾޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�ֽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ļ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ѫ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʿ���޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɽ����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ľ޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���̾޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�б��޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʨצ�޽�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ؽ�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSword19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Weapons/TwoHandWeapons/TwoHandSwords/TwoHandSwordM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ǿ޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǧ�ﴸ","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�־��ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͼ�ھ޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���;޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�״̾޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ȩ�޴�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չⴸ","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��³�ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɨ����","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¾���ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹��ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace18",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMace19",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ش�","Metadata/Items/Weapons/TwoHandWeapons/TwoHandMaces/TwoHandMaceM3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ָ","Metadata/Items/Rings/Ring1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ָ","Metadata/Items/Rings/Ring1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɺ����ָ","Metadata/Items/Rings/Ring2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ָ","Metadata/Items/Rings/Ring4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�¹�ʯ��ָ","Metadata/Items/Rings/Ring9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͼ���ָ","Metadata/Items/Rings/Ring10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ָ","Metadata/Items/Rings/Ring11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫���ָ","Metadata/Items/Rings/Ring14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ǳ��֮��","Metadata/Items/Rings/Ring15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ؽ�ָ","Metadata/Items/Rings/RingVictor1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͻ��ָ","Metadata/Items/Rings/RingAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ��ָ","Metadata/Items/Rings/RingAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɰ֮��","Metadata/Items/Rings/RingAtlas3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Rings/RingAtlas4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��϶��ָ","Metadata/Items/Rings/BreachRing",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤���","Metadata/Items/Amulets/Amulet1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɺ�������","Metadata/Items/Amulets/Amulet2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɺ�������","Metadata/Items/Amulets/Amulet2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���껤���","Metadata/Items/Amulets/Amulet3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۽����","Metadata/Items/Amulets/Amulet6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׻����","Metadata/Items/Amulets/Amulet7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Amulets/Amulet8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��觻����","Metadata/Items/Amulets/Amulet9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƾ������","Metadata/Items/Amulets/Amulet10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ѫɫ�����","Metadata/Items/Amulets/Amulet11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ػ����","Metadata/Items/Amulet/AmuletVictor1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤���","Metadata/Items/Amulet/AmuletAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʯ�����","Metadata/Items/Amulet/AmuletAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ҽ�ħ��","Metadata/Items/Amulets/Talismans/Talisman1_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�½�ħ��","Metadata/Items/Amulets/Talismans/Talisman1_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩħ��","Metadata/Items/Amulets/Talismans/Talisman1_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman1_9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӽħ��","Metadata/Items/Amulets/Talismans/Talisman1_11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman1_12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��צħ��","Metadata/Items/Amulets/Talismans/Talisman2_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʹ�ħ��","Metadata/Items/Amulets/Talismans/Talisman2_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��צħ��","Metadata/Items/Amulets/Talismans/Talisman2_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman2_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�乿ħ��","Metadata/Items/Amulets/Talismans/Talisman2_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman2_6_6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman2_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ħ��","Metadata/Items/Amulets/Talismans/Talisman2_8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ǳ��ħ��","Metadata/Items/Amulets/Talismans/Talisman3_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫��ħ��","Metadata/Items/Amulets/Talismans/Talisman3_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_6_3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman3_7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Amulets/Talismans/Talisman4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ز�����","Metadata/Items/Belts/Belt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Belts/Belt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ƥ������","Metadata/Items/Belts/Belt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ظ�����","Metadata/Items/Belts/Belt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�β�����","Metadata/Items/Belts/Belt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۶�����","Metadata/Items/Belts/Belt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ȷ�����","Metadata/Items/Belts/BeltAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ������","Metadata/Items/Belts/BeltAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Belts/BeltDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ԩ����","Metadata/Items/Belts/BeltAbyss",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߲�����","Metadata/Items/Armours/Shields/ShieldStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Shields/ShieldStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ������","Metadata/Items/Armours/Shields/ShieldStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ������","Metadata/Items/Armours/Shields/ShieldStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʻ�����","Metadata/Items/Armours/Shields/ShieldStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/Shields/ShieldStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/Shields/ShieldStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/Shields/ShieldStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ٹ�����","Metadata/Items/Armours/Shields/ShieldStr12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ�����","Metadata/Items/Armours/Shields/ShieldStr13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ����","Metadata/Items/Armours/Shields/ShieldStr14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Shields/ShieldStr15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Shields/ShieldStr16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Shields/ShieldStr17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ���","Metadata/Items/Armours/Shields/ShieldDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ʻ����","Metadata/Items/Armours/Shields/ShieldDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"í�����","Metadata/Items/Armours/Shields/ShieldDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս�����","Metadata/Items/Armours/Shields/ShieldDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Բ����","Metadata/Items/Armours/Shields/ShieldDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/Shields/ShieldDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ���","Metadata/Items/Armours/Shields/ShieldDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶����","Metadata/Items/Armours/Shields/ShieldDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս���","Metadata/Items/Armours/Shields/ShieldDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۹����","Metadata/Items/Armours/Shields/ShieldDex16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��֦ħ��","Metadata/Items/Armours/Shields/ShieldInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ��ħ��","Metadata/Items/Armours/Shields/ShieldInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľħ��","Metadata/Items/Armours/Shields/ShieldInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ��ħ��","Metadata/Items/Armours/Shields/ShieldInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��ħ��","Metadata/Items/Armours/Shields/ShieldInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�ħ��","Metadata/Items/Armours/Shields/ShieldInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��гħ��","Metadata/Items/Armours/Shields/ShieldInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��","Metadata/Items/Armours/Shields/ShieldInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɼľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"í��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Բ��","Metadata/Items/Armours/Shields/ShieldStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"糺�Բ��","Metadata/Items/Armours/Shields/ShieldStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ŵ�Բ��","Metadata/Items/Armours/Shields/ShieldStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľԲ��","Metadata/Items/Armours/Shields/ShieldStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Բ��","Metadata/Items/Armours/Shields/ShieldStrDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Բ��","Metadata/Items/Armours/Shields/ShieldStrDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ��Բ��","Metadata/Items/Armours/Shields/ShieldStrDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ��","Metadata/Items/Armours/Shields/ShieldStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ľ��","Metadata/Items/Armours/Shields/ShieldStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ����","Metadata/Items/Armours/Shields/ShieldStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Shields/ShieldStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Shields/ShieldStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ϰ���","Metadata/Items/Armours/Shields/ShieldStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʹ��","Metadata/Items/Armours/Shields/ShieldStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ����","Metadata/Items/Armours/Shields/ShieldStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ��","Metadata/Items/Armours/Shields/ShieldStrInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��װ��","Metadata/Items/Armours/Shields/ShieldStrInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Shields/ShieldStrInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͻ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��â�̶�","Metadata/Items/Armours/Shields/ShieldDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����̶�","Metadata/Items/Armours/Shields/ShieldDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ϴ̶�","Metadata/Items/Armours/Shields/ShieldDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Դ̶�","Metadata/Items/Armours/Shields/ShieldDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ȩ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ľ�̶�","Metadata/Items/Armours/Shields/ShieldDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������̶�","Metadata/Items/Armours/Shields/ShieldDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�־��̶�","Metadata/Items/Armours/Shields/ShieldDexInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ߴ̶�","Metadata/Items/Armours/Shields/ShieldDexInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�ʥ��","Metadata/Items/Armours/Shields/ShieldDemigods",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Helmets/HelmetStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"׶����","Metadata/Items/Armours/Helmets/HelmetStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Helmets/HelmetStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/Armours/Helmets/HelmetStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƕ���֮��","Metadata/Items/Armours/Helmets/HelmetStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ӷ���֮��","Metadata/Items/Armours/Helmets/HelmetStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƴ�֮��","Metadata/Items/Armours/Helmets/HelmetStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ҽ��","Metadata/Items/Armours/Helmets/HelmetStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Helmets/HelmetStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ƥñ","Metadata/Items/Armours/Helmets/HelmetDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ñ","Metadata/Items/Armours/Helmets/HelmetDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ﶵ","Metadata/Items/Armours/Helmets/HelmetDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ñ","Metadata/Items/Armours/Helmets/HelmetDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ñ","Metadata/Items/Armours/Helmets/HelmetDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʨ��Ƥ��","Metadata/Items/Armours/Helmets/HelmetDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̷�ͷ��","Metadata/Items/Armours/Helmets/HelmetInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮��","Metadata/Items/Armours/Helmets/HelmetInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������֮��","Metadata/Items/Armours/Helmets/HelmetInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/Armours/Helmets/HelmetInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ӻ���","Metadata/Items/Armours/Helmets/HelmetStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���滤��","Metadata/Items/Armours/Helmets/HelmetStrDex4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ʿ֮��","Metadata/Items/Armours/Helmets/HelmetStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/Helmets/HelmetStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ȫ��ս��","Metadata/Items/Armours/Helmets/HelmetStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ͷ��","Metadata/Items/Armours/Helmets/HelmetStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Helmets/HelmetStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʿ��֮��","Metadata/Items/Armours/Helmets/HelmetStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�޿�","Metadata/Items/Armours/Helmets/HelmetStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս֮��","Metadata/Items/Armours/Helmets/HelmetStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��֮��","Metadata/Items/Armours/Helmets/HelmetStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս֮��","Metadata/Items/Armours/Helmets/HelmetStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ���޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ս��","Metadata/Items/Armours/Helmets/HelmetStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/Helmets/HelmetStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ľ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ѻ֮��","Metadata/Items/Armours/Helmets/HelmetDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"߱��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ӥ�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ԑ��","Metadata/Items/Armours/Helmets/HelmetDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�o��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�֮��","Metadata/Items/Armours/Helmets/HelmetDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"߱��֮��","Metadata/Items/Armours/Helmets/HelmetDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ƻ���","Metadata/Items/Armours/Helmets/HelmetWreath1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫ���","Metadata/Items/Armours/Helmets/HelmetDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ͷ��","Metadata/Items/Armours/Helmets/HelmetAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���Ʊ���","Metadata/Items/Armours/BodyArmours/BodyStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ؼ�","Metadata/Items/Armours/BodyArmours/BodyStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭ�Ͱ��","Metadata/Items/Armours/BodyArmours/BodyStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��֮��","Metadata/Items/Armours/BodyArmours/BodyStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/BodyArmours/BodyStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ս��","Metadata/Items/Armours/BodyArmours/BodyStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չ�֮��","Metadata/Items/Armours/BodyArmours/BodyStr10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyStr11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ׯ��֮��","Metadata/Items/Armours/BodyArmours/BodyStr12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/Armours/BodyArmours/BodyStr13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/BodyArmours/BodyStr14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��âս��","Metadata/Items/Armours/BodyArmours/BodyStr15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ƕ�����","Metadata/Items/Armours/BodyArmours/BodyStr16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫս��","Metadata/Items/Armours/BodyArmours/BodyStr17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ķ������","Metadata/Items/Armours/BodyArmours/BodyStrTemp",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƾ�����","Metadata/Items/Armours/BodyArmours/BodyDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/BodyArmours/BodyDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�չ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮װ","Metadata/Items/Armours/BodyArmours/BodyDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ֮��","Metadata/Items/Armours/BodyArmours/BodyDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫƤ��","Metadata/Items/Armours/BodyArmours/BodyDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ҫƤ��","Metadata/Items/Armours/BodyArmours/BodyDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮װ","Metadata/Items/Armours/BodyArmours/BodyDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ֮��","Metadata/Items/Armours/BodyArmours/BodyDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ǳ�Ƥ��","Metadata/Items/Armours/BodyArmours/BodyDex16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮װ","Metadata/Items/Armours/BodyArmours/BodyDex17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��б���","Metadata/Items/Armours/BodyArmours/BodyInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ѧ��֮��","Metadata/Items/Armours/BodyArmours/BodyInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿��֮��","Metadata/Items/Armours/BodyArmours/BodyInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ѧ����","Metadata/Items/Armours/BodyArmours/BodyInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿��֮��","Metadata/Items/Armours/BodyArmours/BodyInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿�ޱ���","Metadata/Items/Armours/BodyArmours/BodyInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���߳���","Metadata/Items/Armours/BodyArmours/BodyInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��˿֮��","Metadata/Items/Armours/BodyArmours/BodyInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����߱���","Metadata/Items/Armours/BodyArmours/BodyInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����˿֮��","Metadata/Items/Armours/BodyArmours/BodyInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Armours/BodyArmours/BodyInt17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ϸ�۱���","Metadata/Items/Armours/BodyArmours/BodyStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ����","Metadata/Items/Armours/BodyArmours/BodyStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ұս����","Metadata/Items/Armours/BodyArmours/BodyStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/BodyArmours/BodyStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ս��","Metadata/Items/Armours/BodyArmours/BodyStrDex10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ָ��������","Metadata/Items/Armours/BodyArmours/BodyStrDex11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս�ۼ�","Metadata/Items/Armours/BodyArmours/BodyStrDex12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ۻ���","Metadata/Items/Armours/BodyArmours/BodyStrDex13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ұ����","Metadata/Items/Armours/BodyArmours/BodyStrDex14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/BodyArmours/BodyStrDex15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDex16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʤ������","Metadata/Items/Armours/BodyArmours/BodyStrDex17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ƻ���","Metadata/Items/Armours/BodyArmours/BodyStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս����","Metadata/Items/Armours/BodyArmours/BodyStrInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ӳ���","Metadata/Items/Armours/BodyArmours/BodyStrInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyStrInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���廷��","Metadata/Items/Armours/BodyArmours/BodyStrInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ս����","Metadata/Items/Armours/BodyArmours/BodyStrInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ȩ�󻷼�","Metadata/Items/Armours/BodyArmours/BodyStrInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������","Metadata/Items/Armours/BodyArmours/BodyStrInt17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/BodyArmours/BodyDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ˮ����","Metadata/Items/Armours/BodyArmours/BodyDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ް�","Metadata/Items/Armours/BodyArmours/BodyDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ˮ����","Metadata/Items/Armours/BodyArmours/BodyDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ս��","Metadata/Items/Armours/BodyArmours/BodyDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"糺�֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Armours/BodyArmours/BodyDexInt11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ѩս��","Metadata/Items/Armours/BodyArmours/BodyDexInt12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ڱ�֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ӳ������","Metadata/Items/Armours/BodyArmours/BodyDexInt14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Ѫɫ֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ű������","Metadata/Items/Armours/BodyArmours/BodyDexInt16",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/Armours/BodyArmours/BodyDexInt17",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/BodyArmours/BodyStrDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�ս��","Metadata/Items/Armours/BodyArmours/BodyDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ּ�","Metadata/Items/Armours/Boots/BootsStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ǿ���ּ�","Metadata/Items/Armours/Boots/BootsStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ÿ��ּ�","Metadata/Items/Armours/Boots/BootsStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ���ּ�","Metadata/Items/Armours/Boots/BootsStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶��ּ�","Metadata/Items/Armours/Boots/BootsStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����ּ�","Metadata/Items/Armours/Boots/BootsStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ķ�ּ�","Metadata/Items/Armours/Boots/BootsStrTemp",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ��ѥ","Metadata/Items/Armours/Boots/BootsDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ��ѥ","Metadata/Items/Armours/Boots/BootsDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ٶ�ѥ","Metadata/Items/Armours/Boots/BootsDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ٶ�ѥ","Metadata/Items/Armours/Boots/BootsDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ë֮Ь","Metadata/Items/Armours/Boots/BootsInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿�ޱ�Ь","Metadata/Items/Armours/Boots/BootsInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿���Ь","Metadata/Items/Armours/Boots/BootsInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ѧ�߳�ѥ","Metadata/Items/Armours/Boots/BootsInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�в���Ь","Metadata/Items/Armours/Boots/BootsInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�岼��Ь","Metadata/Items/Armours/Boots/BootsInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���߳�ѥ","Metadata/Items/Armours/Boots/BootsInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������Ь","Metadata/Items/Armours/Boots/BootsInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ��ѥ","Metadata/Items/Armours/Boots/BootsInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ƥѥ","Metadata/Items/Armours/Boots/BootsStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ��ѥ","Metadata/Items/Armours/Boots/BootsStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���׳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����Ͳѥ","Metadata/Items/Armours/Boots/BootsStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���۳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʽ��ѥ","Metadata/Items/Armours/Boots/BootsStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����߳�ѥ","Metadata/Items/Armours/Boots/BootsStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ֮ѥ","Metadata/Items/Armours/Boots/BootsStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ų�ѥ","Metadata/Items/Armours/Boots/BootsStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս��ѥ","Metadata/Items/Armours/Boots/BootsStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֺ��Ь","Metadata/Items/Armours/Boots/BootsDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ���ѥ","Metadata/Items/Armours/Boots/BootsDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������ѥ","Metadata/Items/Armours/Boots/BootsDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���㳤ѥ","Metadata/Items/Armours/Boots/BootsDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ֮ѥ","Metadata/Items/Armours/Boots/BootsDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�߳�ѥ","Metadata/Items/Armours/Boots/BootsDexInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ��Ь","Metadata/Items/Armours/Boots/BootsDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�����Ь","Metadata/Items/Armours/Boots/BootsDescent1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ(����)","Metadata/Items/Armours/Boots/BootsAtlas1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ (���)","Metadata/Items/Armours/Boots/BootsAtlas2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ɫЬ (����)","Metadata/Items/Armours/Boots/BootsAtlas3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ͻ���","Metadata/Items/Armours/Gloves/GlovesStr1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStr2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ͭ����","Metadata/Items/Armours/Gloves/GlovesStr3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֻ���","Metadata/Items/Armours/Gloves/GlovesStr4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ÿֻ���","Metadata/Items/Armours/Gloves/GlovesStr5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"Զ�Ż���","Metadata/Items/Armours/Gloves/GlovesStr6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���黤��","Metadata/Items/Armours/Gloves/GlovesStr7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Armours/Gloves/GlovesStr8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���˻���","Metadata/Items/Armours/Gloves/GlovesStr9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"¹Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ɰӰ����","Metadata/Items/Armours/Gloves/GlovesDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ƥ����","Metadata/Items/Armours/Gloves/GlovesDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ָ�����","Metadata/Items/Armours/Gloves/GlovesDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDex9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ë����","Metadata/Items/Armours/Gloves/GlovesInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿������","Metadata/Items/Armours/Gloves/GlovesInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˿������","Metadata/Items/Armours/Gloves/GlovesInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�в�����","Metadata/Items/Armours/Gloves/GlovesInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�岼����","Metadata/Items/Armours/Gloves/GlovesInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʿ����","Metadata/Items/Armours/Gloves/GlovesInt9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ͭӰ����","Metadata/Items/Armours/Gloves/GlovesStrDex3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Gloves/GlovesStrDex7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrDex8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʽ����","Metadata/Items/Armours/Gloves/GlovesStrInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����������","Metadata/Items/Armours/Gloves/GlovesStrInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"սʿ����","Metadata/Items/Armours/Gloves/GlovesStrInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesStrInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥս����","Metadata/Items/Armours/Gloves/GlovesStrInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ֺ����","Metadata/Items/Armours/Gloves/GlovesDexInt1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ۻ�����","Metadata/Items/Armours/Gloves/GlovesDexInt2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDexInt3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���˻���","Metadata/Items/Armours/Gloves/GlovesDexInt4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesDexInt5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Armours/Gloves/GlovesDexInt6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/Armours/Gloves/GlovesDexInt7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��Ӱ�߻���","Metadata/Items/Armours/Gloves/GlovesDexInt8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�ƽ�ۼ�","Metadata/Items/Armours/Gloves/GlovesDemigods1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�۶�����","Metadata/Items/Armours/Gloves/GlovesAtlasStr",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Armours/Gloves/GlovesAtlasDex",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С������ҩ��","Metadata/Items/Flasks/FlaskLife1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽�����ҩ��","Metadata/Items/Flasks/FlaskLife7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������ҩ��","Metadata/Items/Flasks/FlaskLife8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף������ҩ��","Metadata/Items/Flasks/FlaskLife9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ������ҩ��","Metadata/Items/Flasks/FlaskLife10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������ҩ��","Metadata/Items/Flasks/FlaskLife12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽�ħ��ҩ��","Metadata/Items/Flasks/FlaskMana7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ��ħ��ҩ��","Metadata/Items/Flasks/FlaskMana10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ħ��ҩ��","Metadata/Items/Flasks/FlaskMana12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"С�͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�߽׸���ҩ��","Metadata/Items/Flasks/FlaskHybrid4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʥ�︴��ҩ��","Metadata/Items/Flasks/FlaskHybrid5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ף������ҩ��","Metadata/Items/Flasks/FlaskHybrid6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ˮ��ҩ��","Metadata/Items/Flasks/FlaskUtility6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�Ͼ�ҩ��","Metadata/Items/Flasks/FlaskUtility7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯӢҩ��","Metadata/Items/Flasks/FlaskUtility8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"ʯ��ҩ��","Metadata/Items/Flasks/FlaskUtility10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ҩ��","Metadata/Items/Flasks/FlaskUtility13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"����ҩ��","Metadata/Items/Flasks/FlaskUtility15",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver1",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Quivers/Quiver2",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������","Metadata/Items/Quivers/Quiver3",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver4",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ɼ���","Metadata/Items/Quivers/Quiver5",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/Quiver6",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"˫�����","Metadata/Items/Quivers/Quiver7",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/Quiver8",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver9",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver10",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ʸ����","Metadata/Items/Quivers/Quiver11",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/Quivers/Quiver12",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"�̷����","Metadata/Items/Quivers/Quiver13",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/Quivers/Quiver14",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ݼ���","Metadata/Items/Quivers/QuiverDescent",nil,nil,nil,nil)

SetQuLingData(nil,80,true,true)--��70���Ϳ����������̳
--������ȹ�������齱����˳��Ϊ���ϵ��� �ѹ��صĶ�����ǰ��
--AddYouXianGongPingBuyGoods(name,className,wordName,wordClassName,needYanShi)--�������ʹ�ù�Ʒ����Ķ��� ���ȶ�Ϊ���ϵ������
--name �ַ����� ���ȹ������Ʒ�� ����nil���ԣ���һ��Ҫ�����������
--className �ַ����� ���ȹ������Ʒ���� ������nil���ԣ���һ��Ҫ�����������
--wordName �ַ����� ��׺�� ������nil
--wordClassName �ַ����� ��׺���� ������nil
--needYanShi �߼��� ����ʱ�Ƿ���ʱ trueΪ��ʱ false��nilΪ����ʱ
AddYouXianGongPingBuyGoods("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"Headhunter",true)--"�C��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Badge of the Brotherhood",true)--"����֮��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Bottled Faith",true)--"ƿ������"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unnatural Instinct",true)--"���"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Void Battery",true)--"����ħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Maloney's Mechanism",true)--"�R����ęC�P"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Asenath's Gentle Touch",true)--"��ِ�Ƚz�İ���֮�Z"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Machina Mitts",true)--"ԎӋħ��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Farrul's Fur",true)--"�M���_����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Shroud of the Lightless",true)--"�ް��ČƲ�"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Halcyon",true)--"̫ƽ"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unending Hunger",true)--"�o�M����"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Inspired Learning",true)--"��֪�ğ���"
-- AddYouXianGongPingBuyGoods(nil,nil,nil,"Primordial Might",true)--"��������"
AddYouXianGongPingBuyGoods(nil,nil,nil,"AtzirisMirrorFated",true)--"Ů���I��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",true)--"��ȸ׃�P��"
AddYouXianGongPingBuyGoods(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets",true)--"���\�B�Y"
AddYouXianGongPingBuyGoods(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity",true)--"����֮��"
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,true)
AddYouXianGongPingBuyGoods("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,true)
AddYouXianGongPingBuyGoods("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,true)
AddYouXianGongPingBuyGoods("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,true)
AddYouXianGongPingBuyGoods("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,true)
AddYouXianGongPingBuyGoods("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,true)
AddYouXianGongPingBuyGoods("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,true)
AddYouXianGongPingBuyGoods("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,true)
AddYouXianGongPingBuyGoods("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,true)
AddYouXianGongPingBuyGoods("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,true)
AddYouXianGongPingBuyGoods("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,true)
AddYouXianGongPingBuyGoods("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,true)
AddYouXianGongPingBuyGoods("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,true)
AddYouXianGongPingBuyGoods("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,true)
AddYouXianGongPingBuyGoods("������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,true)
AddYouXianGongPingBuyGoods("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,true)
AddYouXianGongPingBuyGoods("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,true)
AddYouXianGongPingBuyGoods("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,true)
AddYouXianGongPingBuyGoods("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,true)
AddYouXianGongPingBuyGoods("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,true)
AddYouXianGongPingBuyGoods("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,true)
AddYouXianGongPingBuyGoods("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,true)
AddYouXianGongPingBuyGoods("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,true)
AddYouXianGongPingBuyGoods("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,true)
AddYouXianGongPingBuyGoods("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,true)

g_needShiLianDaShiLv=80--��75����������ʦ
SetNeedShiLianReward("�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate")
SetNeedShiLianReward(nil,nil,nil,"The Squire")--"�����"
SetNeedShiLianReward(nil,nil,nil,"Mageblood")--"ħѪ"
SetNeedShiLianReward(nil,nil,nil,"Headhunter")--"�C��"
SetNeedShiLianReward(nil,nil,nil,"Badge of the Brotherhood")--"����֮��"
SetNeedShiLianReward(nil,nil,nil,"Bottled Faith")--"ƿ������"
SetNeedShiLianReward(nil,nil,nil,"Unnatural Instinct")--"���"
SetNeedShiLianReward(nil,nil,nil,"Void Battery")--"����ħ��"
SetNeedShiLianReward(nil,nil,nil,"Maloney's Mechanism")--"�R����ęC�P"
SetNeedShiLianReward(nil,nil,nil,"Asenath's Gentle Touch")--"��ِ�Ƚz�İ���֮�Z"
SetNeedShiLianReward(nil,nil,nil,"Machina Mitts")--"ԎӋħ��"
SetNeedShiLianReward(nil,nil,nil,"Farrul's Fur")--"�M���_����"
SetNeedShiLianReward(nil,nil,nil,"Shroud of the Lightless")--"�ް��ČƲ�"
SetNeedShiLianReward(nil,nil,nil,"The Halcyon")--"̫ƽ"
SetNeedShiLianReward(nil,nil,nil,"Arakaali's Fang")--"��������֮��"
SetNeedShiLianReward(nil,nil,nil,"Unending Hunger")--"�o�M����"
SetNeedShiLianReward(nil,nil,nil,"Inspired Learning")--"��֪�ğ���"
SetNeedShiLianReward(nil,nil,nil,"Berek's Respite")--"ؐ�׿˵Ļ��c��֮��"
SetNeedShiLianReward(nil,nil,nil,"AtzirisMirrorFated")--"Ů���I��"
SetNeedShiLianReward(nil,nil,nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied")--"��ȸ׃�P��"
SetNeedShiLianReward(nil,nil,nil,"RollingSixSocketBodyArmourLinksAllSockets")--"���\�B�Y"
SetNeedShiLianReward(nil,nil,nil,"RareSuturedAberrationDropsMaligarosVirtuosity")--"����֮��"
SetNeedShiLianReward("�����µ�ħ����Ƭ","Metadata/Items/Currency/CurrencyDuplicateShard")
SetNeedShiLianReward("���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetNeedShiLianReward("ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetNeedShiLianReward("����˼","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetNeedShiLianReward("�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetNeedShiLianReward("�䳲֪�R","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")
SetNeedShiLianReward("��ِ�Ƚzٛ�Y","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")
SetNeedShiLianReward("�ۂ��әC","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")
SetNeedShiLianReward("�L���p�_","Metadata/Items/DivinationCards/DivinationCardTheLongCon")
SetNeedShiLianReward("����ؔ��","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetNeedShiLianReward("����ע��","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")
SetNeedShiLianReward("����ѧ��","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")
SetNeedShiLianReward("���֮��","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardThePatient")
SetNeedShiLianReward("������","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetNeedShiLianReward("ͯ��܊","Metadata/Items/DivinationCards/DivinationCardTheScout")
SetNeedShiLianReward("����","Metadata/Items/DivinationCards/DivinationCardTheHoarder")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")
SetNeedShiLianReward("ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetNeedShiLianReward("����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard")
SetNeedShiLianReward("��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath")
SetNeedShiLianReward("�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyAddModToRare")
SetNeedShiLianReward("Զ��ʯ","Metadata/Items/Currency/CurrencyRerollUnique")
SetNeedShiLianReward("��ʥʯ","Metadata/Items/Currency/CurrencyModValues")
SetNeedShiLianReward("���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetNeedShiLianReward("����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes")
SetNeedShiLianReward("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardTheWretched")
SetNeedShiLianReward("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetNeedShiLianReward("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetNeedShiLianReward("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetNeedShiLianReward("�Sԣ�ƽM","Metadata/Items/DivinationCards/DivinationCardDeck")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollRare")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare")
SetNeedShiLianReward("��ͼ��","Metadata/Items/Currency/CurrencyMapQuality")
SetNeedShiLianReward("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
SetNeedShiLianReward("��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetNeedShiLianReward("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")


SetCheckHeistData(3*60,100,68,68,true,65,65,65,65,true,8) --����ȥ�ᱦ 
SetHeistData("RewardChestCurrency|RewardCurrency|RewardChestTrinkets|RewardChestLegion|RewardChestDivination|RewardChestProphecy|RewardChestBreach|RewardChestBlight|RewardChestFossil","���ʯ,Metadata/Items/Currency/CurrencyAddModToRare,1|�����µ�ħ��,Metadata/Items/Currency/CurrencyDuplicate,1|�Sԣ�ƽM,Metadata/Items/DivinationCards/DivinationCardDeck,3|����ؔ��,Metadata/Items/DivinationCards/DivinationCardBrothersStash,1|��������,Metadata/Items/DivinationCards/DivinationCardAbandonedWealth,1|���˵Ľ���,Metadata/Items/DivinationCards/DivinationCardAlluringBounty,1|����ʯ,Metadata/Items/Currency/CurrencyRerollRare,4|���ʯ��Ƭ,Metadata/Items/Currency/CurrencyExaltedShard,2|���t,Metadata/Items/DivinationCards/DivinationCardTheDoctor,1|��ħ,Metadata/Items/DivinationCards/DivinationCardTheDemon,1|��ʥʯ,Metadata/Items/Currency/CurrencyModValues,1")

g_ChangeHunDunNeedData={	
	{--����	 2	
		-- {--���е���������ܵ����
			-- {1,{"Claw","Dagger","Wand","One Hand Sword","Thrusting One Hand Sword","One Hand Axe","One Hand Mace","Rune Dagger","Sceptre"}},
			-- {1,{"Shield"}}--��
		-- },
		{--2���������������
			{2,{"Claw","Dagger","Wand","One Hand Sword","Thrusting One Hand Sword","One Hand Axe","One Hand Mace","Rune Dagger","Sceptre"}},
		},
		-- {--һ��˫������
			-- {1,{"Bow","Staff","Two Hand Sword","Two Hand Axe","Two Hand Mace","Warstaff"}},
		-- }
	},	
	{--�·� 2
		{
			{1,{"Body Armour"}}
		}
	},
	{--ͷ�� 3
		{
			{1,{"Helmet"}}
		}
	},
	{--���� 4
		{
			{1,{"Gloves"}}
		}
	},
	{--Ь�� 5
		{
			{1,{"Boots"}}
		}
	},
	{--����	6
		{
			{1,{"Amulet"}}
		}
	},
	{--��ָ 7
		{
			{2,{"Ring"}}
		}
	},
	{--���� 8
		{
			{1,{"Belt"}}
		}
	},
}

