package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_needMengYanLv=90--70���Ժ�͵�����
SetTaskShengJiData("a9q1",nil,"2_9_1",60)--ˮ��72��
SetTaskShengJiData("a5q7",nil,"1_5_5",46)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="Ů��"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="������"
--SetUseWeapon(str)--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("����|��")
SetUseZhuangBeiTypeData("StrInt","����")
SetUseZhuangBeiTypeData("StrInt","�·�")
SetUseZhuangBeiTypeData("Int","Ь��")
SetUseZhuangBeiTypeData("StrInt","ͷ��")

g_attackDis=60					--��������




--SetUseZhuangBeiTypeData(typeStr,pos)--�����Լ��õ�װ������ 
--typeStr=���� ֧��("StrDex"Ϊ������װ+�������� "Str"ΪҰ����װ+���� "DexInt"Ϊ��Ӱװ+���ܻ��� "Int"ΪŮ��װ+���� "Dex"Ϊ����װ+���� "StrInt"Ϊʥ����ɮװ+��������)
--pos=��λ֧�ֲ�λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����nilΪ��������
SetUseZhuangBeiTypeData("Int")
--SetNeedSkillLineData(val,str,invalidLv)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч





SetNeedSkillLineData(50,"����,Metadata/Items/Gems/SkillGemFireball",20)
SetNeedSkillLineData(90,"�ٻ���ŭ����,Metadata/Items/Gems/SkillGemSummonRagingSpirit|�ٻ������˺�(��),Metadata/Items/Gems/SupportGemMinionDamage",16)
SetNeedSkillLineData(80,"�ٻ�����,Metadata/Items/Gems/SkillGemRaiseSpectre|Ԫ��܊��o��,Metadata/Items/Gems/SupportGemSummonElementalResistance|����o��,Metadata/Items/Gems/SupportGemMeatShield|���B����o��,Metadata/Items/Gems/SupportGemFeedingFrenzy|�ن���Ӱ�o��,Metadata/Items/Gems/SupportGemSummonGhostOnKill|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast",nil,nil,0)
SetNeedSkillLineData(95,"ħ������,Metadata/Items/Gems/SkillGemRaiseZombie|���ش���o��,Metadata/Items/Gems/SupportGemMultistrike|������������o��,Metadata/Items/Gems/SupportGemMeleePhysicalDamage|�ن�������o��,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)
SetNeedSkillLineData(100,"����,Metadata/Items/Gems/SkillGemAbsolution|�ن���Ӱ�o��,Metadata/Items/Gems/SupportGemSummonGhostOnKill|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast|���ӻ�������o��,Metadata/Items/Gems/SupportGemAddedFireDamage",nil,nil,0)
SetNeedSkillLineData(80,"������,Metadata/Items/Gems/SkillGemFlameDash|Ԫ�؜Q��,Metadata/Items/Gems/SkillGemPurity|���ٹ����o��,Metadata/Items/Gems/SupportGemFasterAttack",nil,4,0)
SetNeedSkillLineData(80,"���}�����D�v,Metadata/Items/Gems/SkillGemFlameTotemRoyale|���L֮��,Metadata/Items/MicrotransactionSkillEffects|����,Metadata/Items/Gems/SkillGemConvocation",nil,nil,0)
SetNeedSkillLineData(75,"�ن�ʳ��ħ��,Metadata/Items/Gems/SkillGemSummonCarrionGolem|�ن��}��,Metadata/Items/Gems/SkillGemSummonRelic|����o��,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)

-- SetNeedSkillLineData(100,"����֮��,Metadata/Items/SkillGemMoltenStrike|����ŭ���o��,Metadata/Items/Gems/SupportGemSpiritStrike|�����o��,Metadata/Items/Gems/SupportGemRuthless",16)
SetNeedSkillLineData(100,"�ٻ�����,Metadata/Items/Gems/SkillGemRaiseSpectre|����o��,Metadata/Items/Gems/SupportGemMeatShield|���B����o��,Metadata/Items/Gems/SupportGemFeedingFrenzy|�ن���Ӱ�o��,Metadata/Items/Gems/SupportGemSummonGhostOnKil",nil,2,1)
SetNeedSkillLineData(85,"ħ������,Metadata/Items/Gems/SkillGemRaiseZombie|�ن�������o��,Metadata/Items/Gems/SupportGemMinionDamage|�ن����ٶ��o��,Metadata/Items/Gems/SupportGemMinionSpeed|����o��,Metadata/Items/Gems/SupportGemMeatShield",nil,5,1)
-- SetNeedSkillLineData(100,"�Ԛ�֮��,Metadata/Items/Gems/SkillGemDominatingBlow|����ŭ���o��,Metadata/Items/Gems/SupportGemSpiritStrike|���ش���o��,Metadata/Items/Gems/SupportGemMultistrike|���ٹ���(��),Metadata/Items/Gems/SupportGemFasterAttack|�o�w�o��,Metadata/Items/Gems/SupportGemFortify|������������o��,Metadata/Items/Gems/SupportGemMeleePhysicalDamage")
SetNeedSkillLineData(80,"���L֮��,Metadata/Items/MicrotransactionSkillEffects|�C�^,Metadata/Items/Gems/SkillGemDesecrateRoyale|����,Metadata/Items/Gems/SkillGemConvocation|���}�����D�v,Metadata/Items/Gems/SkillGemFlameTotemRoyale",nil,10,1)
SetNeedSkillLineData(80,"Ԫ�؜Q��,Metadata/Items/Gems/SkillGemPurity|������,Metadata/Items/Gems/SkillGemFlameDash|����֮��,Metadata/Items/Gems/SkillGemDefianceBanner",nil,4,1)
SetNeedSkillLineData(95,"����,Metadata/Items/Gems/SkillGemAbsolution|�ن���Ӱ�o��,Metadata/Items/Gems/SupportGemSummonGhostOnKill|ʩ��ޒ��o��,Metadata/Items/Gems/SupportGemMulticast|���ӻ�������o��,Metadata/Items/Gems/SupportGemAddedFireDamage",nil,9,1)
-- SetNeedSkillLineData(95,"����,Metadata/Items/Gems/SkillGemAbsolution|���g���R�o��,Metadata/Items/Gems/SupportGemCurseOnHit|Ԫ��Ҫ��,Metadata/Items/Gems/SkillGemElementalWeakness|˥��,Metadata/Items/Gems/SkillGemEnfeeble",nil,9,1)
SetNeedSkillLineData(75,"�ن�ʳ��ħ��,Metadata/Items/Gems/SkillGemSummonCarrionGolem|�ن��}��,Metadata/Items/Gems/SkillGemSummonRelic|�ن�������o��,Metadata/Items/Gems/SupportGemMeatShield",nil,3,1)





--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("����ʱʩ��(��)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",10)
SetSkillLimitMaxLv("���Ƿ���","Metadata/Items/Gems/SkillGemBoneOffering",8)
-- SetSkillLimitMaxLv("���һ���","Metadata/Items/Gems/SkillGemMoltenShell",10)
-- SetSkillLimitMaxLv("����","Metadata/Items/Gems/SkillGemConvocation",7)
SetSkillLimitMaxLv("���һ���","Metadata/Items/Gems/SkillGemMoltenShell",12)
SetSkillLimitMaxLv("�r���i�","Metadata/Items/Gems/SkillGemTemporalChains",11)




--AddAttackSkillData(name,className,noLine)--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��

---�ҵ�ͼ�ٻ��Ļ�
---�ҵ�ͼ�ٻ��Ļ�
SetYiJieZhaoHuanLingTiData("1_5_2","������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")

--�ؓ�

AddAttackSkillData("����","absolution")
--AddAttackSkillData("�绡","arc")
AddAttackSkillData("�ٻ���ŭ����","summon_raging_spirit",true)
--AddAttackSkillData("������","sunder")
AddAttackSkillData("�Ԛ�֮��","conversion_strike")
--AddAttackSkillData("������","sunder")
--AddAttackSkillData("����֮��","molten_strike")
AddAttackSkillData("�`�wͶ�S","thrown_weapon")
AddAttackSkillData("����","fireball")
AddAttackSkillData("��ͨ����","melee")

--SetNeedZhaoHuanMonster(name,className,val)--������Ҫ�ٻ���������Զ�ѡ����ش���ٻ� name=������ className=�������� val=����
-- SetNeedZhaoHuanMonster("�������Ȯ","Metadata/Monsters/Hellion/Hellion3",6)
SetNeedZhaoHuanMonster("������","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",50)
SetNeedZhaoHuanMonster("̫������","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",4)
SetNeedZhaoHuanMonster("���ڴ�","Metadata/Monsters/Guardians/GuardianFire_Blue",3)--���ڴ�
SetNeedZhaoHuanMonster("�����ڴ�","Metadata/Monsters/Guardians/GuardianFire",2)
SetNeedZhaoHuanMonster("��������","Metadata/Monsters/WickerMan/WickerMan",1)
SetNeedZhaoHuanMonster("��ħū��","Metadata/Monster/CageSpider/CageSpider2",1)

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("����ʱʩ��(��)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",10)
--SetSkillLimitMaxLv("��Ӱ��ۙ","Metadata/Items/Gems/SkillGemPhaseRun",1)
SetSkillLimitMaxLv("Ѫ���I","Metadata/Items/Gems/SkillGemFleshOffering",13)
SetSkillLimitMaxLv("䓽��F��","Metadata/Items/Gems/SkillGemSteelskin",15)

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_cold_damage_resistance_%",0.2)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_and_lightning_damage_resistance_%",0.2)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_resist_all_elements_%",0.3)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_fire_damage_resistance_%",0.1)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_cold_damage_resistance_%",0.1)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_lightning_damage_resistance_%",0.1)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","cold_damage_resistance_%",0.1)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","fire_damage_resistance_%",0.1)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","lightning_damage_resistance_%",0.1)--���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","base_movement_velocity_+%",0.3)--�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��","movement_velocity_+%",0.3)--�ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","����|����|��|˫�ָ�|Ь��|����|ͷ��","����",100)--ÿ��һ�߼�xx�����
--Ů��
SetAtuoChangeEquipData("Ů��","Ь��|����|�·�|ͷ��","����",0.1)--ÿһ����
SetAtuoChangeEquipData("Ů��","��","����",0.1)--�ܼӻ�������������ʩ�ű�ʯ
SetAtuoChangeEquipData("Ů��","��","base_maximum_life",0.8)--�ܼӻ��A�������
SetAtuoChangeEquipData("Ů��","����","base_maximum_life",0.5)--�ӻ��A�������
SetAtuoChangeEquipData("Ů��","����","base_maximum_life",0.5)--�ӻ��A�������
SetAtuoChangeEquipData("Ů��","����","minion_damage_+%",9999,2)--�ٻ��˺�����
--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

