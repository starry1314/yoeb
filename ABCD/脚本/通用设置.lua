
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
g_attackDis=50					--��������
g_yiJieTimeOut=15*60			--����ͼ�ڵĳ�ʱʱ�� ��λΪ�� ���δ���þͻ���g_timeOut *�ǳ˺� ����Ϊ15����60=15����
g_timeOut=25*60					--��һ����ͼ����ʱ�䳬�����õ� �����¿�ͼ���� ��λΪ��
g_addTianFu=true				--�Զ����趨�õ����ü��츳 trueΪ�� nil��falseΪ����
g_shengJiBaoShi=true			--�Զ�������ʯ trueΪ���� nil��falseΪ������
g_sellSkillGem=true				--�Զ�������40Ʒ�ʵļ��ܱ�ʯ
g_notHuanYaoLv=82				--���ڵ��ڶ��ټ�ֻ����ɫ����ҩ 
g_needAutoChangeEquip=false		--�����Զ���װ trueΪ�� nil��falseΪ����
g_needAutoSetBaoShi=false		--�����Զ�����ʯ trueΪ�� nil��falseΪ����
g_bossGiveZhuangBei=false		--����ʱ�ֿ�Ÿ���ȱ�ٵĸ߼���װ�е�װ�� trueΪ�� falseΪ���� �ǶԲֿ�����õ�
g_xiaoHaoGetZhuangBei=false		--�һ�����װ�ֿ��������߼���װ�е�װ�� trueΪ���� falseΪ������ 

--SetZhuangBeiBoss(bossName,srvName)--���÷�װ�ֿ�� bossName=��װ������ �ַ����� srvName=���������֣�����������ͬһ�����õĻ����Ϸ��������ֿɵ������� ������ǿɺ��� ����nil 
--SetZhuangBeiBoss("�����������Լ��ķ�װ�ֿ������","������")--��װ���Ĳֿ�� �������Ҫ ��ע�͵� ֻ�йһ��Ÿ��ֿ�Ŷ��� ����˺� ����Ч

--SetNeedAddTianFu(tfStr)--��������츳�ӵ� 
SetNeedAddTianFu("����ͼ�츳=atlas_boss_adjacent_maps_2-�����؈D����C��|atlas_path_11-�����؈D����C��|atlas_path_23_-�����؈D����C��|atlas_boss_adjacent_maps_1-�����؈D����C��|atlas_boss_adjacent_maps_8-�����؈D����C��|atlas_kirac_1_10-�������΄ՙC��|atlas_kirac_1_9-�������΄ՙC��|atlas_zana_1_6-���c�ɲ�|atlas_kirac_1_8_-�������΄ՙC��|atlas_kirac_1_7-�������΄ՙC��|atlas_path_96-�����}�u�؈D|atlas_path_94-�����}�u�؈D|atlas_map_drops_8-�����}�u�؈D|atlas_path_92-�����}�u�؈D|atlas_path_61-��Ʒ����|atlas_path_44-��Ʒ����|atlas_path_35-��Ʒ����|atlas_path_90-�����}�u�؈D|atlas_keystone_smallnodes_1-����֮·|atlas_path_37-�����؈D����C��|atlas_path_30-�����؈D����C��|atlas_path_18-�����؈D����C��|atlas_path_15-�����؈D����C��|atlas_path_2-�����؈D����C��|atlas_kirac_2_1-�������΄ՙC��|atlas_kirac_2_2-�������΄ՙC��|atlas_kirac_2_3-�������΄ՙC��|atlas_map_tier_5_1-���A�؈D�C��|atlas_map_tier_5_2-���A�؈D�C��|atlas_map_tier_3_1-���A�؈D�C��|atlas_keystone_enhanced_kirac_crafts-���d�·|atlas_map_tier_3_2-���A�؈D�C��|atlas_map_tier_4_2-���A�؈D�C��|atlas_map_tier_4_1-���A�؈D�C��|atlas_path_17-�����؈D����C��|atlas_map_tier_2_1-���A�؈D�C��|atlas_map_tier_2_2-���A�؈D�C��|atlas_path_38-�����؈D����C��|atlas_path_21-�����؈D����C��|atlas_path_27-�����؈D����C��|atlas_path_28-�����؈D����C��|atlas_map_tier_1_2_-���A�؈D�C��|atlas_map_tier_1_1-���A�؈D�C��|atlas_path_14-�����؈D����C��|atlas_path_26-�����؈D����C��|atlas_path_25_-�����؈D����C��|atlas_path_16-�����؈D����C��|atlas_path_24_-�����؈D����C��|atlas_path_12-�����؈D����C��|atlas_path_22-�����؈D����C��|atlas_path_13-�����؈D����C��|atlas_path_8-�����؈D����C��|atlas_path_9-�����؈D����C��|atlas_path_20-�����؈D����C��|atlas_path_1-�����؈D����C��|atlas_path_19-�����؈D����C��|atlas_path_10-�����؈D����C��|atlas_path_6-�����؈D����C��|atlas_path_5-�����؈D����C��|atlas_path_30_1-�����؈D����C��|atlas_map_drops_1-�����}�u�؈D|atlas_map_drops_10-�����}�u�؈D|atlas_map_drops_11-�����}�u�؈D|atlas_path_4-�����؈D����C��|atlas_path_7-�����؈D����C��|atlas_path_88-�����}�u�؈D|atlas_map_drops_12_-�����}�u�؈D|atlas_path_87-�����}�u�؈D|atlas_map_drops_13-�����}�u�؈D|atlas_map_drops_16-�����}�u�؈D|atlas_map_drops_15-�����}�u�؈D|atlas_path_82-�����}�u�؈D|atlas_map_drops_14-�����}�u�؈D|atlas_path_85-�����}�u�؈D|atlas_map_drops_4-�����}�u�؈D|atlas_path_83-�����}�u�؈D|atlas_map_drops_5-�����}�u�؈D|atlas_path_84-�����}�u�؈D|")


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
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q3")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
----A4
AddNeedBuySkillTime(3,"a4q2")
AddNeedBuySkillTime(2,"a4q2")
AddNeedBuySkillTime(1,"a4q2")
AddNeedBuySkillTime(3,"a4q6")
AddNeedBuySkillTime(3,"a4q3")
AddNeedBuySkillTime(3,"a4q4")
AddNeedBuySkillTime(4,"a4q5")
AddNeedBuySkillTime(3,"a4q1")
----A5
AddNeedBuySkillTime(3,"a5q3")
AddNeedBuySkillTime(2,"a5q3")
AddNeedBuySkillTime(1,"a5q3")
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
--SetNeedFlaskData(pos,flask)--����ҩ  pos=λ�� 1-5  flask=ҩ �ַ����ͣ�֧������ (����ҩ��,ħ��ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,����ҩ��,ˮ��ҩ��,�Ͼ�ҩ��,ʯӢҩ��,����ҩ��,ʯ��ҩ��,����ҩ��,����ҩ��,���ҩ��,����ҩ��,����ҩ��)
SetNeedFlaskData(1,"����ҩ��","nil")
SetNeedFlaskData(2,"ħ��ҩ��","nil")
SetNeedFlaskData(3,"����ҩ��","nil")
SetNeedFlaskData(4,"�Ͼ�ҩ��","nil")
SetNeedFlaskData(5,"ˮ��ҩ��","nil")

