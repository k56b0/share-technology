/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : testjdbc

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 23/02/2026 09:54:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generalise` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` int(4) NULL DEFAULT NULL,
  `isRead` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '魔山', 'novel', '魔山是德国重要的作品', '托马斯.曼', 1234, '是');
INSERT INTO `book` VALUES (2, '少年维特的烦恼', 'novel', '启发了一代人', '歌德', 1774, '是');
INSERT INTO `book` VALUES (3, '人类为什么要探索天空', 'science', '太空情书', '克里斯.英庇', 2019, '是');
INSERT INTO `book` VALUES (4, '罗马帝国衰亡史', 'history', '永远的卡皮托山', '爱德华.吉本', 1776, '否');
INSERT INTO `book` VALUES (13, 'AA', 'AA', 'AA', 'AA', 1234, '是');

-- ----------------------------
-- Table structure for book_summary
-- ----------------------------
DROP TABLE IF EXISTS `book_summary`;
CREATE TABLE `book_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generalise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isRead` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_summary
-- ----------------------------
INSERT INTO `book_summary` VALUES (1, '魔山', 'I', '小说', '会有这么一些时刻，\r\n到那时将从死亡和肉体的糜烂中为你萌生出一个爱之梦，\r\n以你充满预感和“执政”自省的方式。\r\n从这死神的世界节日里，\r\n从这燃烧在雨夜黑暗天空下的狂热里，\r\n什么时候是不是也能产生出爱呢？ ', '托马斯.曼', '1924', '否');
INSERT INTO `book_summary` VALUES (2, '少年维特的烦恼', 'I', '小说', '启发了一代人', '歌德', '1774', '是');
INSERT INTO `book_summary` VALUES (3, '人类为什么要探索太空', 'P', NULL, '太空情书', '克里斯.英庇', '2019', '是');
INSERT INTO `book_summary` VALUES (4, '罗马帝国衰亡史', 'K', NULL, '永远的卡皮托山', '爱德华.吉本', '1776', '否');
INSERT INTO `book_summary` VALUES (5, '千面英雄', 'B', NULL, '20世纪神话学大师、拯救人类心灵的哲学家与心理学家，西方流行文化的一代宗师约瑟夫·坎贝尔奠基之作。 时代杂志评选的自创刊以来最具影响力的100本英文好书之一', '约瑟夫.坎贝尔', '1949', '是');
INSERT INTO `book_summary` VALUES (6, '地球100种海洋神秘现象', 'Q', NULL, '蔚蓝色的海洋，烟波浩渺，奔腾不息，记录着地球的历史和发展的秘密。面对着浩瀚莫测、变幻万千的大海，人们为之倾倒，同时也对它充满了畏惧。科学虽然给我们带来了便捷、幸福的生活，但还远远没有达到我们所期望的彻底解决问题的地步。海洋中的一些神秘奇特的现象，成为人们探奇的“热土”。近些年来，随着海洋开发技术不断升级，世界各国商船、军舰在海上不断遭遇一些怪事：深藏水下的奇特生物；突然出现的幽灵岛；或是一闪而过的幽灵船；就算没有这些，也会有马尾藻海的危险；大、小潮的造访以及其他神秘现象出现', '武鹏程', '2018', '是');
INSERT INTO `book_summary` VALUES (7, '50亿年的孤寂', 'P', NULL, '《五十亿年的孤寂》不仅是外星球探索的入门，也是地球与地球上生命的传记，更是系外行星学如何成长的抑扬顿挫的一段故事。科学记者李·比林斯，藉由深度访谈寻找系外行星这领域第一线的天文学家，探索这股「系外行星热潮」。在这场探索旅程中，不仅描绘刻画了近五十年行星天文学的发展轮廓，也探究了这些穷尽一生寻找繁星间的生命，投资与报酬却不成比例的天文学家，他们执着追梦，以及失望和希望不断交替的动人故事', '李.比林斯', '2019', '是');
INSERT INTO `book_summary` VALUES (8, 'Pale blue dot', 'P', NULL, '地球是人类的摇篮，但人类不可能永远被束缚在摇篮里。', '卡尔.萨根', '1994', '是');
INSERT INTO `book_summary` VALUES (9, '自然史', 'Q', NULL, '布封观察、研究大地、山脉、河川和海洋，寻求地面变迁的根源，开了现代地质学的先河。尤其在物种起源方面，他倡导生物转变论，指出物种因环境、气候、营养的影响而变异，对后来的进化论有直接的影响。达尔文称他“是现代以科学眼光对待这个问题的第一人', '乔治.布封', '1749', '是');
INSERT INTO `book_summary` VALUES (10, '飞鸟集', 'I', '诗歌', '最美小诗', '泰戈尔', '1916', '是');
INSERT INTO `book_summary` VALUES (11, '红与黑', 'I', NULL, '于连的歌', '司汤达', '1830', '是');
INSERT INTO `book_summary` VALUES (12, '什么是艺术，博伊斯和学生的对话', 'J', NULL, '艺术的边界在哪里？', '弗尔科尔.哈兰', '1986', '是');
INSERT INTO `book_summary` VALUES (13, '安娜.卡列尼娜', 'I', '小说', '伸冤在我，我必报应', '列夫.托尔斯泰', '1877', '是');
INSERT INTO `book_summary` VALUES (14, '暴风雨', 'I', '剧本', '复仇还是复仇？', '莎士比亚', '1623', '是');
INSERT INTO `book_summary` VALUES (15, '不能承受的生命之轻', 'I', '小说', '生命之重', '米兰.昆德拉', '1984', '是');
INSERT INTO `book_summary` VALUES (16, '罪与罚', 'I', '', '', '陀思妥耶夫斯基', '1866', '是');
INSERT INTO `book_summary` VALUES (17, '东方列车杀人案', 'I', NULL, NULL, '阿加莎', '1934', '是');
INSERT INTO `book_summary` VALUES (18, '尼罗河上的惨案', 'I', NULL, NULL, '阿加莎', '1937', '是');
INSERT INTO `book_summary` VALUES (19, '游戏设计梦工厂', 'Z', '游戏', '以游玩体验为核心，创造开创性的游戏', 'Tracy.Fullerton', '2016', '是');
INSERT INTO `book_summary` VALUES (20, '人生有目的：亲鸾圣人', 'B', '2=2', '概括', '作者1', '2026', '是');