---------------------------------------�߼���װ
--SetGaoJiChangeEquipData(job,name,className,wordName,wordClassName,lineSocketCnt) �߼���װ���� ���û�ָ���Ĵ�ָ����׺��װ��
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ|����) ���������м���|����
--name ��Ʒ��
--className ��Ʒ����
--wordName ָ����׺
--wordClassName ָ����׺����
--lineSocketCnt ��Ҫ���Ķ����� ��������4 ���ͻ��4��Ϊֹ nil��0����Ϊ���� ���β�����
SetGaoJiHuanZhuangData("Ů��","�۽����","Metadata/Items/Amulets/Amulet6","��֮��","Winterheart")
-- SetGaoJiHuanZhuangData("Ұ����","�β�����","Metadata/Items/Belts/Belt5","������˹֮ӡ","Perandus Blazon")
-- SetGaoJiHuanZhuangData("����","����ָ","Metadata/Items/Rings/Ring4","̰��֮��","Andvarius")
-- SetGaoJiHuanZhuangData("Ů��","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�޾�֮��","Tabula Rasa")
SetGaoJiHuanZhuangData("Ů��","���u�h��","Metadata/Items/Armours/BodyArmours/BodyStrInt8","��Ϣ","Icetomb",4,39)
SetGaoJiHuanZhuangData("Ů��","��ë����","Metadata/Items/Armours/Gloves/GlovesInt1","�Ա��ߵĻ���","Sadima's Touch",4,28)
-- SetGaoJiHuanZhuangData("Ů��","��������","Metadata/Items/Armours/Shields/ShieldStr17","ʨ�۵���ҫ֮��","Lioneye's Remorse",3,15)
SetGaoJiHuanZhuangData("Ů��","������ѥ","Metadata/Items/Armours/Boots/BootsDexInt3","��ҫ","Sundance",4,28)
SetGaoJiHuanZhuangData("Ů��","����֮��","Metadata/Items/Armours/Helmets/HelmetDexInt4","����֮��","Leer Cast",4,28)
SetGaoJiHuanZhuangData("Ů��","�����ָ","Metadata/Items/Rings/Ring8","�`��","Thief's Torment")
--SetGaoJiHuanZhuangData("Ů��","�����޿�","Metadata/Items/Armours/Helmets/HelmetStrInt7","�����ƵĘs��","Geofri's Crest",4,28)
--SetGaoJiHuanZhuangData("����","�ߠ���","Metadata/Items/Weapons/OneHandWeapons/OneHandAxes/OneHandAxe20","�����֣��ܿ�","Augyre",3,15)
-- SetGaoJiHuanZhuangData("Ů��","���͸���ҩ��","Metadata/Items/Flasks/FlaskHybrid3","���Ӿ���","Divination Distillate",nil,nil,2)
-- SetGaoJiHuanZhuangData("Ů��","��Ӱ����","Metadata/Items/Armours/Gloves/GlovesStrDex4","����֮��","Aurseize",4,28)
-- SetGaoJiHuanZhuangData("Ů��","��Խ�ډ�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","���K�^","Advancing Fortress",3,15,nil,3)
-- SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,7,0,1,"�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
-- SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,8,1,1,"�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
--AddWebNeedBuyGoods("�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic",nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",1,35,1)
-- SetGaoJiHuanZhuangData("Ů��","ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4","�������E","Goldwyrm",4,28)
-- SetGaoJiHuanZhuangData("Ů��","�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
--AddWebNeedBuyGoods("��������","Metadata/Items/Armours/Shields/ShieldStr17","�{�۵Ęsҫ֮��","Lioneye's Remorse",70,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",1,30,1,false)
--AddWebNeedBuyGoods("��Խ�ډ�","Metadata/Items/Weapons/OneHandWeapons/Claws/Claw12","���K�^","Advancing Fortress",50,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",1,3,1,false)
--AddWebNeedBuyGoods("�۽����","Metadata/Items/Amulets/Amulet6","��֮��","Winterheart",40,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",1,2,1,false)
SetGaoJiHuanZhuangData("Ů��","��ľ����","Metadata/Items/Armours/Shields/ShieldStr14","��â����","Chernobog's Pillar",3,15)
-- SetGaoJiHuanZhuangData("Ů��","��������","Metadata/Items/Armours/Shields/ShieldStr16","�h�����z�a","Ahn's Heritage",3,15)

-- AddWebNeedBuyGoods("ɰӰ��ѥ","Metadata/Items/Armours/Boots/BootsDex4","�������E","Goldwyrm",28,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",1,20,1,nil,"����:��Ʒ����������� #%,8")

-- SetUseBuffSkill("Ѫ������ʯ","blood_sand_armour","Ѫ��","blood_armour")--
SetUseBuffSkill("Ѫ������ʯ","blood_sand_armour","��ʯ","sand_armour")--

SetGaoJiHuanZhuangData("Ů��","Ƥ������","Metadata/Items/Belts/Belt3",nil,nil,nil,nil,nil,11,1,1)
-- SetGaoJiHuanZhuangData("Ů��","�۽��o���","Metadata/Items/Amulets/Amulet6","����","The Ascetic")
-- SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4",nil,nil,nil,nil,nil,7,0,1)
-- SetGaoJiHuanZhuangData("Ů��","����ָ","Metadata/Items/Rings/Ring4","̰��֮��","Andvarius",nil,nil,nil,8,nil,1)

SetZhengTiColorVarData(10,1,1,2,0,600,true)--Ь����ɫ
SetZhengTiColorVarData(9,1,0,3,0,600,true)--������ɫ
SetZhengTiColorVarData(5,2,0,2,0,600,true)--ͷ����ɫ

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч

--SetNeedSkillLineData(30,"����֮��,Metadata/Items/SkillGemMoltenStrikestr",50,nil)




--SetGaoJiHuanZhuangData("Ů��","�۽����","Metadata/Items/Amulets/Amulet6","����","The Ascetic",nil,nil,nil,nil,nil,1)

--SetNeedAddTianFu(tfStr)--�����츳�ӵ� tfStr=config.ini�����úõ��츳 ��"Ů��=name1-className1|name2-className2|"
SetNeedAddTianFu("Ů��=spell_damage721-���g������ħ��|intelligence922-�ǻ�|intelligence920-�ǻ�|intelligence918-�ǻ�|strength828-����|minion_duration2624_-�ن�������ͳ��m�r�g|minion_duration2625-�ن�������ͳ��m�r�g|minion_duration_notable2626-�־ú���|mastery_minionoffence186-�ن������Ԍ���-40073|intelligence882-�ǻ�|dexterity869-����|intelligence885-�ǻ�|spellcaster_notable1873-�Ʋ�|life1407-����|discipline_and_training1194-����Ӗ��|life1405-����|melee_notable1874-�}��֮��|savant901-�W�g��֮�y��|minion_damage285-�ن������|lord_of_the_dead1122-���`֮��|strength786-����|dexterity973-����|minion_damage1126-�ن������������|minion_damage1127-�ن������������|minion_damage284-�ن������������|additional_minions1123-���`֮�s|minion_damage1152-�ن�������|minion_life1124-�ن�������|minion_damage769-�ن��﹥����ʩ���ٶ�|player_and_minion_notable2237-����̖��|additional_minions1150-�I��|mastery_miniondefence180-�ن�����R����-46636|intelligence890-�ǻ�|intelligence886-�ǻ�|agility834-�`��|intelligence921-�ǻ�|intelligence955-�ǻ�|minion_life1125-�ن��������͂���|minion_damage1128-�ن������|minion_damage1129-�ن������|additional_spectre278-���`�C��|strength1000-����|strength814-����|shield_block32-�ֶ�Ԫ�ؿ���|shield_block_and_block_recovery29-�ֶܶ��Ʒ��g�����Ԫ�ؿ���|shield_mastery34-���o�}��|shield_defences1063-���Ƹ���ͳֶ�Ԫ�ؿ���|life_mana1639-ħ��������|life_mana_notable1638-���c�`|intelligence919-�ǻ�|intelligence912-�ǻ�|intelligence917-�ǻ�|speed_and_minion_speed2231-�ن�������͹�����ʩ���ٶ�|speed_and_minion_speed2230-�ن�������͹�����ʩ���ٶ�|player_and_minion_notable2238-���H|accuracy_minion_accuracy_and_resists2235-�ن������|player_and_minion_notable2240-�������|accuracy_minion_accuracy_and_resists2234-�ن������|player_and_minion_notable2236-���x܊�F|life1161-�����������o��|fitness1212-���w֮����|intelligence101-�ǻ�|intelligence902-�ǻ�|life1219-����|divine_toughness1167-���̜ʂ�|life1409-����|strength1001-����|life1210-����|fitness1186-��I|life1209-����|mastery_life136-��������-47642|strength998-����|intelligence945-�ǻ�|strength809-����|strong_arm118-������|life599-����|heart_of_the_gladiator825-��ʿ֮��|life600-����|troll's_blood203-��ʿ֮Ѫ|strength829-����|strength792-����|strength785-����|life_and_armour1901-�����c�o��|life_armour_flask_life_notable1903-����|mastery_life134-�o�׌���-10680|strength818-����|strength820-����|armour91-�o�׺�Ԫ�ؿ���|armour93-�o�׺�Ԫ�ؿ���|steel_skin1275-���֮�`|life1195-����|life1221-����|life1169-����|bloodless156-�oѪ֮�w|mastery_armour10-�o�׌���-48720|strength1002-����|agility876-��Ⱥ��|savant878-�����ǻ�|life204-�������o��|life185-�������o��|armour87-�������o��|life186-�������o��|mastery_minionoffence184-�ن������Ԍ���-41544|mastery_life131-��������-34242|mana388-ħ���؏ͺ�����|mana397-ħ���؏ͺ�����|life_mana_notable1730-���ٻ؏�|life700-ħ��������|life_and_armour1902-�����c�o��|life182-�����������o��|life187-�����������o��|")
SetNeedAddTianFu("Ů������=|AscendancyOccultist5-�����o�ܡ������o�ܻ؏�����|AscendancyOccultist10-���ӱډ�|AscendancyOccultist3-�����o�ܡ�����ͻ������|AscendancyOccultist11-̓�o֮��|AscendancyOccultist13-�����o�ܡ��������|AscendancyOccultist15-�����h|")


g_yiJieLv=65				    --���˶��ټ���ȥˢ���