--AddNotMakeTaskData(taskClassName)--��Ӳ���Ҫ�������� taskClassNameΪ��������
AddNotMakeTaskData("a2q5")--����ʥ��
AddNotMakeTaskData("a2q10")--��ɫ����
AddNotMakeTaskData("a3q13")--�����Ŀ���
--AddNotMakeTaskData("a3q12")--����֮��
AddNotMakeTaskData("a6q5")--��˹�ش���
--AddNotMakeTaskData("a7q8")--��˹�ص�Ĺ��
AddNotMakeTaskData("a7q5")--��ɫ��׹
AddNotMakeTaskData("a8q5")--��˹����֮��
AddNotMakeTaskData("a9q4")--����֮��
AddNotMakeTaskData("a10q4")--�ް��ɻ�
AddNotMakeTaskData("a10q5")--�֮·


--AddUseGoodsData(name,className)--���Ҫʹ�õ���Ʒ������һ����������nil --name=��Ʒ���� className=��Ʒ���� 
AddUseGoodsData("���x֮��")--����츳֮��
AddUseGoodsData("���֮��")--������֮��


--SetZhongShenData(className1,className2)--����Ҫ�ӵ���������� className1=�߽��������� �ַ����� className2=�ͽ��������� �ַ����� 
SetZhongShenData("Lunaris","Gruthkul")--������ӰŮ��֮�������֮ĸ ��³˿��֮��

------------------��ַ���
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--���ô��ҳ�� 
--saveType ��Ʒ���� �ַ����� ֧���������� ������nil ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--pageName �ֿ�ҳ���� �ַ����� ���������м���|����
--goodsName ��Ʒ�� �ַ����� ������nil
--goodsClassName ��Ʒ���� �ַ����� ������nil
--wordName ��׺�� �ַ����� ������nil
--wordClassName ��׺���� �ַ����� ������nil
--pageType �ֿ�ҳ���� ��ֵ�� �����nil��0 Ϊ��ͨ�ֿ� 1Ϊͨ��ҳ 2Ϊ���˿�ҳ  3Ϊ��Ƭҳ