-- ----------------------------
-- Table structure for ch_lib_method_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `ch_lib_method_taxonomy`;
CREATE TABLE `ch_lib_method_taxonomy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_symbol` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_department` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mark_symbol`(`mark_symbol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ch_lib_method_taxonomy
-- ----------------------------
INSERT INTO `ch_lib_method_taxonomy` VALUES (1, 'A', '马克思主义、列宁主义、毛泽东思想、邓小平理论', '马克思主义、列宁主义、毛泽东思想、邓小平理论');
INSERT INTO `ch_lib_method_taxonomy` VALUES (2, 'B', '哲学、宗教', '哲学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (3, 'C', '社会科学总论', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (4, 'D', '政治、法律', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (5, 'E', '军事', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (6, 'F', '经济', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (7, 'G', '文化、科学、教育、体育', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (8, 'H', '语言、文字', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (9, 'I', '文学', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (10, 'J', '艺术', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (11, 'K', '历史、地理', '社会科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (12, 'N', '自然科学总论', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (13, 'O', '数理科学和化学', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (14, 'P', '天文学、地球科学', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (15, 'Q', '生物科学', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (16, 'R', '医药、卫生', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (17, 'S', '农业科学', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (18, 'T', '工业技术', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (19, 'U', '交通运输', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (20, 'V', '航空、航天', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (21, 'X', '环境科学、安全科学', '自然科学');
INSERT INTO `ch_lib_method_taxonomy` VALUES (22, 'Z', '综合性图书', '综合性图书');

-- ----------------------------
-- Table structure for easy_text_exploration_summary
-- ----------------------------
DROP TABLE IF EXISTS `easy_text_exploration_summary`;
CREATE TABLE `easy_text_exploration_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generalise` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `works` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easy_text_exploration_summary
-- ----------------------------
INSERT INTO `easy_text_exploration_summary` VALUES (1, '剖腹取粉与开胸验肺', 'D', NULL, NULL, NULL, NULL, NULL, '剖腹取粉的原型是开胸验肺，河南省新密市工人。2004年6月到郑州振东耐磨材料有限公司上班，先后从事过杂工、破碎、开压力机等有害工作。工作3年多后，他被多家医院诊断为尘肺，但企业拒绝为其提供相关资料，在向上级主管部门多次投诉后他得以被鉴定，郑州职业病防治所却为其作出了“肺结核”的诊断。为寻求真相，这位28岁的年轻人只好跑到郑大一附院，不顾医生劝阻铁心“开胸验肺”，以此悲壮之举揭穿了谎言。 其实，在张海超“开胸验肺”前，郑大一附院的医生便对他坦承，“凭胸片，肉眼就能看出你是尘肺”。');
INSERT INTO `easy_text_exploration_summary` VALUES (2, '魔山的生死观念1', 'B', NULL, '生死观念：', NULL, NULL, NULL, '死，一方面固然是神圣的、富于灵性的和哀伤动人的，也就是说属于精神世界的事，但另一方面又完全不同，而且恰恰相反：它纯粹是肉体的，物质的，根本不能称它是动人的、富于灵性的或神圣的，甚至也称不上是哀伤的。庄严而富于灵性的一面，从遗体豪华的殡葬仪式中，从如锦的繁花中以及扇子般的棕榈叶中体现出来；大家都知道，这象征着天国的安宁。——《魔山》');
INSERT INTO `easy_text_exploration_summary` VALUES (3, '罗马人的生死观念1', 'B', NULL, '生死观念：', NULL, NULL, NULL, '在罗马公民心目中，人生的目的和本质似乎就是自有家世、儿孙满堂、死亡并非灾祸，因为死亡无法避免;但一个家庭或一个氏族的消亡，对公社来说却是灾难。——《罗马史第一卷从罗马初创至王政的废除》');
INSERT INTO `easy_text_exploration_summary` VALUES (4, '人类的好斗性和杠精', 'B', NULL, NULL, NULL, NULL, NULL, '现代行为学鼻祖康·洛伦茨在《论侵犯性》中写道：“人类的好斗性是一种真正的无意识本能。这种好斗性，也即侵犯性，有其自身的释放机制，与其他人类本能一样，会引起特殊的、极其强烈的快感。”杠精们似乎把这种本能发挥到了极致，给他一个“杠点”，他甚至能杠起地球。');
INSERT INTO `easy_text_exploration_summary` VALUES (5, '说话的原则1', 'I', NULL, NULL, NULL, NULL, NULL, '你完全可以平铺直叙，词藻不求华丽，只要用得贴切、正确就可以了；话要说得响亮些，风趣些。总之，要竭力将自己该说的话说明白，该表达的思想表达清楚，做到不乱不涩。同时，你还得让读者读了你的书，能解闷消愁，让快乐的人更加开心，让愚钝的人不感烦腻，让聪明的人耳目一新，让严肃的人不觉无聊，甚至让行为拘谨的人读了也会加以称赞。——《堂吉诃德》');
INSERT INTO `easy_text_exploration_summary` VALUES (6, '附庸风雅夸夸其谈', 'I', NULL, NULL, NULL, NULL, NULL, '在那些与虚无、死亡、无限等等有关的极其高超的思想中间，我看到只有生怕被人笑话的那种可憎的恐惧心才是真实的。人类思想中的所有最重大的问题都大言不惭地接触到了。但听了3分钟以后，您就会问自己，占上风的是说话的人的夸张呢，还是他的难以置信的无知.——《红与黑》');
INSERT INTO `easy_text_exploration_summary` VALUES (7, '我爱抽烟玩梗源', 'I', NULL, NULL, NULL, NULL, NULL, '我真不懂，为什么有些人不会抽烟。可以说：不吸烟，一个人生活中最好一部分就失去了；无论如何，他生活中没有多大的乐趣！当我醒来时，我就因整天可以抽烟而引以为乐，我吃饭时，一想到抽烟也喜不自胜；甚至可以说，我吃饭的目的仅仅是为了能抽烟，尽管我这么说难免有些夸大。对我来说，一天不抽烟，就感到枯燥沉闷，索然无味；如果我早上不得不说‘今天没有烟抽’，那么我想连起床的心绪都没有了，说实话，我想赖在床上呢。你瞧，要是嘴里有一支好烟抽着（当然，这种烟不应有难闻的气味，卷烟质量也应当符合要求，否则使人非常恼火），我的意思是说，要是你有支好烟，你就安如泰山，万事大吉。这好比你躺在海滩上，你不是在海滩上躺过吗？那时你什么都不要，既不想工作，也不想娱乐……谢天谢地，全世界都在抽烟哪。就我所知，世界上没有哪块地方不染上这种习惯，哪怕是南北极探险家，烟草的备货也很充足，这样在艰苦环境下就顶得住。当我读到这类消息，我总禁不住满怀同情。一个人可能遇到不如意的事，就拿我来说吧，我曾有许多苦恼，但只要我有一支烟，我知道自己什么都经得住，烟能帮我渡过难关。——《魔山》');
INSERT INTO `easy_text_exploration_summary` VALUES (8, 'se音乐7提5中的含金量', 'J', NULL, 'FF7:', NULL, NULL, NULL, 'se音乐7提5中的含金量。真的碰瓷什么都别想碰瓷一丁点se的音乐。ff7重生玩过游戏的都知道这场景音乐切换的有多丝滑，进战斗无缝切同bgm战斗变奏。同一张地图不同的地区都是不同的bgm，每个小游戏都有专属的bgm，单陆行鸟赛车放出的ost里就有1个小时的量。曲子无论是质量还是功能性都是绝对的行业最顶尖水准。今年这最佳ost阵容非常豪华，奈何是碰见这尊大神了。');
INSERT INTO `easy_text_exploration_summary` VALUES (9, '对音乐理解的三大要素1', 'J', NULL, '音乐的理解', NULL, NULL, NULL, '我个人对于游戏音乐的理解是必须要具备三大要素（这三大要素都一样重要）1、适用性：简单的说就是音乐能否满足游戏的需求，像一首场景曲能否表现出场景烘托的氛围感，角色曲能否准确反映人物的性格和心理表达，战斗曲能否鼓舞玩家等等。（这一点点名批评泽野弘之给异度x做的音乐，他是真不会做游戏音乐）2、音乐性：主要体现在曲子本身的旋律、和声、节奏等能否让玩家产生共鸣，也就是好不好听，更看重作曲家的写作能力。3、记忆性：就是音乐带给你的情感回忆，分为两种情感体验，一种是游玩时你对这首曲子产生了共鸣。一种是通关后，你回忆游戏里一些记忆深刻的场景时，也对当时的音乐很有印象。满足了这三点，那就是标杆的游戏音乐了，如果曲子本身的音乐性十分出彩，那就是神曲的范畴。如果只满足了两点或一点，那作为游戏音乐只能算是合格。');
INSERT INTO `easy_text_exploration_summary` VALUES (10, '文艺作品中的政治剧情', 'D', NULL, NULL, NULL, NULL, NULL, '可以很绝对的说，任何文艺作品中的政治剧情，都不能媲美历史中的政治事件。\n1、赛道不一样。文艺作品是一种艺术加工，人物推动剧情，剧情刻画人物，也就是说，里面的政治事件都是围绕“刻画人物形象”这个中心服务的；但政治事件的主旋律是权力的更迭、利益的再分配，事件才是重心。\n2、人与人不一样。文艺作品中的人物，体现的是个人价值，具有高度的主观能动性；政治事件中的人物，体现的是利益团体，即便是首脑人物，其形象也会很模糊，甚至就是一个政治符号，简称“屁股决定脑袋”，主观意愿和者能力很难推动事件进程。\n3、作者能力。文艺作品的作者受限于视野、履历、身份的差异，作品中会充斥大量的主观猜测或者臆想部分，跟真实的政治事件相去甚远。即便司马光作为政治老手，编撰的《资治通鉴》也有些解读偏差。\n4、运行轨迹不一样。文艺作品由于创作的严谨，人物或者事件必须符合客观规律和逻辑，是人为可控的；但政治事件中的人物犹如在迷雾中前行，虽然也有迹可循，但仍有许多未知的盲区以及不确定性，几乎不可控。比如李存勖身死国灭，其导火索居然是一个魏博镇士兵赌博输钱。\n5、底层逻辑不一样。文艺作品中，政治剧情都来源于作者的灵感，很难顾及到社会经济运行，基本都是形而上学的理论知识；但政治事件，所有的解读最终都会汇成一句话：经济基础决定上层建筑。所以，《最终幻想7》的政治剧情不严谨，完全可以理解；而且，其主题也不是政治话题，其中的政治事件更多是为了引出角色，差不多可以看做人物背景和点缀。');
INSERT INTO `easy_text_exploration_summary` VALUES (11, '红与黑视频的评论区1', 'I', NULL, NULL, NULL, NULL, NULL, '《红与黑》基本可以说是现实主义小说的开山之作，然而除了写实的社会背景外，主人公的性格才是让我觉得的所谓“现实”的灵魂所在。作者没有刻意把主角营造成一个彻底的什么什么人，而是一个复杂的，野心勃勃的但极其幼稚缺乏坚定内心的人:他保持对出人头地的追求，热切的投身于宗教世界，贵族圈子，却无法坚定的走到最后。而这恰恰也是因为于连“年轻的激情”，他渴求爱情，成长在冷酷的下层使他禁锢不住久旱的内心。总而言之，主角的性格不但不完美，而且“问题”很多，他许多行为都称不上理性，但恰恰就是那份不完美与不成熟，才让我切实感受到“现实主义”除了重现社会图景之外的另一份魅力，那就是在那个几乎称得上改天换地的时代中，由“人”被深度发掘剖析而产生的真实。于连与现代许多人，或者说许多少年，青年都一样，生而卑微渴望有朝一日能使“荣耀向我俯首”，但《红与黑》不是热血漫画，人生也不是，所以作者抓住了社会的真实，也抓住了主角“人性的真实（或者说性格的缺漏）”。而在我所阅读过的所有现实主义著作中，我个人认为《红与黑》是将这“二重现实”结合（于连的悲剧不仅因为社会，还因为他的性格）并表现得最为经典的一部。时至今日，我相信仍会有少年在书中看到自己的影子，野心勃勃而不成熟，冲动而幼稚，渴求着物质而依恋乃至崇拜感情（爱情）。个人很推荐去读，但要获得最好的阅读体验，就不要带着“消遣娱乐”、“大主角主义”或者看现代快餐文学的心态去读，保持独立的思考与现实的理性，才能让你读到真正的“现实主义的魅力”。');
INSERT INTO `easy_text_exploration_summary` VALUES (12, '红与黑视频的评论区2', 'I', NULL, NULL, NULL, NULL, NULL, '好得不够纯粹，坏得不够彻底就只能无休无止的自我内耗。他堕落的不够彻底，因为代入了作者赋予的反思，最后就变成既想又要的矛盾结合体，结局要升华就成了如今看到的样子。心比天高，命比纸薄。于连的悲剧是懦弱和自卑性格的使然，一方面妄想以对抗的方式获得地位，在表面上不肯妥协，另一面却表现的多愁善感，犹豫不决。既没有获得老旧势力的认可也没有获得新兴阶级的认可。拉斯蒂涅就做的比他彻底，想要获得地位必须依靠其他人的力量，一个人的力量在时代浪潮下是弱小的，做大事就要大刀阔斧的去干。');
INSERT INTO `easy_text_exploration_summary` VALUES (13, '原味鸡六个部位', 'S', NULL, NULL, NULL, NULL, NULL, '原味鸡有六个部位可以选择，每个部位都有它独特的魅力。\n鸡胸肉：一大口下去，满满的肉感，简直是肉食爱好者的天堂。\n鸡腿：肉质鲜嫩，口感多汁，吃起来让人欲罢不能。\n鸡翅：外皮酥脆，内里鲜嫩，每一口都是满满的幸福感。\n旁肋：肉质紧实，口感丰富，是喜欢肉质有嚼劲的朋友的首选。\n三角：肥嫩多汁，肉质鲜美，是很多人心中的最爱。\n鸡胸：同样是肉食爱好者的心头好，大口吃肉的快感不容错过。');
INSERT INTO `easy_text_exploration_summary` VALUES (14, '也是忍不住轻哼起来', 'H', NULL, '有趣评论：', NULL, NULL, NULL, '太爽了，一想到那个曾经拿命运共同体当安全词的祥子，现在胯起个p脸被迫要演奏一首全是给她写的性骚扰歌词，主唱还是你的小姨子。真是ss又mmate啊。\n你问我代入的是谁？一想到我连2000日元都没花，就能看这种场子的观众，也是忍不住轻哼起来。');
INSERT INTO `easy_text_exploration_summary` VALUES (15, '青木宓关于爱丽丝生死的一些发言', 'N', NULL, 'FF7:', NULL, NULL, NULL, '丧失是故事的主题之一又不是我说的，再为你们操心我是sb\n回复 @皓淼 :不希望，这不是FF7。拉黑\n其他人：我虽然磕CA但我100%肯定ac或者acc的credits才是克劳德真正的归宿[歪嘴]骑着心爱的摩托驰往未定的目的地，我觉得这才是cloud（云）的真谛\n其实新u本里野村已经说了og和rb的爱丽丝之死的目的已经不一样了，og让克劳德成为旁观者目睹爱丽丝的死亡感到愧疚遗憾甚至自责，到了rb直接借克劳德塑造现实里当你真正失去重要的人的时候，往往短时间内无法接受这一事实的形象（想想老扎死在克劳德面前的时候，克劳德ptsd后面接正传就懂了）\n回复 @真的开心- :对啊，无法接受啊，因为除去现实世界的世界都是要消逝的。爱丽丝存活的线有裂痕，她必然在狠狠教育克劳德之后离开。到不是卖弄生死，既然整合所有FF7，那么所有FF7的共同点绕不过去的就是水葬和死亡。以前也是爱丽丝复活的谣言操作满天飞，这次直接给大家整清醒\n回复 @真的开心- :不放下过去怎么超越AC？不接受死亡成为不了英雄，萨菲罗斯就是抗拒死亡\n回复 @黎安卓折磨擦 :不，他是重生的克劳德。最终幻想7就是击破幻想的过程，OG就是这样，毫不留情地把幻象撕碎，让你认清自己。丧失带来的力量我在04爱丽丝决心那里讲过了，自己看。爱丽丝亲自说的向前看，看向未来，超越萨菲罗斯\n回复 @真的开心- :你们看来可能是推测，对于我来说只是证明题罢了。没有一条线索是我自己捏造的，全是官方给的。鸟山说的：丧失是故事的主题之一，全员存活那就是别的世界。萨菲罗斯说的：脱离命运的世界终将迎来终结。爱丽丝说的：都要向前看。野村说的：是不愿意放手重要之人的死亡。最终幻想7是一个终结幻想的游戏，沉浸在幻想中最后受伤的人不会是我。已经不需要幻想了，我要活在我的现实中。我绝对没有丝毫主观，FF7专门爆杀唯心主义。');
INSERT INTO `easy_text_exploration_summary` VALUES (16, '影视化配乐和游戏配乐的区别讨论', 'J', NULL, NULL, NULL, NULL, NULL, '前者为剧情服务，剧情达到高潮音乐也将达到高潮，有的甚至是先有曲再有的剧，比如今年奥斯卡最佳原声音乐都是导演根据音乐拍电影。后者有很多种，最常见的就是场景音乐，这类曲子一般没有尾声，都是结尾接开头无限循环，场景中不为剧情服务。简单来说就是要有头有尾，重生的boss战系列的曲子都是有完整结构的曲子，所以我经常拿来学习');
INSERT INTO `easy_text_exploration_summary` VALUES (17, '惕麦卡锡主义复辟', 'D', NULL, NULL, NULL, NULL, NULL, '警惕麦卡锡主义复辟，警惕敌对势力将个别现象污名化为整体再套用特定个人，普通群众适度吃瓜，切莫泛政治化，当心一腔热血被煽动被利用');
INSERT INTO `easy_text_exploration_summary` VALUES (18, '文青与上山下乡', 'D', NULL, NULL, NULL, NULL, NULL, '想起来之前一个知青作家发的文章，讲他曾经写了很多插队时的悲惨故事，过的多么不容易。后来他回到了插队的地方，请老乡吃饭，饭局上又说当时过的多惨。老乡说，你才在农村待几年？你过得在农村都是好日子了，你回城以后写了这么多描述你过的辛苦的文章，为什么没有一篇文章写农民的日子辛苦？作家说他当时哑口无言，他一直认为他和农民是两个世界的人，从来没想到农民也是人，也想过好日子，更没想到，城里人回城后后代可以去国企，而农村人却只能祖祖辈辈被迫留在贫瘠的农村。');
INSERT INTO `easy_text_exploration_summary` VALUES (19, '欲水-乐评', 'J', NULL, NULL, NULL, NULL, NULL, '太多事情都是这样。就是不承认，就是不面对，路走得艰难又迟缓，直到卷入时代的洪流，连滚带爬的往前跑，撕裂着筋骨，扭曲着关节，脆弱的内核，一碰就碎。雪花去又来，尘土一层层，大地像一个饱经风霜的美丽姑娘，默默承受一切。');
INSERT INTO `easy_text_exploration_summary` VALUES (20, '对蒂法性格外形的评价', 'H', NULL, NULL, NULL, NULL, NULL, '从外表来看：一个是人物建模，另一个特殊设定。建模方面东方脸形、黑长直，黄金分割的上下身比例，臀比肩宽的性感身材，傲人却不失调的胸围。特殊设定来看：红宝石的眼睛看上去像刚哭过，配上温柔的性格显得更加温柔，让人保护欲拉满；海豚辫体现出可爱灵动的一面，腹肌显示出健康的美，含蓄内敛的性格和近战格斗暴力输出的反差感。这些外貌的特点，基本上把人戳死。性格上的塑造就更加成功了。以往女神级人物的塑造基本都有个共同的模板：不食人间烟火气，不着人间俗衣服。比如小龙女、尤娜、林黛玉，感觉都是从天上掉下来的。而蒂法的塑造却打破常规，几乎精通所有的生活技能，洗衣做饭赚钱养娃，开车调酒弹琴打架，而且照顾别人几乎是本能，一路上对克劳德、对尤菲的照顾都是自然而然的。这样塑造女神的方式很容易失败，但是蒂法成功了，这中间尺度的拿捏 m很难，只能说制作组真的很用心。');
INSERT INTO `easy_text_exploration_summary` VALUES (21, '人民的眼睛是雪亮的', 'D', NULL, NULL, NULL, NULL, NULL, '人民的眼睛是雪亮的，这是确确实实的真理，只不过人民一旦学了点知识，有了点财产，就要有幻想，就要患得患失，就要半瓶子水晃荡，我也是这样的人啊，特别是那群自诩为知识分子的人民，让他们在专业领域下判断还行，让他们在战略领域下判断只会把人带入歧路，如果学问学通了，那反而和最朴素的人民的立场和判断是一致');
INSERT INTO `easy_text_exploration_summary` VALUES (22, '鲁迅的《风筝》与久美子', 'I', NULL, NULL, NULL, NULL, NULL, '就是遗憾无法挽回了，鲁迅的《风筝》里，作为哥哥的鲁迅故意弄坏了年幼弟弟的风筝，认为玩风筝没出息，长大后发现这是错的去道歉，但弟弟已经不记得了，这种遗憾就是一口气堵在那出不去了，你也没法做任何事去排解掉这股怨气，因为事已至此。久美子也是这样，最后一年大赛，没能soli就是没能soli，遗憾就一直在那，长大后还要回到这个不开心的地方，一切都像没发生过的一样。 或许有没有soli对于久美子的人生并没有那么重要，她或许没那么在乎。但在这部作品里，在看了京吹三季的观众心里，soli是一个很重要的事，但花田把这个遗憾刻在观众心里，最后还写了长大，打破幻想，明确让观众知道，哦，久美子大赛没有soli，最后拿了金，这件事是已经发生并且已经过了很久，也没人在乎了。');
INSERT INTO `easy_text_exploration_summary` VALUES (23, '以恶制恶就不是在比谁更正义', 'B', NULL, NULL, NULL, NULL, NULL, '以恶制恶就不是在比谁更正义，就是比谁更抽象无耻下作！');
INSERT INTO `easy_text_exploration_summary` VALUES (24, '如果没有他，可能今天在场的一些队友甚至不会成为职业球员', 'G', NULL, NULL, NULL, NULL, NULL, '对咯，不用“抱歉”，也无意义对我失望。我是我，你是你，我们不可能总是同频。我对C罗不是粉丝滤镜，是世界上没人能了解的感情。单看这一场他没有很好的承担起队长的责任；但如果没有他，可能今天在场的一些队友甚至不会成为职业球员。也不会有今天的我。足球性上来讲，我觉得下一场应考虑若塔替他首发。');
INSERT INTO `easy_text_exploration_summary` VALUES (25, '我希望玩ff的大家和这首音乐一样', 'N', NULL, 'FF7:', NULL, NULL, NULL, '玩最终幻想7re，然后b站查到音乐会，听到这首进来了。我希望玩ff的大家和这首音乐一样想，不论遇到什么，要想着游戏曾经带给我们的震撼和感动。一直向着人生的下一章节走去，到最后回顾这一生的剧情，没准会死而无憾呢。');
INSERT INTO `easy_text_exploration_summary` VALUES (26, '面试技巧1', 'S', NULL, NULL, NULL, NULL, NULL, '做为一个cs专业的平时不怎么说话的i人，我从初升高时面一家挂一家到现在找实习只要面了都有offer，我总结出来最重要的其实是准备充分，上网搜别人的面试体验，提前准备好hr会问的问题的答案，选一些会给面试官留下深刻印象的小故事，写好稿子练熟，面试的时候就会有种一切尽在掌握之中的自信，行为面的时候我手舞足蹈自信爆棚，技术面的时候我老沉稳重，表达出虽然我能力很强是公司配不上我但我看上你们工作环境好/离家近/员工氛围友善所以我很喜欢你们公司，这一招真的屡试不爽，而且只需要面试前准备个两三个小时就行');
INSERT INTO `easy_text_exploration_summary` VALUES (27, '宋代是主要关键所在', 'K', NULL, NULL, NULL, NULL, NULL, '“每当人们研究中国文献中科学史或技术史的任何特定问题时，总会发现宋代是主要关键所在。不管在应用科学方面或是在纯粹科学方面都是如此。”――李约瑟。\n​  在b站看视频多了以后，发现说古代建筑技术必绕不开宋代的《营造法式》，讲古代军事科技必绕不开宋代的《武经总要》......点开这个视频之前，我就知道大概率和宋代有关，进来一看果然如此。于是便有了一种模糊的感受，想到了以前看的《中国科学技术史》里的这句话，真是令人感慨。[笑哭]');
INSERT INTO `easy_text_exploration_summary` VALUES (28, '您在1997年有幸玩过最终幻想7吗?', 'K', NULL, NULL, NULL, NULL, NULL, '您在2004年戛纳电影节看到了FF7AC的新闻吗？\n您在2005年第一时间看到FF7AC这部跨世纪的CG电影了吗？\n您在2006年E3游戏展上看到了PS3实机验算的FF7开场CG吗？\n您在2007年为了这一句：“你是我活着的证明”而泪流满面吗？\n您在2012年为了关于FF7重制项目因目前技术无法完成制作的新闻而感到心灰吗？\n您在2015年E3游戏展上为了那一个一等就是九年的制作决定宣传片而激动流泪过吗？\n那您一定是无比热爱和喜欢这一款游戏的玩家。\n希望野村和北濑提交上一副满意的答卷，让玩家知道这14年的等待是值得，是幸福的！');
INSERT INTO `easy_text_exploration_summary` VALUES (29, '越是对神进行模仿', 'H', NULL, NULL, NULL, NULL, NULL, '“越是对神进行模仿，越是能意识到神的伟大之处”，蒂法这作品塑造的是真滴好看');
INSERT INTO `easy_text_exploration_summary` VALUES (30, '门槛是技术，基础是情感，加分是表达，终极是审美', 'J', NULL, NULL, NULL, NULL, NULL, '门槛是技术，基础是情感，加分是表达，终极是审美。其实不谈特别艺术化的部分，就单纯说最普通最大众的流行乐，如果一首歌能够引起你的情感和价值观共鸣，你就会愿意单曲循环越看多了听多了，就越理解审美的提高真的需要时间沉淀。');
INSERT INTO `easy_text_exploration_summary` VALUES (31, '极端化看起来好像是利器', 'G', NULL, NULL, NULL, NULL, NULL, '极端化看起来好像是利器，砍敌人十分顺手 但极端化的问题在于，极端化是为攻击敌人打造的利器，挑头的人知道哪些是真实诉求哪些是攻击的手段，但后来被极端化的理论吸引来的人不会认识到，他们是真的信了这套说法的。然后局势就往不可控的方向发展了。而且极端化的理论上在道理上往往站不住脚，很容易被人反驳，甚至被人反击回去。极端化之后的魔怔人又很有攻击性，到处招惹事端');
INSERT INTO `easy_text_exploration_summary` VALUES (32, '机缘巧合入行', 'S', NULL, NULL, NULL, NULL, NULL, '这个事情说起来也很奇妙，有个朋友高中毕业以后机缘巧合入行的。靠着自己脸皮厚快速的掌握了从策划到报批到调音的所有流程。后面独自漂泊混京圈去了……认识她听她聊了圈子里的八卦后，对这个行业祛魅了。很多国内一线大场地，都是草台班子罢了');
INSERT INTO `easy_text_exploration_summary` VALUES (33, '真实的商业就是人有多大胆地有多大产', 'F', NULL, NULL, NULL, NULL, NULL, '不知道大家是什么感觉，但我这个学期修了一门商法的课，属于很基础的那种，看完这个视频后的感觉只有四个字：无法无天。。。真实的商业就是人有多大胆地有多大产');
INSERT INTO `easy_text_exploration_summary` VALUES (34, '我们生而为人，是有机会成为更加高尚，更加美好的生物的。', 'G', NULL, NULL, NULL, NULL, NULL, '德国无愧于人类哲学中流砥柱的历史地位，贝多芬（当然还有席勒）和歌德，《欢乐颂》与《浮士德》，皆是将人性的崇高摈除杂志后留下的结晶。浪漫主义在世上留下的一切痕迹，正如我在肖邦的曲子里找到的那句话：这些作品无时不刻在提醒我们，我们生而为人，是有机会成为更加高尚，更加美好的生物的。');
INSERT INTO `easy_text_exploration_summary` VALUES (35, '音乐有他自己的呼吸', 'J', NULL, NULL, NULL, NULL, NULL, '音乐有他自己的呼吸。音乐于我就是一切。——“指挥界的帝王”赫伯特.冯.卡拉扬（1908.4.5-1989.7.16）');
INSERT INTO `easy_text_exploration_summary` VALUES (36, '大概率对方的知识和人性的拿捏已经远超于你', 'B', NULL, NULL, NULL, NULL, NULL, '当你发现一个人性格投缘，价值观相近，可以作为知己的时候。大概率对方的知识和人性的拿捏已经远超于你了');
INSERT INTO `easy_text_exploration_summary` VALUES (37, '在没人看好你的时候，你就找最看好你的，出价最高的', 'S', NULL, NULL, NULL, NULL, NULL, '有时候你的研究会受到原公司的打压，而当你最终取得成果的时候，最好的选择不是在原公司展示你的成果。高层会迅速把你的成果商业化，然后记恨你之前的忤逆行为，把你架出你应得的位置，这无疑是恩将仇报。\n因此，在没人看好你的时候，你就找最看好你的，出价最高的，总没错。千万不要执着于“让曾经看不起我的人对我刮目相看”。');
INSERT INTO `easy_text_exploration_summary` VALUES (38, '楼主恐怕已经牢里待几年了', 'H', NULL, NULL, NULL, NULL, NULL, '楼主恐怕已经牢里待几年了，要不然一定会站出来嘴硬几句的');
INSERT INTO `easy_text_exploration_summary` VALUES (39, '诡异的无人报警', 'G', NULL, NULL, NULL, NULL, NULL, '这种企业是不允许工人私自报警的，这是一种无法言说的悲哀，说说为什么会出现诡异的无人报警的情况，这种煤矿企业是很忌讳报警的，出了事故报了警就得查原因，从事后的调查报告也可以看出来企业要啥啥没有，根本经不查，检查出的问题还得花钱去整改，而且还不是一笔小钱，企业第一反应都是要求内部解决，说来也可笑，你要是第一时间报了警，企业回过头来可能还得处理你。\n​  导致此事的原理是     工人报告给班长让班长报警   班长报告给主任让主任报警   主任报告给领导  但是火灾是6点烧的 6点领导没起床不在现场  不知道火情大小  等到现场了  消防车估计都快把火灭了 所以领导就不需要报火警了 就这么个原理\n​  很正常，我学校也出过类似的事情，当时有个女生报消防，被班主任骂的狗血淋头，还威胁说她浪费公共资源，要处分她。整楼疏散更是大事，又复杂又危险，没有领导拍板，谁敢组织？要是最后没事，反而因为你组织疏散造成了损失，上面只会觉得你兴师动众，猜猜看最后是谁赔偿损失和受到处罚？最关键的是据我所知你要是遇到这种情况，维权都没人鸟你。之前那个纺织厂火灾也是类似的情况\n​  待过的某企业也是这样规定的。员工报告科长，科长报告部长，部长报告当班副总，副总才有权力决定报警。员工直接报警会被处罚。\n​  我要是在这种单位，年轻时我会第一时间无脑报警，现在我也不会报警。但是我也不可能这么近距离围观，保证自己安全的同时看着就好，我怕万一火没烧起来领导追究报警的责任把我解决掉。');
INSERT INTO `easy_text_exploration_summary` VALUES (40, '牢大梗锐评1', 'G', NULL, NULL, NULL, NULL, NULL, '越是这样就越是说明当今社会的压抑程度很高，一个人的死亡也可以被娱乐化。他死的非常悲惨，他虽不是什么有德之人但也不是大奸大恶之徒。即使他不被纪念，也不该成为众人笑柄\n​  解构是把双刃剑，今能够让神圣的事物祛魅，也可以让邪恶的事务无害\n​  蔡徐坤和科比这种梗在我看来都是一种比较方便快捷低成本的互联网抱团取暖方式，这些梗本身没有任何意义，有意义的是多个人会因为视频或其他载体中出现了他们同样熟知的梗而连接在一起，从而获得某种认同感和集体感\n​  最令人害怕的其实是牢大的梗逐渐不在是一种梗，而变成互联网上依靠解构来攻击、毁灭一些形象和概念的武器，成为一些人情绪的宣泄口，曾经人们在意科比干了哪些坏事，牢大的梗才渐渐成型，以后人们不在乎某人是否真的干了坏事，只要有一点点捕风捉影的消息，不管消息有没有被确认为事实，意欲攻击他的人都会给他制造出牢x这样的烂梗，给她配上see you again的背景音乐，把他画成和科比一样的冰红茶，然后不明事理的大众也随之兴奋，没有人在意新梗是否有趣，他们只在意这会是下一场群体攻击的狂欢，这样的对象不会只有一个两个，每个人在互联网上都会成为潜在的被解构的候选人');
INSERT INTO `easy_text_exploration_summary` VALUES (41, '牢大梗锐评2', NULL, NULL, NULL, NULL, NULL, NULL, '我觉得还是他死后朋友圈莫名多一堆可能篮球都没摸过的资深粉丝缅怀，那种跟风行为最后牢大买单。就像坤坤被黑也是源于各种无脑粉的吹捧。我觉得本质讨厌的不是牢大或者坤坤，而是用这种方式来讽刺脑残粉。讽刺那些无脑跟风者。\n​  跟风这点很重要，现在中国互联网喜欢造神和跟风的最后都会被反噬，比如爱猫人士啥的\n​  这玩意儿跟乒坛的张继科差不多，你可以骂他们的人品，但不能否认他们的实力与成就。抛开私生活婚内出轨不谈，牢大是个好人，但是也就是这一个污点，使得玩牢大梗有了正当的理由。不过，某种意义上，也是这个梗，使得有更多人愿意去了解科比，就像当时的蔡徐坤和背带裤鸡一样，为他在互联网上带来二次热度。玩梗的人中肯定会有一部分对此产生好奇，从而去了解科比本人的，也不完全是负面影响\n​  如果任何东西都可以被解构，任何底线都可以被打破，那么这个世界真的有些可怕\n​  当我们提到牢大时，我们究竟在谈科比，还是一个完全抽象的符号，或是两者兼有。但无论多宏大多神圣的事物，都经不起反反复复的解构。\n​  当年的科黑和科密都上年纪了，有更多比在网上带节奏玩梗或者据理力争更重要的东西，争论的主体不在我们这代人身上。但那么多年过去，看到黑詹时总会看到黑科的，毕竟前者还是现役的，还会有争论。第一次反感关于科比舆论的其实是他去世后几天，很多毛头小子甚至饭圈小姑娘在那哭鼻子说rip，当时觉得真球迷就像被践踏，也猜到以后会物极必反的。\n​  反正觉得这些梗不好笑[捂脸]拿一个已逝世的人作为笑话和玩梗我觉得挺....[捂脸]现在基本也不逛互联网，感觉现在网络乌烟瘴气的[灵魂出窍]这估计也是融入不进同学圈的原因吧\n混饭圈时遇到过这种情况，一开始是黑称，粉丝有另外的理解，就用了这样的叫法，粉丝叫的人多了，那么就成了爱称。确实，一个人真正的死去是在被遗忘、名字不再被提起的时候\n​  外网一样的，也关注了的外国的meme频道，真的现在啥都能成梗。只能说现在互联网版本迭代速度太快了，能火一周以上的梗都是少数\n​  如鲁迅先生所言，又超脱鲁迅先生所言，在互联网时代发展至今，人们找到了一种自己认可的，有根据，有理论的“吃人”方式，然后他们发现，流量创造的人血馒头是如此美味。\n​  亚空间生物大横行，说到底还是拿道德米线兑换成金钱的市场制度确立起，大环境的素质高低就与经济水平牢牢捆绑了\n​  这个对过世球星玩的烂梗真的太过太过了 它已经传播到对篮球和球员没有建立任何正面情绪的普通人身边了 一群人拿去世的人开玩笑已经跟当事人没有任何关系了 一大群人对社会良俗弃之敝履 这太抽象了 更抽象得是 我已经没有勇气去反驳这些人了 这群人数字太庞大了\n​  从牢大开始爆火的时候已经跟科比本人关系不大了，近几年网络冲浪也是越来越冲不明白，任何你觉得是特殊的有意义的东西在别人眼里也什么都不是，你认为的“神作”在别人眼里也只是一坨，好像越是公认的东西越容易激起逆反心理');
INSERT INTO `easy_text_exploration_summary` VALUES (43, '怪不得叫最终幻想', 'H', NULL, NULL, NULL, NULL, NULL, '怪不得叫最终幻想，每一部都是当做最后一来做');
INSERT INTO `easy_text_exploration_summary` VALUES (44, '人类的能耐仅此而已', 'I', NULL, NULL, NULL, NULL, NULL, '人类都是奇怪的生物，他们所有的行为都被欲望驱动着，在痛苦中塑造出自己的个性，他们尽可能的抑制痛苦，克制欲望，却无法解放自我，只能永远奴役于自己的感受。只要内心的风暴未平息，他们就找不到一丝安宁，活着寻不着，死了觅不到。所以日复一日，他们终究会执行该作的任务，痛苦犹如一艘船，欲望是指南针，人类的能耐仅此而已');
INSERT INTO `easy_text_exploration_summary` VALUES (45, '这就是一辈子都在盲目追求的形式主义', 'D', NULL, NULL, NULL, NULL, NULL, '这就是一辈子都在盲目追求的形式主义，上学时被领导逼着表演，工作上级追着看表演，打个游戏还要做没用的形式去维护，累死了');
INSERT INTO `easy_text_exploration_summary` VALUES (46, '互联网管理变严了', 'D', NULL, NULL, NULL, NULL, NULL, '16–20左右，因为互联网管理变严了，反对派的声音听不见了，很多黑料也不让发了，但是国外的黑料可以发。新生代自然以为社会一片光明，再加上现在发明了一套转移矛盾的杀招，说不过直接扣帽子说你是蛙蛙美，这样就牢牢掌握话语权了');
INSERT INTO `easy_text_exploration_summary` VALUES (47, '我的替lgbtq洗一下，这真的没有什么坏心思', 'H', NULL, NULL, NULL, NULL, NULL, '我的替lgbtq洗一下，这真的没有什么坏心思，只是在美国学校向未成年洗脑，诱导他们变性，这样他们的群体就变大了，影响力也会变大，至于未成年人变性长期服药对身体产生的危害，只不过是觉醒的代价而已，为了更好的对青少年洗脑，游戏领域显然而已然是最好的平台，动画电视剧电影，你长得太丑，那真的是很多人看不下去，所以宣传lgbtq往往不怎么理想，而游戏最主要的是玩法关卡设计画面人物往往不是最重要的，所以是最适合宣传lgbtq的，他们不是有意的恶心玩家，只是想给你洗脑诱导你变性，让你少走很多弯路，加入lgbtq大家庭，他们哪有什么坏心思，只是想害人而已，而且不要以为游戏圈都讨厌lgbtq，那些真心热爱游戏的人会讨厌，但普通打工人lgbtq来说对他们有利无害，宣传自己是lgbtq，少工作多拿钱，谁反对你就扣迫害lgbtq的帽子，找工作更容易，说自己是lgbtq，你公司不收就是歧视，就连美国救灾也是优先救助lgbtq人士，这背后是由美国民主党大力推行的结果，所以游戏公司一旦加入了lgbtq，那它就会像病毒一样蔓延开来，最后侵蚀整个公司，那些有理想的想做游戏的，要么辞职，要么不敢说话');
INSERT INTO `easy_text_exploration_summary` VALUES (48, '广义上来讲市面上的二次元手游都脱胎于jrpg', 'K', NULL, NULL, NULL, NULL, NULL, '广义上来讲市面上的二次元手游都脱胎于jrpg，ff作为元老级游戏确实算二游');
INSERT INTO `easy_text_exploration_summary` VALUES (49, '真正能让我共情的是人物的行动和选择，话语和动作', 'I', NULL, NULL, NULL, NULL, NULL, '我现在越来越讨厌细致入微的人物刻画和连篇不断的心理描写，感觉思想和理由都是为苍白无力的文字蒙上一层画皮。真正能让我共情的是人物的行动和选择，话语和动作。也许是你在生活中犹豫过类似的事情，也许是某个熟悉的动作，让角色和自己的记忆、思想和精神产生共鸣，看似写人，实际却像一幅快照，勾起心中无限感慨。');
INSERT INTO `easy_text_exploration_summary` VALUES (50, '有些游戏只是氛围和乐趣。而其他时候，一款游戏会出现并定义一个时代', 'K', NULL, NULL, NULL, NULL, NULL, '有时，有些游戏只是氛围和乐趣。而其他时候，一款游戏会出现并定义一个时代。《最终幻想7》肯定是这样。\n即使你在游戏配音界已经达到了顶尖的地位，获得了历史上最具标志性的游戏之一的梦寐以求的配音角色');
INSERT INTO `easy_text_exploration_summary` VALUES (51, '在这里先向大家传授一个从零开始开发操作系统的诀窍', 'N', NULL, NULL, NULL, NULL, NULL, '在这里先向大家传授一个从零开始开发操作系统的诀窍，那就是不要一开始就一心想着要开发操作系统，先做一个有点操作系统样子的东西就行了。如果我们一上来就要开发一个完整的操作系统的话，要做的东西太多，想想脑袋都大了，到时恐怕连着手的勇气也没有了。笔者就是因为这个，几年间遇到了很多挫折。所以在这本书里，我们不去大张旗鼓地想着要开发一个操作系统，而是编写几个像操作系统的演示程序1就行了。其实在开发演示程序的过程中大家就会逐步发现，演示程序不再是简单的演示程序，而是越来越像一个操作系统了。');
INSERT INTO `easy_text_exploration_summary` VALUES (52, '某网友评《恶魔人——crying boby》爱的接力棒', 'I', NULL, NULL, NULL, NULL, NULL, '这个故事的内核就是在讲叙人生就是一场接力赛，这个最后交棒的环节映射出来的就是美树付出生命把自己的“棒”交接到了明的手上，可是明想把接力棒传递给撒旦的时候，撒旦并没有接，代表生命与希望的“棒”摔在了地上，这就是这个故事的内核，你必须完全读懂，才会发现这是艺术品，就像你是你父母的接力者，父母未来终究是要把“棒”交接到你手上，如果你自甘堕落毫无上进，这根“棒”就会掉在地上从而失去传承，如果无法读懂这部作品带来的道理，只看见了表面的悲剧就有可能会对三观产生一定的影响，这也是为什么这作品是21十的原因，内核是讲述人类之间的互相理解、信任、传承的故事，也就是白背景的接力赛，外核则是人类因为互相猜忌、诋毁、不相信他人则从内部毁灭，因为每个人都把传承的“棒”舍弃了，开始对自己身边的朋友、家人、孩子开始产生隔阂而导致的世界毁灭。');
INSERT INTO `easy_text_exploration_summary` VALUES (53, '下载的最好用pr重新导出一次', 'C', NULL, NULL, NULL, NULL, NULL, '如果是下载的最好用pr重新导出一次 选cbr然后55000mbps再放到剪映去用');
INSERT INTO `easy_text_exploration_summary` VALUES (54, '我期待所有经典作品都能以这样的水平去进行重制', 'H', NULL, NULL, NULL, NULL, NULL, '这个世界上有着太多的游戏等着我们去玩，那些年代久远的神作以如今的眼光很难去理解它们曾经的辉煌与带给全世界玩家的震撼，这就是为什么我们需要重制，我们需要让以后的玩家们也能够感受到这些游戏当年是如何给那些人带来感动的！所以我期待所有经典作品都能以这样的水平去进行重制，虽然这是一条漫长的道路。');
INSERT INTO `easy_text_exploration_summary` VALUES (55, '属于境外收入，steam一直是灰色地带', 'F', NULL, NULL, NULL, NULL, NULL, '美国那边要缴的，反正我在b站搜的所有开发者都说要向美国缴税，区别就是有的说要缴20%有的说只需要缴10%，后面查了下20%的应该是账户开在美国多缴了个人所得税，一般情况下只需要缴消费税\n​  属于境外收入，steam一直是灰色地带，按照我们的规定国外虚拟产品必须在国内设立公司，必须在国内取得版号，steam根本没有，你没发现吗？你微信或者支付宝付款的时候是兑换成美刀直接发给v社的');
INSERT INTO `easy_text_exploration_summary` VALUES (56, 'kitsch', 'I', NULL, NULL, NULL, NULL, NULL, '\"Kitsch\"音译\"刻奇\"，最早见于19世纪下半叶德国慕尼黑方言\"Kitschen\"，直意\"从街头搜集垃圾\"，该原始含义指人们留存一些无实体价值的破烂物作为某一特殊事件的纪念，此时的\"刻奇\"蕴含着物件与纪念的双重内涵。\n\"刻奇\"被接引到中国则归功于《不可承受的生命之轻》，昆德拉将其描述为\"一个人在具有美化功能的哈哈镜面前，带着激动的满足看待自己\"，在其他作品中，昆德拉又继之以更丰富的阐释: \"灵魂的虚肿症\"、\"将既定模式的愚昧，用美丽的语言把它们乔装起来，甚至连自己都为这种平庸的气象和感情流泪\"、\"傻瓜的俗套逻辑\"、\"极权国家发展了这种刻奇，因为这些国家不能容忍个人主义、怀疑和嘲笑\"，因而昆德拉在中国大陆的最早中文译者景凯旋将\"Kitsch\"/\"刻奇\"解读为一种\"自我伟大的非个人化的不真实的激情\"。\n有兴趣的话，还可以看看卡斯顿海雷斯和崔卫平的读法，后者的八层心理递进式的定义特别平易好解(｡･ω･｡)\n——初见与《伊丽莎白》音乐剧的一曲《kitsch》');
INSERT INTO `easy_text_exploration_summary` VALUES (57, '不是哥们，你们第一次玩贴吧', 'S', NULL, NULL, NULL, NULL, NULL, '10年李毅吧火起来的时候开始玩贴吧的（4万人、888帖谁还记得），这么年来看了这么多骂战（雷霆三巨头吧-罗玉凤吧-抗压吧-背锅吧），就没见过有人会改变观点的或者服软认输的。老厂迷了，看完比赛波澜不惊，上了贴吧哇塞那叫一个大世界展开，惊叹于现在居然还有这么多小朋友还在孜孜不倦尝试去说服别人改变立场和观点的，真的搞笑，还跟人在那有模有样的逐帧分析，你觉得你们分析来分析去对面会改变一丝丝的观点么？\n?想骂想喷直接骂直接喷就是了，你们塌么都玩贴吧了，还那么在乎脸面干嘛，上厕所前还要穿西装打领带？真的想笑。对其他球队的粉丝这句话也一样适用，看球越多其实欣赏的球队越多，真没啥好吵的，粉的球队再牛笔也不会对你的生活有一丝一毛的影响，该搬砖搬砖，不过真羡慕你们年轻人还有那么多荷尔蒙可以释放，哈哈。要做恶人就做纯粹的恶人就好，最痛苦的反而是那些半善不恶的#(哈哈)');
INSERT INTO `easy_text_exploration_summary` VALUES (58, '狼少女与黑王子锐评1', 'H', '', '', 'https://www.bilibili.com/bangumi/play/ep320753?spm_id_from=333.1007.top_right_bar_window_history.content.click&from_spmid=666.25.episode.0', '', '', '男主火化的时候只剩一团灰和一张嘴哈哈');
INSERT INTO `easy_text_exploration_summary` VALUES (59, '法国的警察和宪兵', 'G', '法国', '', '', '', '', '一个生活在法国乡镇的冷知识：法国的国家警察一般情况下，是没有城市之外的执法权的。乡村的治安都是Gendarmerie，也就是宪兵们在负责。而且，宪兵的办事效率比警察高一万倍，真的会努力帮你解决问题。我有一次报案的时候和办公室的宪兵队长聊天，开玩笑的问过为什么。他说：“很多警察是在上班。他们随意的挂断报警电话，不认真记录警情，到时间就挥手走人。这在法国的工作中很正常。但是我们的不是工作，我们是法国军人。你知道的，宪兵只有法国人能当。”<br>其实很多西方国家的很多警察和有执法权的保安差不多，没有什么责任感和荣誉感，就拿地方政府一份工资，玩命更是不可能。\r\n典型代表就是美国警察，除了牛逼哄哄的FBI（联邦/中央警察）会有好莱坞帮忙宣传和总统站台，地方警察就是一份高级保安的工作。<br>一个老笑话：话说一批巴黎人又双叒叕看不顺眼一个政策，发起一次游行。开拔时，发现只有几个民警穿常服在维持秩序。发起人好不满意，就跟负责警官咆哮：恁是瞧不起人呐！快喊宪兵防暴警过来！');
INSERT INTO `easy_text_exploration_summary` VALUES (60, '汉末最强搅屎棍——吕布', 'K', '', '', '', '', '吕布', '所以说他是汉末最强搅屎棍呢\r\n你根本就不知道这个人脑子里想的是什么！\r\n当他害死丁原的时候，你以为他想做新朝代的功臣。\r\n当他弄死董卓的时候，你又会以为他其实是双面特工，心底还是向着汉室的。\r\n当他偷袭曹操的时候，你以为他其实胸怀远大，想着争霸天下。\r\n当他偷袭刘备的时候，你以为他是想像西汉末年的窦融一样割据一方，把自己卖个好价钱。\r\n当他背叛袁术的时候，你彻底反应过来，原来这个人就是个大傻叉！\r\n他脑子里根本一点东西也没有，纯粹想一出是一出，根本没考虑过后路！！！\r\n但就是这么一个大傻叉，却导致了东汉末年的超级大乱世。\r\n因为他的缘故。\r\n西凉军失去约束，关中彻底沦为血肉屠宰场。\r\n因为他的缘故。\r\n曹操和刘备两个人的起家变得困难无比，曹操多花费了5年时间才稳定了内部，也正是这耽搁的5年，江东孙家开始崛起，间接影响了后来的赤壁之战的结果。\r\n刘备更惨，从徐州离开之后，一直颠沛流离，直到十几年后才在荆州站稳脚跟，但此时北方曹操已然势大，汉室复兴几乎变成了不可能。\r\n袁家更是成了献祭品，因为袁术的死，导致北方的袁绍陷入孤掌难鸣的状态。\r\n可以说如果没有这个人，就没有后来的三国！\r\n大概率是袁绍和曹操火并之后，决出一个胜者，然后迅速统一天下，更不会有后来的糟心事。');
INSERT INTO `easy_text_exploration_summary` VALUES (61, '人生有目的：亲鸾圣人', 'B', '', '', '', '', '亲鸾圣人', '人生有目的，有一个万人皆同的目的。那就是斩断苦恼的根源，获得“生而为人真好”的生命喜悦，活在未来永恒的幸福里。为此，无论遭遇多大的痛苦，都要顽强地活下去，直至达成这个目的。 ——亲鸾圣人 ​');
INSERT INTO `easy_text_exploration_summary` VALUES (62, '锐评考哥：私生活和演技真没关系', 'N', '', '', '', '', '樱井孝宏', '私生活和演技真没关系，而且也大可不必上升到工作上，声优圈大御所也国内出轨老前辈也人设塌房，该有工作还是有工作，而且由于现在新生代全是些偶像型没太多演技，考哥这种中坚很难有人能替代。而且人也有两面，考哥在这个年龄段的男性声优圈子里是非常照顾人的好前辈，看那么多人一直在各种场合想法设法替他说话就知道了，虽然男女关系这边搞烂透了偶像人设塌房了，但在圈子里并没有真的被人人喊打（和日本一直以来的男尊女卑社会形态也有关系），所以这事最后只会慢慢不了了之。所以说真的，厨声优的演技可以，但真别上升到本人，考哥自己那句名言就是最好的写照。');
INSERT INTO `easy_text_exploration_summary` VALUES (63, '衡量作品的四个维度', 'J', '', '', '', '', '', '衡量作品的四个维度：商业价值，行业价值，艺术价值，社会价值。前三相互独立。社会价值基于：商业价值和艺术价值。');
INSERT INTO `easy_text_exploration_summary` VALUES (64, '最幸福的时候', 'H', '', '幸福是什么？', '', '', '', '人们最幸福的时候，是在奔向幸福的时候');
INSERT INTO `easy_text_exploration_summary` VALUES (65, '只有诞生能够征服死亡', 'B', '', '', '', '千面英雄', '', '只有诞生能够征服死亡。只有出生能够战胜死亡——不再是旧有的事物，而是新事物。');
INSERT INTO `easy_text_exploration_summary` VALUES (66, '信而见疑，忠而被谤，能无怨乎', 'K', '', '', '', '', '司马迁', '很能理解，就像司马迁在屈原列传中所言：“信而见疑，忠而被谤，能无怨乎？”');
INSERT INTO `easy_text_exploration_summary` VALUES (67, '斗争与极端', 'D', '', '玩家门下事件下的评论', '', '', '', '极端的本质是对现状极端不满，大多数还是沉默的。当其它不满的人觉得你太极端的时候就会放弃跟随。力量声量小了自然要找盟友的。两边极端到了一定程度就会合流，在两边极端群体中最能赚钱的人不会在乎有没有解决冲突，而是一定会维持冲突存在。一系列分析下来合理而精辟，点了。说句实话就是被夺舍了[吃瓜]。\r\n白左那套不就是吗？一开始的诉求有没有合理性？当然。但资本会“帮”你极端化，把“元老”边缘化，最后钱他们赚了，代价和反噬你来承担。\r\n“一个人要是不下场不参与讨论还好，一旦下场参与讨论，那么他所说过的话和他此刻话语表现出的态度就会轻易地决定他的立场。\r\n他又为了维护自己所说过的话，抛弃原有的比价客观的视角。进而为了维护自身立场的正确性，寻找有利的信息，忽视不利的信息，并最终说服自己坚定这个立场。”\r\n争吵的本质就是一小撮极端的，不可调和的东西要么出于供火，要么就是单纯的nt，他们先下场扣帽子搞歧视煽风点火一气呵成，然后吸引反方向没那么极端但也容易被煽动的群体下场，这些人再凭借自己观念中残存的些许客观，把对方更为客观的群体拉下水，层层嵌套，最后大多数人都被搅动起来。而互联网的本质其实就是比音量，谁音量大谁就是真理，所以不同群体之间的观念只会不断变得失真和极端，变成谁输谁赢、谁高人一等的输赢游戏，早就和观念本身没关系了，观念在这时已经变成了用于pvp站队的工具而已。在直接否认对方整个群体以获取胜利的方法盛行了几年后，最近甚至开始盛行“赢”的氛围，不需要观点输出，甚至不需要证明对方低人一等，直接宣布自己的胜利就完事了，只能说让人忍俊不禁。\r\n极端化的情绪是最好的黏合剂也是最糟糕的武器，保持自己的思考和理性总归是不会坏，不要被别人当做枪使，给自己喜欢的商品买单，不去理不喜欢的商品\r\n我个人认为摧毁一个虚拟产品的最好方式就是不去了解它，不去管它的任何事，缺失热度就是杀死它的最好方法。UP最后提到这个问题的一个原因就是因为有人可以通过拉动群体对立的事情来爆金币。所以会不断蔓延到不同的圈子去。赛博街溜子，赛博流民，赛博kbfz这几个形容确实很贴切。回复 @我可是纯良欸 :用贴吧老哥的一句话来说就是：很多人没有意识到的一个关键就是：当你出现在立场争论处，没有立场也是立场。回复 @八哩哩official :立场我感觉不重要。除非你死我活的立场问题。其他我更看重目的，手段以及后果。我看所谓的立场问题，纯特么扯淡，嘴上一套实际一套。嘴上说的理论没问题，实际操作反着来。立场是什么东西，狗屁。尤其是 那种双方都是垃圾，都解决不了，甚至解决的过程中造成更大的问题，立场？我的立场就是解决问题，解决不了我能忍忍，造成更大的问题给我爬。如何分清谁是敌人谁是可以争取的好多人都没搞明白，仗着情绪就来闹。某种程度彗星还是为了米下场蝶泳了，虽然不赞同关于公司的部分论调，不过某些话我还是挺赞同的，玩网时间长了都知道网络上是有一帮赛博颠佬的，最大的乐趣就是毁灭一切，带节奏开小号搞反串看网民互斗，甚至开盒上赵丹，手段还是那些，哪里能“找乐子”就去哪里，只是现在对象变成了二游罢了，还被一些玩家当成友军。只能说多玩游戏少混社区可以解决99%的烦恼[藏狐]其实这个话题远超游戏这个话题门类。玩家怼游戏媒体这个小群体怼偏门行业的破事为什么会引来主流媒体的下场应战？我们在这边批斗机核，除了圈谁知道？这才是游戏圈的正常状态，圈地自萌。而玩家门出圈，我看是被动的，主流媒体可能是害怕牵出媒体行业权钱交易，权色交易的大料，所以不许游戏媒体认怂，坚决把玩家钉在“耻辱柱”上。联想到游戏圈外，欧美媒体系统性反俄反华，那些人早已形成话语权垄断，思想独裁，为了小群体的利益残酷打击，肆意迫害。');
INSERT INTO `easy_text_exploration_summary` VALUES (68, '中国粮食总产量-1', 'D', '', '中国粮食', '', '', '', '1996年中国粮食总产量突破了5亿吨大关，由此开始，中国主粮的生产稳定地处于供略大于求的局面。也正是这个原因，从1999年开始到2015年，国家在全国范围内大规模地搞退耕还林。规定凡农户退耕的土地，由国家补贴粮食。农民退耕一亩地，国家无偿地拨给其200斤粮食，在长江以南地区，无偿补贴 300斤粮食。补贴不是一年两年，是连续补贴16年！截至2018年，中国实现退耕还林的面积达到了4.47亿亩！想想看，这个摊子铺得有多大！如果粮食储备紧张，谁敢实行这样一种政策？');
INSERT INTO `easy_text_exploration_summary` VALUES (69, '莫扎特慢板主旋律的重要意义', 'J', '', '', '', '', '莫扎特', '这些莫扎特慢板主旋律的重要意义，不在于形式的完美及其感性之美，而在于它们源自其中的深切情感……虽然这种情感完全不掩饰内在的强烈激情，但它表达这种激情，却没有丝毫病态的喧扰或矫饰的自我。');
INSERT INTO `easy_text_exploration_summary` VALUES (70, '闲鱼买二手电脑梗文', 'H', '', '', '', '', '', '支持分期:我是一个骗子\r\n女生自用:电子垃圾\r\n货到付款:我是一个骗子\r\n想要的s聊:傻子赶紧上钩\r\n个人自用:二道贩子\r\n来自于贴吧大佬[doge]');
INSERT INTO `easy_text_exploration_summary` VALUES (71, '红与黑节选', 'I', '', '', '', '红与黑', '', '他一点也不希望强制自己去再演一场伪善的戏，他需要把自己的心灵看看清楚，需要听听激荡他心灵的那许许多多的感情的声音。===它的动作平稳、有力，深深地打动了他，他羡慕它的这种力量，他羡慕它的这种孤独。===这就是拿破仑的命运；难道将来有一天也会是他的命运吗？是我的贫困在跟他们的财富打交道。===我有面包，而且我是自由的！===他双手托着脑袋，待在这个山洞里，沉醉在他的梦想和他得到自由的快乐中，比他一生中任何时候都幸福。===不再像过去那样，经常遭到怒火的破坏，遭到由于意识到自己的贫困和自己在世人眼中的卑贱地位而产生出来的强烈感情的破坏。一个年轻人在二十岁上，只要受过一些教育，他的心灵就会与顺乎自然绝了缘；而缺乏顺乎自然，爱情往往不过是一种最使人厌倦的职责罢了。他的自尊心不允许他在任事情上碰运气或者靠一时的灵感。===如果是与孩子们的教育有关的事，她可以对我说我命令您。但是回答我的爱情时，她必须认为我们之间是完全平等的。没有平等就不可能爱……”；\r\n');
INSERT INTO `easy_text_exploration_summary` VALUES (72, '外卖圈的一句话', 'S', '', '食品安全', '', '', '', '外卖圈有这样句话:炒完菜端给堂食,灶台边的菜收拾收拾装给美团外卖，掉地上的收拾收拾装给拼好饭[星星眼]');
INSERT INTO `easy_text_exploration_summary` VALUES (73, '程序正义相关-1', 'D', '', '', '', '', '', '这就是程序正义的必要性，你不能因为信口胡说偶尔蒙对几次，就支持随意信口胡说。');
INSERT INTO `easy_text_exploration_summary` VALUES (74, '可怜的是blanche这样一个纤弱精致如瓷器一般的女人', 'J', '', '欲望号列车评语-1', '', '欲望号列车', '', '可怜的是blanche这样一个纤弱精致如瓷器一般的女人，最后只有一个精神病医生愿意施舍给她一点点体面和尊重，在那样的年代，一个失去了所有依仗的女人，本来就只有绝路一条，而男主的粗暴和野蛮更加速了她的毁灭。是的，blanche是个骗子、是个需要依靠男人维生的不纯洁的女人，但她活在自己的幻想中，难道不是因为只有在幻想里她才能维持自己的尊严吗。');
INSERT INTO `easy_text_exploration_summary` VALUES (75, '工作的本质也是斗争', 'S', '', '', '', '', '', '以前做中层的时候有和索肖相似的经历，看着索肖绝望的肢体语言很难不共情，也跟索肖一样被搞走了。付出很大代价之后才明白无论是讨好领导还是下属都解决不了任何问题，工作的本质也是斗争。');
INSERT INTO `easy_text_exploration_summary` VALUES (76, '任何事情都有个限度，超过这个限度是很危险的', 'I', '', '任何事情都有个限度，超过这个限度是很危险的。因为一旦超过，就再也退不回来了。\r\n彼得·彼得罗维奇似乎完全没料到会有这样的结局。他是过于自信，过高相信自己的权势，过分相信自己的牺牲品无依无靠的处境了。直到此刻，他都还无法相信刚才所发生的一切。他脸色发白，嘴唇不断地哆嗦着。', '', '罪与罚', '彼得·彼得罗维奇', '');

-- ----------------------------
-- Table structure for exploration_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `exploration_taxonomy`;
CREATE TABLE `exploration_taxonomy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_symbol` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_department` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mark_symbol`(`mark_symbol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exploration_taxonomy
-- ----------------------------
INSERT INTO `exploration_taxonomy` VALUES (1, 'A', '计算机', '计算机');
INSERT INTO `exploration_taxonomy` VALUES (2, 'B', '哲学、宗教', '哲学');
INSERT INTO `exploration_taxonomy` VALUES (3, 'C', '工具', '工具');
INSERT INTO `exploration_taxonomy` VALUES (4, 'D', '政治、法律', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (5, 'E', '军事', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (6, 'F', '经济', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (7, 'G', '文化、科学、教育、体育', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (8, 'H', '梗文妙语', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (9, 'I', '文学', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (10, 'J', '艺术', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (11, 'K', '历史、地理', '社会科学');
INSERT INTO `exploration_taxonomy` VALUES (12, 'N', '不分类', '其他');
INSERT INTO `exploration_taxonomy` VALUES (13, 'O', '数理科学和化学', '自然科学');
INSERT INTO `exploration_taxonomy` VALUES (14, 'P', '天文学、地球科学', '自然科学');
INSERT INTO `exploration_taxonomy` VALUES (15, 'Q', '生物', '自然科学');
INSERT INTO `exploration_taxonomy` VALUES (16, 'R', '医药、卫生', '自然科学');
INSERT INTO `exploration_taxonomy` VALUES (17, 'S', '生活日常', NULL);
INSERT INTO `exploration_taxonomy` VALUES (18, 'T', '工业技术', '自然科学');
INSERT INTO `exploration_taxonomy` VALUES (19, 'U', NULL, NULL);
INSERT INTO `exploration_taxonomy` VALUES (20, 'V', NULL, NULL);
INSERT INTO `exploration_taxonomy` VALUES (21, 'X', NULL, NULL);
INSERT INTO `exploration_taxonomy` VALUES (22, 'Z', '综合性', '综合性');

-- ----------------------------
-- Table structure for label_summary
-- ----------------------------
DROP TABLE IF EXISTS `label_summary`;
CREATE TABLE `label_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label_summary
-- ----------------------------
INSERT INTO `label_summary` VALUES (10, 'FF7');
INSERT INTO `label_summary` VALUES (2, '不常用');
INSERT INTO `label_summary` VALUES (6, '剧本');
INSERT INTO `label_summary` VALUES (4, '小说');
INSERT INTO `label_summary` VALUES (1, '常用');
INSERT INTO `label_summary` VALUES (9, '网站');
INSERT INTO `label_summary` VALUES (5, '诗歌');
INSERT INTO `label_summary` VALUES (7, '软件');
INSERT INTO `label_summary` VALUES (8, '音乐');

-- ----------------------------
-- Table structure for link_summary
-- ----------------------------
DROP TABLE IF EXISTS `link_summary`;
CREATE TABLE `link_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generalise` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link1` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ref` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of link_summary
-- ----------------------------
INSERT INTO `link_summary` VALUES (1, '【CSS】border 属性详解：边框的全面指南', 'A', NULL, '前端:CSS：', 'https://blog.csdn.net/lph159/article/details/142494224', NULL, 'CSS');
INSERT INTO `link_summary` VALUES (2, '【CSS】background详解', 'A', NULL, '前端:CSS：', 'https://blog.csdn.net/qq_40864647/article/details/137632155', NULL, NULL);
INSERT INTO `link_summary` VALUES (3, '【CSS】-- margin', 'A', NULL, '前端:CSS：', 'https://blog.csdn.net/qq_45050686/article/details/131604650', NULL, NULL);
INSERT INTO `link_summary` VALUES (4, '【CSS】-position 相对定位和绝对定位', 'A', NULL, '前端:CSS：', 'https://www.runoob.com/w3cnote/css-position-static-relative-absolute-fixed.html', NULL, NULL);
INSERT INTO `link_summary` VALUES (5, '【CSS】-想学好CSS的position定位？看这一篇就够了，巨详细的position属性讲解', 'A', NULL, '前端:CSS：', 'https://juejin.cn/post/7438824467905986569', NULL, NULL);
INSERT INTO `link_summary` VALUES (6, '【CSS】-CSS中的Float（浮动）', 'A', NULL, '前端:CSS：', 'https://blog.csdn.net/GZM888888/article/details/138472929', NULL, NULL);
INSERT INTO `link_summary` VALUES (7, '【CSS】-Grid布局', 'A', NULL, '前端:CSS：极其便利的网页布局', 'https://blog.csdn.net/qq_74114417/article/details/143247916', NULL, NULL);
INSERT INTO `link_summary` VALUES (8, '【HTML】＜section＞到底是干什么的？使用场景是什么？底层原理是什么？', 'A', NULL, '前端:HTML：', 'https://blog.csdn.net/qq_36777143/article/details/143378741', NULL, NULL);
INSERT INTO `link_summary` VALUES (9, '火绒真的有那么强吗？火绒到底被夸大了多少？', 'C', '软件', NULL, 'https://www.bilibili.com/opus/418447277697813636', NULL, NULL);
INSERT INTO `link_summary` VALUES (10, 'SQL中Limit的用法详解', 'A', '', '数据库：分页查询需要的语法，不过有插件帮你做了', 'https://blog.csdn.net/qq_35320456/article/details/135979645', NULL, NULL);
INSERT INTO `link_summary` VALUES (11, 'imdb', 'J', '音乐', '电影及音乐剧预告片段', 'https://www.imdb.com', NULL, NULL);
INSERT INTO `link_summary` VALUES (12, 'vimeo', 'J', '音乐', '综合趣味、纪录片、音乐人等', 'https://vimeo.com/', NULL, NULL);
INSERT INTO `link_summary` VALUES (13, 'classicfm', 'J', '音乐', '古典音乐作品、作曲家、历史', 'https://www.classicfm.com/', NULL, NULL);
INSERT INTO `link_summary` VALUES (14, 'wikimedia', 'J', '音乐', '相片、音乐及乐谱', 'https://commons.wikimedia.org', NULL, NULL);
INSERT INTO `link_summary` VALUES (15, '代码重工主页', 'A', NULL, 'JAVA网站建设', 'https://www.wolai.com/nnRjHcUSv2mrRbFKZUpBMS', NULL, NULL);
INSERT INTO `link_summary` VALUES (16, 'deepseek', 'C', NULL, '使用AI进行问题咨询', 'https://www.deepseek.com/', NULL, NULL);
INSERT INTO `link_summary` VALUES (17, '4K电影美剧下载 - HDR杜比视界资源', 'J', NULL, '下载电影', 'https://4khdr.cn/', NULL, NULL);
INSERT INTO `link_summary` VALUES (18, 'yinfans电影精选', 'J', NULL, '下载电影', 'https://www.yinfans.me/', NULL, NULL);
INSERT INTO `link_summary` VALUES (19, 'FF7天幻网', 'J', NULL, 'FF7OG资料', 'http://ff7.ffsky.cn/indexold.html', NULL, NULL);
INSERT INTO `link_summary` VALUES (20, 'asmhentai', 'J', '网站', 'R18', 'https://asmhentai.com/language/chinese/', NULL, NULL);
INSERT INTO `link_summary` VALUES (21, 'nyaa', 'J', '网站', '下载动画资源', 'https://nyaa.si/', NULL, NULL);
INSERT INTO `link_summary` VALUES (22, '动漫花园资源网', 'J', '网站', '下载动画资源', 'https://share.dmhy.org/', NULL, NULL);
INSERT INTO `link_summary` VALUES (23, 'nhentai', 'J', '网站', 'R18', 'https://nhentai.to/', NULL, NULL);
INSERT INTO `link_summary` VALUES (24, 'shonenjum', 'J', NULL, '少年jump漫画观看', 'https://shonenjumpplus.com/', NULL, NULL);
INSERT INTO `link_summary` VALUES (25, 'Maven', 'A', '网站', '依赖引用仓库官网', 'https://mvnrepository.com/', NULL, NULL);
INSERT INTO `link_summary` VALUES (26, 'Byrutor', 'C', '网站', '下游戏', 'https://repack-byrutor.org/', NULL, NULL);
INSERT INTO `link_summary` VALUES (27, 'byru', 'C', '网站', '下游戏', 'https://byrutgame.org/', NULL, NULL);
INSERT INTO `link_summary` VALUES (28, 'aurora', 'C', '网站', '翻墙', 'https://kkgithub.com/getaurora/download', 'https://github.com/getaurora/download', NULL);
INSERT INTO `link_summary` VALUES (29, '【CSS】CSS中可继承与不可继承属性有哪些', 'A', NULL, '前端:CSS：', 'https://blog.csdn.net/lph159/article/details/144324317', NULL, NULL);
INSERT INTO `link_summary` VALUES (30, '【CSS】CSS为英文和中文字体分别设置不同的字体', 'A', NULL, '前端:CSS：', 'https://www.cnblogs.com/xfgnongmin/p/10646786.html', NULL, NULL);
INSERT INTO `link_summary` VALUES (31, '下载b站视频网站', 'C', '网站', '下载b站视频', 'https://snapany.com/zh/bilibili', NULL, NULL);
INSERT INTO `link_summary` VALUES (32, '【松冈祯丞·茅野爱衣·樱井孝宏】狼少女与黑王子副音轨·8', 'N', '', '樱井孝宏：', 'https://www.bilibili.com/video/BV1fs41117bs/?spm_id_from=666.25.comment.all.click&vd_source=97df358f3810cee47897117ad268d5f1', '', '无');
INSERT INTO `link_summary` VALUES (33, '这就是VV', 'C', '开源项目=趣味', '你还在为自己存放的VV表情包不够多，使用时觉得不够贴切而感到烦恼吗？快来试试这个项目吧！', 'https://vv.cicada000.work/', 'https://github.com/Cicada000/VV', '');
INSERT INTO `link_summary` VALUES (34, 'github官网', 'A', '网站=开源项目', '', 'https://github.com/', '', '');
INSERT INTO `link_summary` VALUES (35, 'github镜像网站kkgithub', 'A', '镜像网站', '', 'https://kkgithub.com/kgithub666/kgithub', '', '');
INSERT INTO `link_summary` VALUES (36, '推特X官网', 'S', '网站', '', 'https://x.com', '', '');
INSERT INTO `link_summary` VALUES (37, '百度翻译', 'C', '网站', '', 'https://fanyi.baidu.com/mtpe-individual/multimodal?aldtype=16047&ext_channel=Aldtype#/auto/zh', '', '');
INSERT INTO `link_summary` VALUES (38, '一周刷爆LeetCode，算法大神左神（左程云）耗时100天打造算法与数据结构基础到高级全家桶教程', 'A', '算法', '', 'https://www.bilibili.com/video/BV13g41157hK/?spm_id_from=333.337.search-card.all.click&vd_source=97df358f3810cee47897117ad268d5f1', '', '');
INSERT INTO `link_summary` VALUES (39, '最详细的CSS常用文本样式总结', 'A', 'CSS', '', 'https://blog.csdn.net/weixin_56242678/article/details/130512473', '', '');
INSERT INTO `link_summary` VALUES (40, 'mysql 如何将已有字段改成自增', 'A', 'mysql', '', 'https://blog.51cto.com/u_16175491/10080573', '', '');
INSERT INTO `link_summary` VALUES (41, '数据库：数据库设计（需求，设计，运行，维护）', 'A', '数据库', '', 'https://blog.csdn.net/qq_42192693/article/details/109720940', '', '');
INSERT INTO `link_summary` VALUES (42, '【CSS】:before 和 :after 的 content属性（含css计数器）', 'A', 'CSS', '', 'https://blog.csdn.net/weixin_41192489/article/details/115100040', '', '');
INSERT INTO `link_summary` VALUES (43, '【CSS】详解css中伪元素::before和::after和创意用法', 'A', 'CSS', '', 'https://cloud.tencent.com/developer/article/2165314', '', '');
INSERT INTO `link_summary` VALUES (44, '构建专业CHM帮助文档的全攻略', 'A', '', '', 'https://blog.csdn.net/weixin_36184718/article/details/142932978', '', '');
INSERT INTO `link_summary` VALUES (45, 'JavaWeb中requset，session，application 的作用域及区别', 'A', '', '', 'https://www.cnblogs.com/zxeao/p/16926332.html', '', '');
INSERT INTO `link_summary` VALUES (46, '数据库和系统时区差异处理办法', 'A', '异常处理', 'IDEA报错：java.sql.SQLException: The server time zone value ‘�й���׼ʱ��‘ is unrecognized or represents..', 'https://blog.csdn.net/yyjysj/article/details/111192410', '', '');
INSERT INTO `link_summary` VALUES (47, 'mybatis之lazyLoadingEnabled、aggressiveLazyLoading和lazyLoadTriggerMethods延迟加载配置', 'A', '数据库=mybatis', '', 'https://blog.csdn.net/u010502101/article/details/137061948', '', '');
INSERT INTO `link_summary` VALUES (48, '【分页查询】在SSM环境中使用PageHelper', 'A', '', '分页功能', 'https://blog.csdn.net/weixin_44757863/article/details/109728886', '', '');
INSERT INTO `link_summary` VALUES (49, 'Javascript中var和let之间的区别', 'A', 'JS', '', 'https://blog.csdn.net/mfysss/article/details/136222341', '', '');
INSERT INTO `link_summary` VALUES (50, 'runoob（菜鸟教程）', 'A', '网站', '', 'https://www.runoob.com/', '', '');
INSERT INTO `link_summary` VALUES (51, 'input输入框和select选择器“结合”使用', 'A', '前端=备忘', '这个可以试一试。以增加网页实用功能', 'https://blog.csdn.net/Yi2008yi/article/details/124018956', '', '');
INSERT INTO `link_summary` VALUES (52, 'Vue官网', 'A', '前端', '', 'https://cn.vuejs.org/guide/introduction', '', '');
INSERT INTO `link_summary` VALUES (53, '中国图书馆分类法', 'Z', '', '', 'www.ztflh.com', '', '');
INSERT INTO `link_summary` VALUES (54, 'vue-axios|axios中文网', 'A', '前端', '', 'http://www.axios-js.com/zh-cn/docs/vue-axios.html', '', '');
INSERT INTO `link_summary` VALUES (55, 'JS Promise axios 请求结果后面的.then()', 'A', '前端', '', 'https://blog.csdn.net/kuaileren003/article/details/143355744', '', '');
INSERT INTO `link_summary` VALUES (56, 'axios的基本用法', 'A', '前端', '', 'https://zhuanlan.zhihu.com/p/560984084', '', '');
INSERT INTO `link_summary` VALUES (57, 'SpringMVC数据库连接配置', 'A', '数据库', '', 'https://www.cnblogs.com/fps2tao/p/16707701.html', '', '');
INSERT INTO `link_summary` VALUES (58, 'axios和vue的整合操作，还不来看看', 'A', '前端', '', 'https://blog.csdn.net/weixin_54217216/article/details/123943445', '', '');
INSERT INTO `link_summary` VALUES (59, 'Pandoc文档格式转换：安装配置/踩坑记录/使用指南', 'A', '', '', 'https://zhuanlan.zhihu.com/p/682455380', '', '');
INSERT INTO `link_summary` VALUES (60, 'Pandoc官网', 'C', '网站', '文档格式转换', 'https://www.pandoc.org/', '', '');
INSERT INTO `link_summary` VALUES (61, 'WGA评选影史最伟大的101个剧本', 'J', '', '', 'https://www.douban.com/note/292138884/?_i=0485632bb5Oz05,3324487bb5Oz05', '', '');
INSERT INTO `link_summary` VALUES (62, 'QQ阅读', 'C', '网站', '', 'https://book.qq.com/book-shelf', '', '');
INSERT INTO `link_summary` VALUES (63, '扇贝阅读', 'C', '网站', '', 'https://web.shanbay.com/web/main/index', '', '');
INSERT INTO `link_summary` VALUES (64, '私人微博主页', 'S', '', '', 'https://weibo.com/u/5864310484', '', '');
INSERT INTO `link_summary` VALUES (65, '【Vue】深入了解 Axios 在 Vue 中的使用：从基本操作到高级用法的全面指南_axios在vue中的使用', 'A', '前端', '', 'https://blog.csdn.net/lph159/article/details/140549379', '', '');
INSERT INTO `link_summary` VALUES (66, 'B站字幕转换', 'C', '网站', '', 'https://www.dreamlyn.cn/html/bsrt.html', '', '');
INSERT INTO `link_summary` VALUES (67, 'vocalremover分离人声', 'C', '', '视频制作可能会用到', 'https://vocalremover.org/zh/', '', '');
INSERT INTO `link_summary` VALUES (68, '歌词字幕在线转换器', 'C', '', '视频制作歌词时使用的', 'https://www.lrccon.com/convert.php', '', '');
INSERT INTO `link_summary` VALUES (69, '【教程】如何正确的支持日本原版动漫音乐', 'S', '', '', 'http://www.tsdm.vip/?tid=978821', '', '');
INSERT INTO `link_summary` VALUES (70, '【四川音乐学院作曲硕士】零基础自学音乐学乐理合集', 'J', '', '乐理学习', 'https://www.bilibili.com/video/BV14p4y1e7TV/?p=2&vd_source=97df358f3810cee47897117ad268d5f1', '', '');
INSERT INTO `link_summary` VALUES (71, 'YouTube', 'S', '网站', '', 'https://www.youtube.com', '', '');
INSERT INTO `link_summary` VALUES (72, '侠客笔记', 'S', '开源项目', '写日记', 'https://kkgithub.com/Yu-Core/SwashbucklerDiary', 'https://github.com/Yu-Core/SwashbucklerDiary', '');

-- ----------------------------
-- Table structure for remarks_theme_summary
-- ----------------------------
DROP TABLE IF EXISTS `remarks_theme_summary`;
CREATE TABLE `remarks_theme_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of remarks_theme_summary
-- ----------------------------
INSERT INTO `remarks_theme_summary` VALUES (2, 'CSS');
INSERT INTO `remarks_theme_summary` VALUES (3, 'HTML');
INSERT INTO `remarks_theme_summary` VALUES (4, 'JS');
INSERT INTO `remarks_theme_summary` VALUES (1, '前端');
INSERT INTO `remarks_theme_summary` VALUES (5, '数据库');
INSERT INTO `remarks_theme_summary` VALUES (6, '樱井孝宏');
INSERT INTO `remarks_theme_summary` VALUES (7, '生死观念');

-- ----------------------------
-- Table structure for table_registration_checklist
-- ----------------------------
DROP TABLE IF EXISTS `table_registration_checklist`;
CREATE TABLE `table_registration_checklist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `generalise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taxonomy` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_category` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_registration_checklist
-- ----------------------------
INSERT INTO `table_registration_checklist` VALUES (1, 'table_registration_checklist', '登记和记录所在系统里使用的表的基本信息', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (2, 'exploration_taxonomy', '尝试将发现的知识进行合理分类，参考中图法制作', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (3, 'ch_lib_method_taxonomy', '记录中国图书馆分类法的分类规则', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (4, 'easy_text_exploration_summary', '记录随性琐碎遇到的文字知识', 'exploration_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (5, 'link_summary', '记录所有引用到的，或者觉得有价值的网络链接', 'exploration_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (6, 'movie_animation_summary', '记录看到的所有影视、动画作品', 'film_television_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (7, 'film_television_taxonomy', '专门给影视、动画、各种剧分类', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (8, 'game_summary', '记录所有玩过和了解过一点游戏', 'game_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (9, 'game_taxonomy', '专门给游戏分类', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (10, 'music_summary', '记录自己熟知的、或者可以学习参考的音乐', 'music_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (11, 'music_taxonomy', '专门给音乐进行分类', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (12, 'personage_summary', '记录一些名人、要人、up、博主之类的', 'personage_taxonomy', '资源表');
INSERT INTO `table_registration_checklist` VALUES (13, 'personage_taxonomy', '专门给人物表做分类', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (14, 'book_summary', '记录所有读过、认识的书', 'ch_lib_method_taxonomy', '资源类');
INSERT INTO `table_registration_checklist` VALUES (15, 'label_summary', '使用过的标签总汇表', NULL, '功能表');
INSERT INTO `table_registration_checklist` VALUES (16, 'remarks_theme_summary', '记录自由主题，用于generalise的前缀，方便检索', NULL, '功能表');

SET FOREIGN_KEY_CHECKS = 1;