-------ע��Ҫ������ǰ С�� ���������ں������
SetSaveIndex("ͨ��|�ɶѵ�ͨ��","1")
SetSaveIndex("����ͼ","2")
SetSaveIndex("����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|����|����|Ь��|ͷ��","3|4")
SetSaveIndex("�鱦|���˿�|�·�|��|����|��ͼ��Ƭ","4")
SetSaveIndex("����ҩ��|ħ��ҩ��|����ҩ��|����ҩ��","4")
SetSaveIndex(nil,"4","�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"4","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4","朽Yʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4","����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")

------------------�һ����
g_yijieNoWhiteMonster=false		--���ʱ�Ƿ񲻴�׹� trueΪ���� nil��falseΪ��
g_yijieNoWhiteBox=true			--���ʱ�Ƿ񲻿������� trueΪ���� nil��falseΪ��
g_useYiJieWanChengDuLv=90	--ʹ�����������ɶ��Ǹ����õĵȼ������δ������ˢȫͼ
g_yiJieWanChengDu=0.9		--�����ɶ� ��ɶ��پͻ�ȥ Ϊ1��1���µ�С��
g_yongHengShiBeiLv=90		--���ڵ��ڶ��ټ�������ʯ�� 
g_needTaFangLv=90			--���ڵ��ڶ��ټ�������
g_needLianMoLv=90			--���ڵ��ڶ��ټ�����ħ
g_attackFreezeMonsterLv=90	--���ڵ��ڶ��ټ��������
g_needChuanYueLv=90			--���ڵ��ڶ��ټ���Խ��
g_needLieXiLv=90			--��춵��ڶ��ټ���ʱ���ѷ��
g_needMiWuLv=90				--���ڵ��ڶ��ټ�������

g_yuyanCnt=nil				--����������ȥԤ�ԣ�С��10���һ���nil�����ᴥ�� ����趨ȥԤ�ԣ������滹��Ҫ���ý��׸��ֿ�ŵ�Ԥ��

--��ͼ���
--SetNotMapGoMap(className,cnt) �����޵�ͼ��δ���ȼ�ʱҪˢ�ľ����ͼ className�ַ����� ��ͼ���� cnt=����
SetNotMapGoMap("2_9_1",10)	--�޵�ͼʱˢѪɫͨ��

g_yiJieLv=73				--���˶��ټ���ȥˢ���
g_checkSellMapCnt=60		--��ͼ������������Ż�����۵�ͼ
g_destroyNoUseMap=false		--�����������ò�ʹ�õĵ�ͼ nil��falseΪ������
g_mapUseFuHaoLv=76			--���ڵ��ڶ��ټ�����ͼʹ�ø���ʯ nilΪ��Զ��ʹ��
g_mapUseZengFuLv=nil			--���ڵ��ڶ��ټ�����ͼʹ������ʯ nilΪ��Զ��ʹ��
g_mapUseDianJingLv=76		--���ڵ��ڶ��ټ��԰�ͼʹ�õ��ʯ nilΪ��Զ��ʹ��
g_mapUseTuiBianLv=72		--���ڵ��ڶ��ټ��԰�ͼʹ���ɱ�ʯ nilΪ��Զ��ʹ��
g_mapUseJiHuiLv=nil			--���ڵ��ڶ��ټ��԰�ͼʹ�û���ʯ nilΪ��Զ��ʹ��
g_mapUseWaErLv=82			--���ڵ��ڶ��ټ��԰ס�����ͼʹ���߶����� nilΪ��Զ��ʹ��
g_mapUseDingZiLv=nil			--���ڵ��ڶ��ټ�ʹ����ͼ�� nilΪ��Զ��ʹ��
g_noUseMapLv=0				--��ʹ�á�������ٽ׼����ϵĵ�ͼ nil��0Ϊ���� �������ȵĵ�ͼ����

g_mapUseOrangeMap=false		--trueΪʹ�ó�ͼ nil��falseΪ��ʹ��
--SetYouXianUseMapData(name,className,color)--��������ʹ�õ�����ͼ 
--name �ַ����� ��ͼ�� 
--className �ַ����� ��ͼ���� 
--color �ַ����� ��ɫ 0��1��2��3�� �м���|����


-- SetNoUseMapShuXing(className)--���ò�ʹ�ô���ĳ�����Եĵ�ͼ,���� classNameΪ��������
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--���ò���ħ����������
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--�޷��ظ�
SetNoUseMapShuXing("is_blighted_map")--�����ͼ

--SetLastEnterSmallMap(mapClassName)--������Ҫ���С���������ͼ
--mapClassName ����ͼ���� �ַ�����

SetLastEnterSmallMap("MapWorldsArachnidTomb")--���ĹѨ
SetLastEnterSmallMap("MapWorldsTropicalIsland")--����ĵ�
SetLastEnterSmallMap("MapWorldsBurialChambers")--�ı�Ĺ��
SetLastEnterSmallMap("MapWorldsResidence")--��������
SetLastEnterSmallMap("MapWorldsCage")--��������
SetLastEnterSmallMap("MapWorldsRamparts")--�I������
SetLastEnterSmallMap("MapWorldsCaldera")--��ɽ�׿�
SetLastEnterSmallMap("MapWorldsVaalPyramid")--�߶�������
SetLastEnterSmallMap("MapWorldsArena")--������
SetLastEnterSmallMap("MapWorldsOvergrownRuin")--�L���z�E
SetLastEnterSmallMap("MapWorldsGorge")--����ɽ��



--SetSellGoodsData(name,className,cnt,color)--������(��)�ĵ�ͼ 
--name=��Ʒ�� className=��Ʒ���� ��ʶ����Ʒ�� ʶ�𲻵���ʶ������ cnt=������ȥ�� color=��ɫ 0�� 1�� 2�� �����|����

SetSellGoodsData("���։VĹ","Metadata/Items/Maps/MapWorldsBarrows",3,"0|1|2|")
SetSellGoodsData("���L��ԭ","Metadata/Items/Maps/MapWorldsPlateau",3,"0|1|2|")
SetSellGoodsData("������","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
SetSellGoodsData("���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")

SetSellGoodsData("�ĵ�","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("Ѫ��ꇵ�","Metadata/Items/Maps/MapWorldsPrimordialBlocks",3,"0|1|2|")
SetSellGoodsData("Ĺ�ع�","Metadata/Items/Maps/MapWorldsGraveTrough",3,"0|1|2|")
SetSellGoodsData("��ɳ���^","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2|")
SetSellGoodsData("����ˮ��","Metadata/Items/Maps/MapWorldsStagnation",3,"0|1|2|")
SetSellGoodsData("��صVɽ","Metadata/Items/Maps/MapWorldsMineral",3,"0|1|2|")
SetSellGoodsData("�ۻ��Ҟ�","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2|")

SetSellGoodsData("�Κ�����","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("����Σ��","Metadata/Items/Maps/MapWorldsLookout",3,"0|1|2|")
SetSellGoodsData("ƽ픻�Į","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("���","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
SetSellGoodsData("����","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2|")
SetSellGoodsData("�����Ҟ�","Metadata/Items/Maps/MapWorldsStrand",3,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsResidence",3,"0|1|2|")
SetSellGoodsData("�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",3,"0|1|2|")

SetSellGoodsData("Ѫ���ӝ�","Metadata/Items/Maps/MapWorldsPrimordialPool",3,"0|1|2|")
SetSellGoodsData("�Oԭ��ñ","Metadata/Items/Maps/MapWorldsIceberg",3,"0|1|2|")
SetSellGoodsData("����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("��ӰĹ��","Metadata/Items/Maps/MapWorldsGraveyard",3,"0|1|2|")

SetSellGoodsData("�Ⱦ����","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("��������","Metadata/Items/Maps/MapWorldsMalformation",3,"0|1|2|")

SetSellGoodsData("��ɽ����","Metadata/Items/Maps/MapWorldsVolcano",3,"0|1|2|")
SetSellGoodsData("�h���м�","Metadata/Items/Maps/MapWorldsBazaar",3,"0|1|2|")
SetSellGoodsData("���g֮ͥ","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("Σ����Ū","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2|")
SetSellGoodsData("�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",3,"0|1|2|")
SetSellGoodsData("����ču","Metadata/Items/Maps/MapWorldsTropical",3,"0|1|2|")
SetSellGoodsData("�ě���Ұ","Metadata/Items/Maps/MapWorldsLeyline",3,"0|1|2|")
SetSellGoodsData("�Ļ�O��","Metadata/Items/Maps/MapWorldsCells",3,"0|1|2|")

SetSellGoodsData("ҹ�Z����","Metadata/Items/Maps/MapWorldsDarkForest",3,"0|1|2|")
SetSellGoodsData("��ɫޒ��","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
SetSellGoodsData("ĺ�⺣��","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("������Z","Metadata/Items/Maps/MapWorldsAcidCaverns",3,"0|1|2|")
SetSellGoodsData("�@�֘䅲","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2|")
SetSellGoodsData("����Ĺ�V","Metadata/Items/Maps/MapWorldsArachnidTomb",3,"0|1|2|")
SetSellGoodsData("���`�WԺ","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")

SetSellGoodsData("�޿�","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
SetSellGoodsData("��ԭС��","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsPrecinct",3,"0|1|2|")
SetSellGoodsData("ŭ��֮��","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("������Ĺ","Metadata/Items/Maps/MapWorldsCursedCrypt",3,"0|1|2|")
SetSellGoodsData("�xꎪz��","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
SetSellGoodsData("����֮��","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")

SetSellGoodsData("�����L��","Metadata/Items/Maps/MapWorldsArcade",3,"0|1|2|")
SetSellGoodsData("Σ�Cˮ��","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
SetSellGoodsData("¶̨���@","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2|")
SetSellGoodsData("ʧ��ǉ]","Metadata/Items/Maps/MapWorldsPort",3,"0|1|2|")
SetSellGoodsData("�z�E�U��","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2|")
SetSellGoodsData("�F�n���S","Metadata/Items/Maps/MapWorldsFactory",3,"0|1|2|")
SetSellGoodsData("�ű�","Metadata/Items/Maps/MapWorldsChateau",3,"0|1|2|")

SetSellGoodsData("�Ÿ��و�","Metadata/Items/Maps/MapWorldsRacecours",3,"0|1|2|")
SetSellGoodsData("���֮�p","Metadata/Items/Maps/MapWorldsSummit",3,"0|1|2|")
SetSellGoodsData("���볲Ѩ","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2|")
SetSellGoodsData("�������","Metadata/Items/Maps/MapWorldsCarcass",3,"0|1|2|")
SetSellGoodsData("��ĵV��","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2|")
SetSellGoodsData("�Ļ�լۡ","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")

SetSellGoodsData("���ֹ��@","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("�}��","Metadata/Items/Maps/MapWorldsBasilica",3,"0|1|2|")
SetSellGoodsData("ħ������","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("�p�t���","Metadata/Items/Maps/MapWorldsCrimsonTemple",3,"0|1|2|")
SetSellGoodsData("�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2|")
SetSellGoodsData("霪z����","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")


--SetCompoundDivinationCard(name,className,nType) --������Ҫ�ϳɵ����˿� name=��Ƭ�� className=��Ƭ���� nType=�ϳɳ��� nil����Ϊ���ۺ�ʱ���ϳ� 0Ϊû��ˢ���ź� 1Ϊֻ��ˢ���ź�
SetCompoundDivinationCard("�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�|��֮��","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ؔ����","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������","Metadata/Items/DivinationCards/DivinationCardTheInventor")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheUnion")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�}ͽ֮ؔ","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("�o��","Metadata/Items/DivinationCards/DivinationCardNoTraces")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheFool")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("������ʦ","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheLover")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--���úϳ��ҳ����˿�
SetCompoundDivinationCard("ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility")--���úϳ��ҳ����˿�

--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--���ÿ�ʼˢ���ʱ���⹺��ָ����Ʒ
--name=�Լ��е�ͨ���� className=�Լ��е�ͨ������ cnt=�����ٸ����� 0��nil ���ᴥ�� buyName=��Ҫ�������Ʒ�� buyClassName=��Ҫ�������Ʒ����

g_buyNpcData={
mapClassName="1_3_town"
,className="Metadata/NPC/Act3/ClarissaTown"
}--������3�� 1_3_town ��NPC�¹��� name:������ɯ

--SetNeedBuyGoodsData("֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,"���;���","Metadata/Items/Currency/CurrencyPortal")
--SetNeedBuyGoodsData("���;���","Metadata/Items/Currency/CurrencyPortal",nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",200,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",100,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare")


--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)-- ����Ҫ��������Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--czType:�ַ����� 0Ϊʰ 1�� 2�� 3�� 4���� �ɶ���м���|����
--name �ַ����� ��Ʒ������ �������� nil
--className �ַ����� ��Ʒ������ �������� nil
--wordName �ַ����� ��Ʒ�Ĵ�׺�� �������� nil
--wordClassName �ַ����� ��Ʒ�Ĵ�׺���� �������� nil
--pingzhi ������ ��Ʒ��Ʒ�� �������� nil
--cnt ������ �������� �������� nil
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--socketCnt ������ �ܶ����� �������� nil
--lineCnt ������ �������� �������� nil
--checkCangKu ���㱣������ʱ�Ƿ����ֿ��ڵ�����Ҳ�����ȥ nil��falseΪ������ֿ� true Ϊ��Ҫ����
SetGoodsCaoZuo("ͨ��|�ɶѵ�ͨ��|����ͼ","0|2")--����������ü��
SetGoodsCaoZuo("�������ܱ�ʯ|�������ܱ�ʯ","0|1",nil,nil,nil,nil,20)--ʰȡƷ�ʳ���5�ļ��ܱ�ʯ
SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--ʰȡ ���� ���۳�ɫ��Ʒ
SetGoodsCaoZuo(nil,nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,40)--���ϱ���40
SetGoodsCaoZuo(nil,nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,40)--���ϱ���40
SetGoodsCaoZuo(nil,nil,"֪ʶ����","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--���˾Ͳ�����
SetGoodsCaoZuo(nil,nil,"���;���","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,80)--���˾Ͳ�����
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6��װ���ü���
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6����װ���ü���
SetGoodsCaoZuo("צ","0|1|4",nil,nil,nil,nil,5,nil,"2")--���������Ļ�צ��
SetGoodsCaoZuo("�鱦|��Ԩ�鱦","0|1|4",nil,nil,nil,nil,nil,nil,"2")--ʰȡ ���� ���ۻ�ɫ��Ʒ�鱦
SetGoodsCaoZuo(nil,"1|3","���긣��","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0","ĥ��ʯ","Metadata/Items/Currency/CurrencyWeaponQuality")--ĥ��ʯ����
SetGoodsCaoZuo(nil,"0","����Ƭ","Metadata/Items/Currency/CurrencyArmourQuality")--����Ƭ����
SetGoodsCaoZuo(nil,"3","������Ƭ","Metadata/Items/Currency/CurrencyIdentificationShard")--������Ƭ��
SetGoodsCaoZuo(nil,"3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")--��Ԥ��
SetGoodsCaoZuo(nil,"0|2","�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"1|3","ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit")--
SetGoodsCaoZuo(nil,"1|3","���`ʯ","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")--
SetGoodsCaoZuo(nil,"1|3","����ʯ","Metadata/Items/Currency/CurrencyStrongboxQuality")--




SetGoodsCaoZuo("����ͼ","1|3","�����Ҟ�","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�I��ɽ��","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","����Ĺ��","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ĺɫɳ��","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","���E��Ĺ","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ߠ�������","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�ܲ����","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","�I����Ѩ","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("����ͼ","1|3","ħӰĹ��","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")

SetGoodsCaoZuo(nil,"1|3","������˹���","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)


--SetGoodsCaoZuo(nil,"0|2",nil,nil,nil,"Advancing Fortress",nil,nil,"3")--ʰȡ �洢ָ����ɫ��Ʒ
SetGoodsCaoZuo(nil,"1|3","��͸��ƿ","Metadata/Items/Currency/Mushrune1")
SetGoodsCaoZuo(nil,"1|3","�����ƿ","Metadata/Items/Currency/Mushrune2")
SetGoodsCaoZuo(nil,"1|3","������ƿ","Metadata/Items/Currency/Mushrune3")
SetGoodsCaoZuo(nil,"1|3","��G��ƿ","Metadata/Items/Currency/Mushrune4")
SetGoodsCaoZuo(nil,"1|3","��G��ƿ","Metadata/Items/Currency/Mushrune5")
SetGoodsCaoZuo(nil,"1|3","���{��ƿ","Metadata/Items/Currency/Mushrune6")
SetGoodsCaoZuo(nil,"1|3","Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetGoodsCaoZuo(nil,"1|3","���׻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingFire")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���L��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCold")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��䓻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLightning")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingPhysical")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�خ���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingChaos")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","ԭʼ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLife")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ܻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingDefences")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���g��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���໯ʯ","Metadata/Items/Currency/CurrencyDelveCraftingElemental")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��û�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���X��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��͸��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMana")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�o覻�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingQuality")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��ħ��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSockets")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","������ʯ","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","Ѫ�n��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingVaal")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�U�ջ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingAbyss")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���ѻ�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingMirror")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","��y��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","�Ɂy��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingRandom")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","���}��ʯ","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--�ɶѯBͨ؛
SetGoodsCaoZuo(nil,"1|3","肽�ʯ","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--�ɶѯBͨ؛

SetGoodsCaoZuo(nil,"1|3","��ӡ�ķ�ħ֮��","Metadata/Items/Currency/CurrencyItemisedCapturedMonster")--���о������ö���
SetGoodsCaoZuo(nil,"1|3","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetGoodsCaoZuo(nil,"1|3","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceHatred5")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceHatred7")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮��૾���","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮��������","Metadata/Items/Currency/CurrencyEssenceWoe5")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮��Х����","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetGoodsCaoZuo(nil,"1|3","��ʹ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWoe7")
SetGoodsCaoZuo(nil,"1|3","̰��֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetGoodsCaoZuo(nil,"1|3","̰��֮��૾���","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetGoodsCaoZuo(nil,"1|3","̰��֮��������","Metadata/Items/Currency/CurrencyEssenceGreed5")
SetGoodsCaoZuo(nil,"1|3","̰��֮��Х����","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetGoodsCaoZuo(nil,"1|3","̰��֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceGreed7")
SetGoodsCaoZuo(nil,"1|3","����֮���ﾫ��","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetGoodsCaoZuo(nil,"1|3","����֮��૾���","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceContempt5")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceContempt7")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮��૾���","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮��������","Metadata/Items/Currency/CurrencyEssenceSorrow4")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮��Х����","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetGoodsCaoZuo(nil,"1|3","��ϧ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSorrow6")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮��૾���","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮��������","Metadata/Items/Currency/CurrencyEssenceAnger4")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetGoodsCaoZuo(nil,"1|3","��ŭ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnger6")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮��૾���","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮��������","Metadata/Items/Currency/CurrencyEssenceTorment4")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮��Х����","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetGoodsCaoZuo(nil,"1|3","��ĥ֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceTorment6")
SetGoodsCaoZuo(nil,"1|3","�־�֮��૾���","Metadata/Items/Currency/CurrencyEssenceFear1")
SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear2")
SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear3")
SetGoodsCaoZuo(nil,"1|3","�־�֮��������","Metadata/Items/Currency/CurrencyEssenceFear4")
SetGoodsCaoZuo(nil,"1|3","�־�֮��Х����","Metadata/Items/Currency/CurrencyEssenceFear5")
SetGoodsCaoZuo(nil,"1|3","�־�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceFear6")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceSuffering3")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSuffering5")
SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage1")
SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage2")
SetGoodsCaoZuo(nil,"1|3","��Ű֮��������","Metadata/Items/Currency/CurrencyEssenceRage3")
SetGoodsCaoZuo(nil,"1|3","��Ű֮��Х����","Metadata/Items/Currency/CurrencyEssenceRage4")
SetGoodsCaoZuo(nil,"1|3","��Ű֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceRage5")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceWrath3")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceWrath5")
SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��������","Metadata/Items/Currency/CurrencyEssenceDoubt3")
SetGoodsCaoZuo(nil,"1|3","�ɻ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetGoodsCaoZuo(nil,"1|3","�ɻ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDoubt5")
SetGoodsCaoZuo(nil,"1|3","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetGoodsCaoZuo(nil,"1|3","�尾֮��������","Metadata/Items/Currency/CurrencyEssenceAnguish2")
SetGoodsCaoZuo(nil,"1|3","�尾֮��Х����","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetGoodsCaoZuo(nil,"1|3","�尾֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceAnguish4")
SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceLoathing2")
SetGoodsCaoZuo(nil,"1|3","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetGoodsCaoZuo(nil,"1|3","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceLoathing4")
SetGoodsCaoZuo(nil,"1|3","�̶�֮��������","Metadata/Items/Currency/CurrencyEssenceSpite1")
SetGoodsCaoZuo(nil,"1|3","�̶�֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceSpite2")
SetGoodsCaoZuo(nil,"1|3","�̶�֮��Х����","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetGoodsCaoZuo(nil,"1|3","�̶�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceSpite4")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetGoodsCaoZuo(nil,"1|3","����֮�޺𾫻�","Metadata/Items/Currency/CurrencyEssenceZeal2")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceZeal4")
SetGoodsCaoZuo(nil,"1|3","���֮��������","Metadata/Items/Currency/CurrencyEssenceMisery1")
SetGoodsCaoZuo(nil,"1|3","���֮��Х����","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetGoodsCaoZuo(nil,"1|3","���֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceMisery3")
SetGoodsCaoZuo(nil,"1|3","�ɵ�֮��������","Metadata/Items/Currency/CurrencyEssenceDread1")
SetGoodsCaoZuo(nil,"1|3","�ɵ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceDread2")
SetGoodsCaoZuo(nil,"1|3","�ɵ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceDread3")
SetGoodsCaoZuo(nil,"1|3","����֮��������","Metadata/Items/Currency/CurrencyEssenceScorn1")
SetGoodsCaoZuo(nil,"1|3","����֮��Х����","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetGoodsCaoZuo(nil,"1|3","����֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceScorn3")
SetGoodsCaoZuo(nil,"1|3","�ɶ�֮��������","Metadata/Items/Currency/CurrencyEssenceEnvy1")
SetGoodsCaoZuo(nil,"1|3","�ɶ�֮��Х����","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetGoodsCaoZuo(nil,"1|3","�ɶ�֮�ƿվ���","Metadata/Items/Currency/CurrencyEssenceEnvy3")
SetGoodsCaoZuo(nil,"1|3","���侫��","Metadata/Items/Currency/CurrencyEssenceHysteria1")
SetGoodsCaoZuo(nil,"1|3","���Ҿ���","Metadata/Items/Currency/CurrencyEssenceInsanity1")
SetGoodsCaoZuo(nil,"1|3","���־���","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetGoodsCaoZuo(nil,"1|3","��������","Metadata/Items/Currency/CurrencyEssenceDelirium1")






--����boss�� �ַ�����
--AddJiaoYiBossName(bossName,computerName,mohu) ��Ӳֿ��
--bossName �ֿ������ 
--computerName ������ ����Ϊĳ̨����ָ����ͬ�Ĳֿ�� ������nil
--mohu trueΪģ��ƥ�� false �� nil ����Ϊ����ƥ��
AddJiaoYiBossName("����������Ҫ�����ջ��Ĳֿ������")
--AddJiaoYiTime(startHour,endHour)--��ӽ���ʱ��δ��ڵ���startHour ����С�ڵ���endHour ʱ���⽻��
--startHour ������ ��ʼ���׵�Сʱ 
--endHour ������ �������׵�Сʱ
AddJiaoYiTime(0,12)--0�㵽12����⽻��

--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)-- ����Ҫ���׵���Ʒ
--goodsType �ַ����� ��������Ʒ���ͺ����������� nil ֧���������� ����������|�ֿ� --saveType ���� ֧���������� ����������|�ֿ� ����ҩ��|ħ��ҩ��|����ҩ��|ͨ��|����|��ָ|צ|ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�|�������ܱ�ʯ|�������ܱ�ʯ|����|����|����|Ь��|�·�|ͷ��|��|С��ʥ��|����ʥ��|����ʥ��|�ɶѵ�ͨ��|������Ʒ|����|����ҩ��|����ҩ��|����ͼ||���|��ͼ��Ƭ|����װ��|�̳���Ʒ|�鱦|���˿�|�Թ���Ʒ|�Թ���Ʒ|����Թ���Ʒ|��϶֮ʯ|����ʯ|����֮��|����װ����Ƭ|��Ԩ�鱦|��Խͨ��|����̽��������Ƕ��ͨ��|����ʯ|��Ƭ|����֮��|����ذ��|ս��|����̽���ɶѵ��ɲ���ͨ��|
--name �ַ����� ��Ʒ������
--className �ַ����� ��Ʒ������
--wordName �ַ����� ��Ʒ�Ĵ�׺��
--wordClassName �ַ����� ��Ʒ�Ĵ�׺����
--color �ַ����� ��ɫ 0�� 1�� 2�� 3�� �����|���� nilΪ����
--chufaCnt ������ �������׵����� 0��nil Ϊ������
--bossJiaoYiCnt ������ ����ʱ�ֿ�Ž��׸��һ��ŵ�����

SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,100)
SetJiaoYiGoods(nil,"�����µ�ħ��","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,nil,1)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,nil,20)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"�ɱ�ʯ","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʯ","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil,1)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʯ�����⾵","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ɫʯ","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʯ","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ʥʯ","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"ף��ʯ","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ͼ��","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ʶ�Ŀ","Glorious Vanity",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","��ս������","Militant Faith",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�п��Լ��","Brutal Restraint",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","�����Ľ���","Lethal Pride",nil,nil)
SetJiaoYiGoods(nil,"���㱦��","Metadata/Items/Currency/CurrencyImprintOrb","���ŵĿ���","Elegant Hubris",nil,nil)
SetJiaoYiGoods(nil,"�߶�����","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"������˹���","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)


--ֵǮ��Ԥ��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AsenathsMarkFated",nil,nil)--�z�ˬ�֮��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"GeofrisCrestFated",nil,nil)--�����z־
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"WindscreamFated",nil,nil)--���ɼ�[
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HyrrisBiteFated",nil,nil)--�ݐu֮��
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"KillingHatebeatWithBlackgleamAddsSpecificMod",nil,nil)--������
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareTunnelerDropsPledgeOfHandsMap",nil,nil)--�ն�����
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ArmourAbleToBecomesFiveLinkedWhenJewellersOrbApplied",nil,nil)--������
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"HeatshiverFated",nil,nil)--����֮ҕ
-- SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"TheAmbitiousBandit3",nil,nil)--�I�\��Ұ�� III
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RollingSixSocketBodyArmourLinksAllSockets",nil,nil)--���\�B�Y
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"AtzirisMirrorFated",nil,nil)--Ů���I��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"ItemAbleToBecomesUniqueWhenChanceOrbApplied",nil,nil)--��ȸ׃�P��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"RareUndyingArchivistDropsAstramentis",nil,nil)--�zʧ축��
SetJiaoYiGoods(nil,"Ԥ��","Metadata/Items/Currency/CurrencyItemisedProphecy",nil,"UniqueLightningGolemAppearsOutsideBubble",nil,nil)--����Ȼ����


--ֵǮ�ĵ�ͼ
SetJiaoYiGoods(nil,nil,nil,nil,"Caer Blaidd, Wolfpack's Den")--"���������׵���Ѩ"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vinktar Square")--"�S�����V��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Putrid Cloister")--"����ޒ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Coward's Trial")--"ų�ߵ�ԇ�"
SetJiaoYiGoods(nil,nil,"Metadata/Items/Maps/MapWorldsHarbingerLow")--"���I֮��wͽ"
--SetJiaoYiGoods("����ͼ",nil,nil,nil,nil,"3")

--ֵǮ��ҩ��
SetJiaoYiGoods(nil,nil,nil,nil,"Blood of the Karui")--"����֮Ѫ �}������ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Zerphi's Last Breath")--"�ɷ����ĽKϢ ���|ħ��ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Dying Sun")--"���� �t��ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Taste of Hate")--"���� �{��ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"The Sorrow of the Divine")--"���}���� ���ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Sin's Rebirth")--"������� ���Fˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"TBottled Faith")--"ƿ������ ���ˎ��"
SetJiaoYiGoods(nil,nil,nil,nil,"Cinderswallow Urn")--"�ɠa�Y ���yˎ��"
--SetJiaoYiGoods("ҩ��",nil,nil,nil,nil,"3")

-- SetJiaoYiGoods(nil,"����","Metadata/Items/Currency/CurrencySilverCoin",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"���ܵĴ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
-- SetJiaoYiGoods(nil,"��ĥ�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���|�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ұ倵Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�����Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ච�Ĵ߻���","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"ū�۔�Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"������Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ɔ_��Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�Q����Ƭ","Metadata/Items/MapFragments/CurrencyElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�֑֔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��̓��Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ܔ�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"�ǻ۔�Ƭ","Metadata/Items/MapFragments/CurrencyUberElderFragment4",nil,nil,nil,nil)


SetJiaoYiGoods(nil,nil,nil,nil,"Fury Valve")--"��ŭ�]�i"
SetJiaoYiGoods(nil,nil,nil,nil,"Hands of the High Templar")--"�}������"
SetJiaoYiGoods(nil,nil,nil,nil,"Leash of Oblation")--"��Ʒ֮�M"
SetJiaoYiGoods(nil,nil,nil,nil,"Manastorm")--"ħ�ܱ��L"
SetJiaoYiGoods(nil,nil,nil,nil,"Mistwall")--"���F֮�"
SetJiaoYiGoods(nil,nil,nil,nil,"Mother's Embrace")--"ĸ�H�ē�"
SetJiaoYiGoods(nil,nil,nil,nil,"Painseeker")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Black Cane")--"����"
SetJiaoYiGoods(nil,nil,nil,nil,"The Ivory Tower")--"������"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"������"
SetJiaoYiGoods(nil,nil,nil,nil,"Thread of Hope")--"ϣ��֮�L"
SetJiaoYiGoods(nil,nil,nil,nil,"Warrior's Legacy")--"��ʿ�z��"
SetJiaoYiGoods(nil,nil,nil,nil,"Willowgift")--"��ľ֮�Y"

SetJiaoYiGoods(nil,"糺�ʥ��","Metadata/Items/Currency/Mushrune8",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune9",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"���ʥ��","Metadata/Items/Currency/Mushrune10",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"����ʥ��","Metadata/Items/Currency/Mushrune11",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"��ɫʥ��","Metadata/Items/Currency/Mushrune12",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���t","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�[ʿ","Metadata/Items/DivinationCards/DivinationCardTheHermit",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�m�������֮��","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�F����ٛ�Y","Metadata/Items/DivinationCards/DivinationCardTheMetalsmithsGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheBattleBorn",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�Yʿ","Metadata/Items/DivinationCards/DivinationCardTheGladiator",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�W��","Metadata/Items/DivinationCards/DivinationCardTheScholar",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Ѵ��","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ԋ��","Metadata/Items/DivinationCards/DivinationCardThePoet",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʳ����ѻ","Metadata/Items/DivinationCards/DivinationCardTheCarrionCrow",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ϣ��","Metadata/Items/DivinationCards/DivinationCardHope",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardBirthOfTheThree",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ޱ���ŵ�����","Metadata/Items/DivinationCards/DivinationCardViniasToken",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ٻ�ʦ","Metadata/Items/DivinationCards/DivinationCardTheSummoner",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ޱ�","Metadata/Items/DivinationCards/DivinationCardTheCataclysm",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheHunger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheDrunkenAristocrat",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSun",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheWarden",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ԭ","Metadata/Items/DivinationCards/DivinationCardTheScarredMeadow",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheDarkMage",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�鱦��","Metadata/Items/DivinationCards/DivinationCardTheGemcutter",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ͽ","Metadata/Items/DivinationCards/DivinationCardTheGambler",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLover",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheRoadToPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheAvenger",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʧ���Ź�","Metadata/Items/DivinationCards/DivinationCardTimeLostRelic",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardLuckyConnections",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʢ��","Metadata/Items/DivinationCards/DivinationCardTheFeast",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardRainOfChaos",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheWatcher",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheIncantation",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮ռ","Metadata/Items/DivinationCards/DivinationCardCovetedPossession",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheKingsHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��","Metadata/Items/DivinationCards/DivinationCardTheWind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ЭԼ","Metadata/Items/DivinationCards/DivinationCardThePact",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʯ������ŵ","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ִ����","Metadata/Items/DivinationCards/DivinationCardTheCelestialJusticar",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheArtist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheInventor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardThePackLeader",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ϲ��","Metadata/Items/DivinationCards/DivinationCardJackInTheBox",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheUnion",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů��","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ǫѷ","Metadata/Items/DivinationCards/DivinationCardHumility",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"̽�ռ�","Metadata/Items/DivinationCards/DivinationCardTheExplorer",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ݻ���","Metadata/Items/DivinationCards/DivinationCardTheSpoiledPrince",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ܽ����������","Metadata/Items/DivinationCards/DivinationCardTheFlorasGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSiren",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOneWithAll",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������֮��","Metadata/Items/DivinationCards/DivinationCardTheLastOneStanding",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardDoedresMadness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheEncroachingDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Թ��","Metadata/Items/DivinationCards/DivinationCardTheWrath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheKingsBlade",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Զ��","Metadata/Items/DivinationCards/DivinationCardTheTrial",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheGentleman",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ǯ��Ȩ","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ֱ�","Metadata/Items/DivinationCards/DivinationCardTheCatalyst",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ƽ��","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʯ�ʺ������","Metadata/Items/DivinationCards/DivinationCardGiftOfTheGemlingQueen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮��","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƺ�","Metadata/Items/DivinationCards/DivinationCardTheFox",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ר��","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDeath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����ǻ�","Metadata/Items/DivinationCards/DivinationCardGraveKnowledge",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"С��","Metadata/Items/DivinationCards/DivinationCardTheJester",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ӷ��","Metadata/Items/DivinationCards/DivinationCardTheMercenary",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƻ���ľ","Metadata/Items/DivinationCards/DivinationCardTheInoculated",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ҳ�","Metadata/Items/DivinationCards/DivinationCardLoyalty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���߱ذ�","Metadata/Items/DivinationCards/DivinationCardPrideBeforeTheFall",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʶ","Metadata/Items/DivinationCards/DivinationCardAudacity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ӱ����","Metadata/Items/DivinationCards/DivinationCardAssassinsFavour",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮Ը","Metadata/Items/DivinationCards/DivinationCardHuntersResolve",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ѧ��","Metadata/Items/DivinationCards/DivinationCardScholarOfTheSeas",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheConduit",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheTower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheTwins",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���Ҵ���","Metadata/Items/DivinationCards/DivinationCardAnarchysPrice",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLich",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������ʦ","Metadata/Items/DivinationCards/DivinationCardTheThaumaturgist",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheAesthete",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ǻ�����","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�Ƽ���","Metadata/Items/DivinationCards/DivinationCardTheFletcher",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����Ա","Metadata/Items/DivinationCards/DivinationCardTheSurveyor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����������","Metadata/Items/DivinationCards/DivinationCardBowyersDream",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ҽʦ","Metadata/Items/DivinationCards/DivinationCardTheSurgeon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ȶ�������","Metadata/Items/DivinationCards/DivinationCardVolatilePower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���ϣ��","Metadata/Items/DivinationCards/DivinationCardLastHope",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardHubris",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ä;","Metadata/Items/DivinationCards/DivinationCardBlindVenture",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����е","Metadata/Items/DivinationCards/DivinationCardMercilessArmament",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ͼʦ","Metadata/Items/DivinationCards/DivinationCardTheCartographer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheWarlord",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemoness",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheTraitor",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOffering",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ʧ��۹�","Metadata/Items/DivinationCards/DivinationCardLostWorlds",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheLordInBlack",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ĸ�׵�����","Metadata/Items/DivinationCards/DivinationCardAMothersPartingGift",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ѫ��֮��","Metadata/Items/DivinationCards/DivinationCardTheBody",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTurnTheOtherCheek",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ϣ��΢��","Metadata/Items/DivinationCards/DivinationCardGlimmerOfHope",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʢ","Metadata/Items/DivinationCards/DivinationCardProsperity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheSigil",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���²���","Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheRabidRhoa",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʨ","Metadata/Items/DivinationCards/DivinationCardTheLion",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDragon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��","Metadata/Items/DivinationCards/DivinationCardRats",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Σ��","Metadata/Items/DivinationCards/DivinationCardTheRisk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTranquillity",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardHerMask",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ͽ�����","Metadata/Items/DivinationCards/DivinationCardTreasureHunter",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����ʳ��","Metadata/Items/DivinationCards/DivinationCardEarthDrinker",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ǵ�Ӱ��","Metadata/Items/DivinationCards/DivinationCardTheWolfsShadow",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������ھ�","Metadata/Items/DivinationCards/DivinationCardTheArenaChampion",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheVisionary",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ŭ��֮��","Metadata/Items/DivinationCards/DivinationCardThunderousSkies",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮ŭ","Metadata/Items/DivinationCards/DivinationCardDyingAnguish",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���㲻��","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheThrone",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޾�֮��","Metadata/Items/DivinationCards/DivinationCardBoundlessRealms",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDevastator",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���������","Metadata/Items/DivinationCards/DivinationCardDestinedToCrumble",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardShardOfFate",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardHeterochromia",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ջ�֮��","Metadata/Items/DivinationCards/DivinationCardRainTempter",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���","Metadata/Items/DivinationCards/DivinationCardTheVoid",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil," ��Ű֮��","Metadata/Items/DivinationCards/DivinationCardTheTyrant",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheWeb",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ո���","Metadata/Items/DivinationCards/DivinationCardTheHarvester",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ӰŮ��˾","Metadata/Items/DivinationCards/DivinationCardTheLunarisPriestess",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheCursedKing",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�籩ʹ��","Metadata/Items/DivinationCards/DivinationCardTheStormcaller",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ɯ֮Ϣ","Metadata/Items/DivinationCards/DivinationCardLysahsRespite",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͼ�ߵ�����","Metadata/Items/DivinationCards/DivinationCardCartographersDelight",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"δ֪�����˿�","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,nil)--�ɶѵ�ͨ��
SetJiaoYiGoods(nil,"���˴���","Metadata/Items/DivinationCards/DivinationCardLuckyDeck",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������ʵ","Metadata/Items/DivinationCards/DivinationCardLightAndTruth",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�߶��ľ��","Metadata/Items/DivinationCards/DivinationCardLuckOfTheVaal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�;���","Metadata/Items/DivinationCards/DivinationCardTheEndurance",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardThePenitent",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ⱥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheWolf",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������˵ı�ʯ","Metadata/Items/DivinationCards/DivinationCardDiallasSubjugation",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Խ��ĺ���","Metadata/Items/DivinationCards/DivinationCardTheCalling",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ů֮����","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޼�֮��","Metadata/Items/DivinationCards/DivinationCardTheFormlessSea",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֮����","Metadata/Items/DivinationCards/DivinationCardTheOath",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʰ����","Metadata/Items/DivinationCards/DivinationCardTheScavenger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��֮����","Metadata/Items/DivinationCards/DivinationCardMawrBlaidd",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���ɸ��","Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�籩��Ϯ","Metadata/Items/DivinationCards/DivinationCardTheComingStorm",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ѧ��","Metadata/Items/DivinationCards/DivinationCardThePolymath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����","Metadata/Items/DivinationCards/DivinationCardTheWolverine",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"¶ָ����","Metadata/Items/DivinationCards/DivinationCardMitts",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheWolvenKingsBite",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�䵭","Metadata/Items/DivinationCards/DivinationCardTheStandoff",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheForsaken",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ҫ֮��","Metadata/Items/DivinationCards/DivinationCardTheGarishPower",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���ݼ���","Metadata/Items/DivinationCards/DivinationCardLingeringRemnants",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���������","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʥ��֮��","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Զ���ٻ�","Metadata/Items/DivinationCards/DivinationCardCallToTheFirstOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheValleyOfSteelBoxes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardMightIsRight",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOpulecent",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardStruckByLightning",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������������","Metadata/Items/DivinationCards/DivinationCardAtzirisArsenal",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�п�֮��","Metadata/Items/DivinationCards/DivinationCardTheRuthlessCeinture",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޼���Ѱ","Metadata/Items/DivinationCards/DivinationCardNoTraces",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ҵĽݾ�","Metadata/Items/DivinationCards/DivinationCardTheRealm",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTheDragon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheBlazingFire",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardLeftToFate",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRebirth",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheInsatiable",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardTheObscured",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ʫ��","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardForbiddenPower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��϶","Metadata/Items/DivinationCards/DivinationCardTheBreach",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"׷����","Metadata/Items/DivinationCards/DivinationCardTheDreamer",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ɽ���","Metadata/Items/DivinationCards/DivinationCardTheWorldEater",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ͽ","Metadata/Items/DivinationCards/DivinationCardTheDeceiver",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardBlessingOfGod",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardThePuzzle",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheWitch",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardImmortalResolve",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�鱦���ĸ���","Metadata/Items/DivinationCards/DivinationCardTheJewellersBoon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardTheDarkestDream",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheMaster",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޾���Ԩ","Metadata/Items/DivinationCards/DivinationCardTheFathomlessDepths",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��η��","Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ľ��","Metadata/Items/DivinationCards/DivinationCardTheAdmirer",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʥ���¾�","Metadata/Items/DivinationCards/DivinationCardTheSwordKingsSalute",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ѫ���","Metadata/Items/DivinationCards/DivinationCardTheArmyOfBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮ʯ","Metadata/Items/DivinationCards/DivinationCardTheCelestialStone",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardPerfection",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ξ�","Metadata/Items/DivinationCards/DivinationCardTheDreamland",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֮��г","Metadata/Items/DivinationCards/DivinationCardHarmonyOfSouls",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʿ֮��","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"׳�Ĳ���","Metadata/Items/DivinationCards/DivinationCardTheHaleHeart",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ׯ԰��","Metadata/Items/DivinationCards/DivinationCardTheMayor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�޿�������","Metadata/Items/DivinationCards/DivinationCardTheUndisputed",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ԫ�ؼ���","Metadata/Items/DivinationCards/DivinationCardTheRiteOfElements",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ħ��","Metadata/Items/DivinationCards/DivinationCardThreeVoices",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheProfessor",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBeast",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޹���","Metadata/Items/DivinationCards/DivinationCardTheInnocent",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ήõ��","Metadata/Items/DivinationCards/DivinationCardTheWiltedRose",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�޾��ڰ�","Metadata/Items/DivinationCards/DivinationCardTheEndlessDarkness",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�����Ĵ���","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����͸�","Metadata/Items/DivinationCards/DivinationCardBoonOfTheFirstOnes",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ĺ��֮��","Metadata/Items/DivinationCards/DivinationCardTheTwilightMoon",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Э֮��","Metadata/Items/DivinationCards/DivinationCardTheCacophony",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheSacrifice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"īˮ���","Metadata/Items/DivinationCards/DivinationCardADabOfInk",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������ʦ","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheLifeThief",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ѱ����","Metadata/Items/DivinationCards/DivinationCardTheSeeker",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ʹ","Metadata/Items/DivinationCards/DivinationCardTheMessenger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheMadKing",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"˾���Ķ���","Metadata/Items/DivinationCards/DivinationCardBoonOfJustice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ó�","Metadata/Items/DivinationCards/DivinationCardTheJourney",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�߶��İ���","Metadata/Items/DivinationCards/DivinationCardArroganceOfTheVaal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheLanding",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ɽ��","Metadata/Items/DivinationCards/DivinationCardTheMountain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ƽ��Ԫ","Metadata/Items/DivinationCards/DivinationCardTheGoldenEra",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�����","Metadata/Items/DivinationCards/DivinationCardMonochrome",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�ڰ�������","Metadata/Items/DivinationCards/DivinationCardDarkTemptation",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ��ж���","Metadata/Items/DivinationCards/DivinationCardAloneInTheDarkness",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"������������","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��������","Metadata/Items/DivinationCards/DivinationCardTheLordOfCelebration",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardVanity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�۹����Ų�","Metadata/Items/DivinationCards/DivinationCardImperialLegacy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ȼ��֮Ѫ","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Դ","Metadata/Items/DivinationCards/DivinationCardThePrimordial",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"���Ļ���","Metadata/Items/DivinationCards/DivinationCardEchoesOfLove",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��֪����","Metadata/Items/DivinationCards/DivinationCardThirstForKnowledge",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���˵Ľ���","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheFool",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����Ĵ���","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��Ԩ֮��","Metadata/Items/DivinationCards/DivinationCardTheDeepOnes",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"��ʦ������","Metadata/Items/DivinationCards/DivinationCardTheArchmagesRightHand",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ڰ�֮��","Metadata/Items/DivinationCards/DivinationCardDarkDreams",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ı���","Metadata/Items/DivinationCards/DivinationCardBuriedTreasure",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����Ķľ�","Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheOldMan",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ŵ��֮��","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"֧������","Metadata/Items/DivinationCards/DivinationCardTheSideQuest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ҳϵĴ���","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"Ӣ�´��","Metadata/Items/DivinationCards/DivinationCardTheHeroicShot",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֪��","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"�񶾵�Ȩ��","Metadata/Items/DivinationCards/DivinationCardVilePower",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������Ľ���","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,nil,nil)--���˿�
-- SetJiaoYiGoods(nil,"ħ��","Metadata/Items/DivinationCards/DivinationCardTheSkeleton",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�ֲ�֮��","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��ħ","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"������Ԥ��","Metadata/Items/DivinationCards/DivinationCardAkilsProphecy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����֮��","Metadata/Items/DivinationCards/DivinationCardTheDamned",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"Ԫ�����","Metadata/Items/DivinationCards/DivinationCardVoidOfTheElements",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardTheDeal",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�������Ų�","Metadata/Items/DivinationCards/DivinationCardTheWolfsLegacy",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�T�D֮�ڴ�","Metadata/Items/DivinationCards/DivinationCardBaitedExpectations",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����v��֮��","Metadata/Items/DivinationCards/DivinationCardCameriasCut",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����ӛ̖","Metadata/Items/DivinationCards/DivinationCardDeathlyDesigns",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����","Metadata/Items/DivinationCards/DivinationCardDivineJustice",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�����Ѫ","Metadata/Items/DivinationCards/DivinationCardEtchedInBlood",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���xС��","Metadata/Items/DivinationCards/DivinationCardFriendship",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"ʧ��ķ��A","Metadata/Items/DivinationCards/DivinationCardSquanderedProsperity",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�o����H","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�R�ǌ�ۙ","Metadata/Items/DivinationCards/DivinationCardTheBones",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"���x֮��","Metadata/Items/DivinationCards/DivinationCardTheChosen",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ҫ","Metadata/Items/DivinationCards/DivinationCardTheCraving",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"��Ó��","Metadata/Items/DivinationCards/DivinationCardTheEscape",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�~؜","Metadata/Items/DivinationCards/DivinationCardTheFishmonger",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"�صׅ���","Metadata/Items/DivinationCards/DivinationCardUndergroundForest",nil,nil,nil,nil)--���˿�
SetJiaoYiGoods(nil,"����鱦","Metadata/Items/Jewels/JewelStr","��֪������","Inspired Learning","3",nil)--�鱦
--SetJiaoYiGoods(nil,"����鱦","Metadata/Items/Jewels/JewelStr","��Դ����","Primordial Might","3",nil)--�鱦
SetJiaoYiGoods(nil,"����鱦","Metadata/Items/Jewels/JewelStr","��Ӱ�ξ�","The Red Dream","3",nil)--�鱦
SetJiaoYiGoods(nil,"����鱦","Metadata/Items/Jewels/JewelStr","����֮��","Might of the Meek","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelDex","ֱ��֮Ծ","Intuitive Leap","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelDex","ʨ�۵�����","Lioneye's Fall","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelDex","��Ӱ�ξ�","The Green Dream","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelDex","����Ȼ����","Unnatural Instinct","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","����ת��","Healthy Mind","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","�۹�֮ʯ","Grand Spectrum","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","�޾�����","Unending Hunger","3",nil)--�鱦
--SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","��Դ��г","Primordial Harmony","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","��Ӱ�ξ�","The Blue Dream","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelInt","Ҫ����Լ","Fortress Covenant","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����鱦","Metadata/Items/Jewels/JewelPrismatic","����֮��","Watcher's Eye","3",nil)--�鱦
SetJiaoYiGoods(nil,"�����o��","Metadata/Items/Gems/SupportGemAdditionalXP",nil,nil,nil,nil)--���܌�ʯ
SetJiaoYiGoods(nil,"�x���o��","Metadata/Items/Gems/SupportGemAdditionalLevel",nil,nil,nil,nil)--���܌�ʯ
-- SetJiaoYiGoods(nil,"�ħ�۾�","Metadata/Items/Metamorphosis/MetamorphosisEye",nil,nil,"3",nil)--�鱦
-- SetJiaoYiGoods(nil,"�ײ�֮���鱦","Metadata/Items/Jewels/JewelAbyssMelee",nil,nil,nil,nil)--��Ԩ�鱦
-- SetJiaoYiGoods(nil,"����֮���鱦","Metadata/Items/Jewels/JewelAbyssRanged",nil,nil,nil,nil)--��Ԩ�鱦
-- SetJiaoYiGoods(nil,"��˯֮���鱦","Metadata/Items/Jewels/JewelAbyssCaster",nil,nil,nil,nil)--��Ԩ�鱦
-- SetJiaoYiGoods(nil,"�԰�֮���鱦","Metadata/Items/Jewels/JewelAbyssSummoner",nil,nil,nil,nil)--��Ԩ�鱦