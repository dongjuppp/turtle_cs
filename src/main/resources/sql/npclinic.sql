-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- npclinic 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `npclinic`;
CREATE DATABASE IF NOT EXISTS `npclinic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `npclinic`;

-- 테이블 npclinic.board 구조 내보내기
DROP TABLE IF EXISTS `board`;
CREATE TABLE IF NOT EXISTS `board` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `writer` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dropMenuId` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.board:~65 rows (대략적) 내보내기
DELETE FROM `board`;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`id`, `title`, `content`, `writer`, `date`, `dropMenuId`, `views`) VALUES
	(1, 'TESTING FREE BOARD1', 'TEST CONTENT1', 'dongju', '2019-11-19 16:13:37', 17, 10),
	(2, 'TESTING FREE BOARD1', 'TEST CONTENT1', 'dongju', '2019-11-19 16:15:03', 17, 2),
	(3, 'TESTING FREE BOARD2', 'TEST CONTENT2', 'dongju', '2019-11-19 16:16:42', 17, 2),
	(4, 'TESTING FREE BOARD3', 'TEST CONTENT3', 'dongju', '2019-11-19 16:18:23', 17, 2),
	(5, 'TESTING NOTICE BOARD1', 'TEST NOTICE CONTENT1', 'dongju', '2019-11-19 16:22:52', 16, 4),
	(6, 'TESTING NOTICE BOARD2', 'TEST NOTICE CONTENT2', 'dongju', '2019-11-19 16:23:02', 16, 4),
	(7, 'TESTING NOTICE BOARD3', 'TEST NOTICE CONTENT3', 'dongju', '2019-11-19 16:27:45', 16, 2),
	(8, 'TESTING NOTICE BOARD4', 'TEST NOTICE CONTENT4', 'dongju', '2019-11-19 16:28:49', 16, 2),
	(9, '목디스크', '경추 추간판탈출증은 흔히 목디스크라고 불리는 것입니다. 정상적으로 목에도 허리와 같이 등뼈(척추)와 등뼈 사이에 있는 디스크가 있는데 이 디스크가 어떠한 원인에 의하여 신경이 지나가는 길(척수강)로 돌출되어 나오게 되면 척수강에 있는 신경이 눌리게 되고 눌리는 신경에 따라 통증, 감각 이상, 근력 마비 등의 증상이 나타나는 병을 말합니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(10, '디스크의 퇴행성 변화에 의하여 증상 발생', '외상에 의해 갑자기 생기는 수도 있지만 퇴행성 변화에 의하여 서서히 증상이 생기는 경우가 많습니다. 디스크란 등뼈(척추)들의 사이에서 충격을 흡수하는 기능을 하는 것으로 일종의 물렁뼈입니다. 디스크는 사람이 생활을 하면서 충격을 받으면서 조금씩 물 성분(수분)이 빠져 노인이 되면 푸석푸석할 정도로 변합니다. 사람이 나이가 들면서 몸의 변화가 나타나는 것을 퇴행성 변화라고 하는데 이러한 디스크의 변성도 일종의 퇴행성 변화입니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(11, '디스크의 퇴행성 변화에 의하여 증상 발생', '디스크가 이러한 변성을 일으키면 바깥쪽에 있는 섬유륜에 금이 갑니다. 섬유륜에 금이 가고 점점 벌어지면 틈이 생깁니다. 수핵에 가해지는 압력이 어느 정도 이상이 되면 이를 견디지 못하고 섬유륜에 생긴 틈을 비집고 수핵이 신경이 지나가는 길인 척수강으로 삐져나오게 되면 신경을 압박하여 증상이 발생하는 것입니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(12, '자세 불량이나 오래 앉아있으면 디스크 변성을 심화시켜', '무거운 짐을 많이 들거나 평소 삐딱한 자세를 가지고 있거나 장시간 앉아서 일하는 등 디스크에 무리가 가는 경우가 많은 사람은 그렇지 않은 사람보다 디스크의 변성이 심하게 됩니다. 이러한 디스크의 변화는 목, 등, 허리 어느 곳에서도 나타납니다. 특히 허리에서는 4번과 5번 허리뼈(요추;腰椎) 사이 5번 허리뼈와 꼬리뼈(천추;薦椎) 사이에 있는 디스크에서 빈번히 발생하고 목에서는 5번과 6번 목뼈(경추;頸椎) 사이와 6번과 7번 목뼈 사이에 있는 디스크에서 자주 발생합니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(13, '목이 뻣뻣하고 어깨와 팔을 따라 손가락 끝까지 통증 발생', '디스크 탈출의 부위에 따라 증상이 다르지만 목이 뻣뻣해지면서 어깨와 팔을 따라 손가락 끝까지 저리고 아프며 등뒤나 견갑골(날개뼈)사이에도 통증을 느끼게 됩니다. 또한 팔의 통 증이 목을 돌리거나 뒤로 젖힐 때 악화되고 팔을 들고 있으면 증상이 좋아집니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(14, '통증과 저림증이 나타나는 부위', '경추 4-5 번 디스크: 어깨와 삼각근의 약화, 어깨가 많이 쑤시며 어깨 들기가 어렵다. \r\n	경추 5-6 번 디스크: 목-어깨-팔의 외측-엄지와 두 번째 손가락까지 저리고 아프다.\r\n	경추 6-7 번 디스크: 목-어깨-팔의 외측-2.3.4번째 손가락이 저리고 아프다.\r\n	경추 7-흉추1번 디스크: 목-어깨-팔의내측-넷째와 새끼손가락, 특히 양 견갑골 사이의 통증이 있다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(15, '진단 방법', '의사의 진찰 소견이 가장 중요합니다. 단순 방사선 촬영은 목디스크를 보다 강력하게 의심하는 방법은 되지만 확진은 어렵습니다. 근전도 검사가 의료 보험 적용이 되는 디스크 확진 방법이며, MRI는 영상으로 목디스크가 뒤로 밀린 것을 확인 할 수 있습니다.', 'dongju', '2019-11-17 02:00:27', 4, 0),
	(16, '대상포진 신경통', '', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(17, '원인', '어릴 적 수두에 앓고 난 사람에게서 완전히 없어지지 않고 잠복해 있던 바이러스가 나중에 다시 활동성으로 변하여 신경을 따라 내려가 피부에 감염을 일으키면서 발생되며, 특히 수면부족이나 장기간 여행, 수험생의 시험압박과 같이 몸이 많이 피곤한 상태나 심한 스트레스가 일정기간 지속될 때 면역력이 저하되어 잘 발생합니다.', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(18, '감염', '모든 나이에서 발생할 수 있지만 대부분 허약한 노인들에서 발생하며 전염성이 있어 공기감염의 경로를 통하여 수두를 앓지 않은 사람에게는 수두감염을 일으킬 수 있습니다.', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(19, '증상', '피부증상이 나타나기 평균 4-5일 전부터 피부에 통증, 압통, 감각이상이 발생하고, 가벼운 자극에도 과민반응이 나타나며, 두통, 권태감, 발열이 동반될 수 있습니다.\r\n피부 병변은 침범한 신경을 따라 띠 모양으로 분포되며, 처음 병변 발생 후 24시간정도 지나면 물집이 형성됩니다. 각각의 병변들은 결국 딱지가 형성되어 탈락되는데, 평균 피부병변의 지속기간은 약 3주일 정도입니다.\r\n발생부위는 흉부, 얼굴, 허리 등에 자주 발생하며, 거의 대부분이 한쪽에만 나타납니다. 간혹 전신적으로 수두처럼 증상을 나타내기도 하며 눈이나 귀를 침범하여 후유증을 남기기도 합니다. 성기나 항문부위를 침범한 경우에는 일시적으로 소변이나 대변이 나오지 않는 경우가 있으나 예후는 좋아 완전히 회복되는 경향을 보입니다.', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(20, '후유증', '포진후 신경통은 피부증상이 개선된 후에 통증이 지속되는 상태로, 가장 흔하며 고통스러운 합병증입니다. 40세 이하에서는 비교적 드물며 60세 이상에서 약 50%에 발생합니다. 이 통증은 약 50%의 환자들이 3개월 내에 호전을 보이고, 약 70% 정도의 환자들이 1년 내에 호전됩니다.', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(21, '치료', '치료 목표는 통증 억제, 바이러스의 확산억제, 이차적 세균 감염 억제, 포진후 신경통 등의 합병증 예방에 있습니다. 항바이러스 약물을 가급적 초기에 사용하는 것이 포진후 동통의 발생빈도를 줄일 수 있으며, 초기 물집형성 시기에는 병변에 대한 습포가 통증을 완화시킬 수 있습니다. 통증이 심하기 때문에 수면 장애, 피로 우울증이 동반될 수 있어서 강한 진통제로 통증을 초기에 경감시킬 필요가 있습니다. 그 외 국소 열찜질 등이 통증을 경감시켜줄 수 있습니다.', 'dongju', '2019-11-17 02:00:27', 6, 0),
	(22, '퇴행성 관절염', '', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(23, '퇴행성관절염(무릎)', '퇴행성관절염은 무릎관절 연골이 닳아 없어지면서 국소적인 퇴행성 변화가 나타나는 질환입니다. >그 원인은 불확실하나 체질, 과도한 관절사용, 그리고 직업 등과 관련이 있는 것으로 알려져 있습니다.\r\n퇴행성 슬관절염은 만성 관절염의 하나로써 중년기 또는 장년기 성인에게 흔하며 특히 체중 부하를 많이 받는 관절의 관절 연골의 퇴행성 변화가 있으며 관절면의 뼈가 과잉 성장된 상태입니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(24, '나이가 많을수록, 비만인 여성에서 호발', '퇴행성 관절염의 원인은 확실히 밝혀지지 않았습니다. 하지만 나이, 성별, 비만 여부 등이 관련됩니다. 즉 나이가 많을수록, 퇴행성 관절염이 많이 생기고, 여성에게 흔합니다.\r\n또한 비만은 가장 흔한 퇴행성 무릎 관절염의 유발요인이 됩니다. 관절통증을 일으키고, 관절이 붓고, 움직이는데 제한을 주게 됩니다.\r\n심한 경우는 관절 부위에 변형이 오게 됩니다. 또한 손가락 끝관절에 딱딱한 결절이 생기기도 합니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(25, 'X-레이상 관절 간격이 좁아지는 특징을 보임', '퇴행성 관절염의 진단에서 중요한 것은 증세와 방사선 소견입니다. 보통 X-레이를 찍게 되는데, 질병 초기에는 정상이나 점차 진행되면서 X-레이상 관절 간격이 좁아지는데, 특히 체중이 실리는 부위가 비대칭적으로 좁아지게 됩니다 그 외에 연골 아래 부위가 경화되어 하얗게 보이고, 관절면 주위로 뾰족하게 튀어나오는 골극이 형성되기도 합니다.\r\n하지만 X-레이 상에서는 55세 이상의 80%, 75세 이상에서는 거의 전 인구가 퇴행성 관절염 소견을 관찰할 수 있으므로, 방사선 소견과 더불어 그에 일치하는 임상 증상이 있어야 퇴행성 관절염이라 진단합니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(26, '관절 통증 감소 및 관절 변형 방지가 주 치료 목적', '퇴행성 관절염의 치료 목적은 관절 통증을 줄이고, 관절 움직임을 유지시키며, 변형을 방지하려는 데 있습니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(27, '약물 치료', '약물 치료는 아세타아미노펜과 비스테로이드성 소염제가 주가 됩니다. 비스테로이드성 소염제를 복용하기 전에 과거에 위장장애가 심했던 분들은 미리 의사 에게 이야기를 하고, 약물을 결정하는 것이 좋을 것입니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(28, '관절 내 주사 치료', '일반적으로 관절 주사라면 뼈 주사(스테로이드 주사)라고 잘못 생각하기 쉬운데, 퇴행성 관절염은 너무 심하게 관절이 붓고, 물이 차는 특별한 경우를 제외하고는 스테로이드 주사는 도움이 되지 않습니다. 하지만 퇴행성 관절염의 관절 내 주사치료 중 히루안이라는 주사약이 있습니다. 이는 뼈주사(스테로이드 주사)와는 다른 것으로 손상된 연골을 보호하는 역할을 합니다. 일반적으로 일주일에 한번씩 5주를 맞게 됩니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(29, '수술적 치료', '증세가 악화되어 일상생활에 지장이 심하고, 방사선 소견상 관절 변화도 심한 경우는 수술을 합니다. 관절 내에 부분적 수술을 하는 경우도 있고, 인공 관절로 바꾸는 수술도 있습니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(30, '체중 감소와 다리 근육 힘을 기르세요', '약물이나 수술을 하기에 앞서 우선적 해야 할 것이 다음 두 가지입니다. 이는 관절통의 예방뿐만 아니라, 현재 관절통이 있는 분들은 꼭 지켜야 할 지침입니다.\r\n', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(31, '우선 체중을 조금이라도 빼도록 하십시오.', '퇴행성 무릎 관절염은 몸무게가 많이 나가는 사람에게 흔합니다. 그러므로 체중만 감량해도 무릎 관절통이 해결되는 경우가 흔합니다. 물론 노인분들이 체중을 감량하는 것이 쉬운 일은 아니지만, 1~2kg의 체중 감량도 무릎 통증 완화에 도움이 됩니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(32, '다리 근육 힘을 기르는 운동을 하십시오', '퇴행성 관절염 환자는 통증 때문에 잘 못 걷기 때문에 운동하는데 많은 제한이 있습니다. 그러므로 운동을 할 때는 체중이 무릎 등 관절에 실리지 않은 운동이 좋습니다. 예를 들면, 수영이나 자전거 타기이지요. 수영을 못 하는 경우에 수영장에서 걷는 것도 퇴행성 관절염에 좋은 운동입니다. 또한 누워서 다리를 펴서 올렸다 내렸다 하는 운동을 10~20회 정도씩 아침에 기상시와 자기 전에 해 보시기 바랍니다.', 'dongju', '2019-11-17 02:00:27', 7, 0),
	(33, '오십견/버거병', '', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(34, '오십견', '오십견은 어깨부위의 노화나 부상 또는 원인 모르게 오는 가벼운 견비통으로 서서히 통증의 강도가 심해지면서 어깨를 움직이는데 제한이 있는 것을 말합니다. 발병연령은 30대 이상으로 다양하며, 특히 50대에서 잘 생긴다 하여 오십견이라 불려집니다. 발병 원인은 불분명하지만 주로 노화에 따른 어깨 관절 주위 연부 조직의 퇴행성 변화에 의해 발생됩니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(35, '주로 노화로 인한 퇴행성 변화가 주요 원인', '발병 원인은 불분명하지만 주로 노화에 따른 어깨 관절 주위 연부 조직의 퇴행성 변화에 의해 발생되지만 그밖에 어깨 관절의 부상이나 깁스를 풀고 난 후 또는 입원 등으로 장기간 어깨관절을 사용하지 못한 후에도 발생되며, 어떤 경우에서는 원인 없이도 발생되는 경우가 있습니다. 그밖에 당뇨병이나 목 디스크등이 원인이 되는 경우도 30-50%를 차지합니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(36, '팔을 올리거나 뒤로 돌릴 때 어깨가 깨질 듯한 통증 유발하는 오십견', '처음에는 어깨부위가 가끔 아프며 조금 좋아졌다가 아프다하다가 점점 통증이 심해지면서 밤에 더욱 악화되어 잠을 설치게 되며, 목과 손가락 쪽으로까지 방사되는 통증을 나타내게도 됩니다.\r\n환자들 중에는 "가만히 있을 때는 괜찮은데 팔을 위로 올리거나 뒤로 돌릴 때 어깨의 한 부위가 깨지는 것처럼 아프다."고 하거나, "어깨부터 팔 뒤꿈치 있는 데까지가 쑤시고 아프면서 어깨를 들거나 돌릴 때는 통증이 더 심해진다.", "어깨가 아파서 머리를 감거나 옷을 입고 벗을 수가 없다."고들 호소합니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(37, '오십견의 치료는 신경 치료와 더불어 어깨 운동을', '오십견은 아무런 치료를 하지 않더라도 6개월 내지 1년이 지나면 저절로 자연 치유되는 경우도 많지만, 어떤 경우에서는 고식적인 방법으로 치료를 해도 통증과 운동 장해가 오래 남는 경우도 드물지 않습니다.\r\n가만히 있어도 낫는 병이라고 간과하지 말고 조기에 적절한 치료를 하는 것이 중요하며, 이렇게 통증이 지속되는 환자 중에는 목 디스크를 동반하는 경우도 상당수 있다는 것과 골다공증이나 수술 후에 견관절 주위조직의 유착등이 원인이 되는 경우도 있다는 것을 알고 이런 경우는 원인을 찾기 위한 정확한 검사를 시행하여 진단을 확실히 내린 후 원인에 따른 치료를 받아야 합니다. 오십견의 치료는 신경 치료와 더불어 어깨 운동을 시켜 주어야 합니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(38, '오십견을 예방하는 방법', '오십견을 예방하는 방법으로는 바른 자세의 유지, 온열요법, 적당한 운동 등을 들 수 있습니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(39, '바른자세', '바른 자세라면 자연스럽고 피로가 없는 척추의 자연 경사각을 유지 할 수 있는 자세를 말합니다. 귀에서부터 다리 쪽으로 수직선을 그린다고 가정했을 때 귀를 지나 어깨관절의 중앙을 거쳐 무릎과 발목뼈를 통과하는 선을 그릴 수 있다면 좋은 자세이고, 턱을 당기고 등 근육을 펴며 좌우 어깨는 같은 높이가 되도록 하고 목은 수직이 되게 합니다.\r\n', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(40, '온열요법', '어깨 주변 근육의 긴장을 풀어주기 위한 방법으로 온탕이나 따뜻한 팩 등을 사용하여 혈액순환을 촉진시키고 긴장완화를 유도합니다. 하루 10~15분 정도 따뜻한 물에서 온탕을 하고 온탕을 하면서 목의 좌우, 전후 운동, 어깨의 상하운동을 합니다.\r\n', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(41, '적당한 운동', '하루 1시간이상 전신운동이 되는 조깅, 경보, 수영, 등산, 가벼운 에어로빅 등의 운동을 규칙적으로 하며, 실내에서는 가끔씩 어깨와 등근육을 풀어줄 수 있는 체조를 실시합니다.', 'dongju', '2019-11-17 02:00:27', 8, 0),
	(42, '비급여항목', '', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(43, '인대증식치료', '목 10만원~20만원, 허리 5만원 ~ 10만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(44, '폐렴', '5만원 or 15만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(45, '적외선 체열촬영', '5만원 ~ 20만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(46, '초음파 검사', '5만원 ~ 10만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(47, '리포라아제', '10만원~20만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(48, '종합검사', '3만원 ~ 20만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(49, '태반주사', '3만원 ~ 5만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(50, '히루안', '3만원 ~ 5만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(51, '네비도', '29만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(52, '대상포진', '18만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(53, '카일로 플랙틱', '3만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(54, '예나스테론', '3만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(55, '리쥬비넥스', '10만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(56, '비타민D', '5만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(57, '점,검버섯,쥐점', '개당 : 1만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(58, '파상풍', '4만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(59, '비급여 처방전', '1만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(60, '보험회사 진단서', '30만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(61, '상해진단서', '10만원 ~ 30만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(62, '진단서', '2만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(63, '소견서', '1만원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(64, '차트복사', '5천원', 'dongju', '2019-11-17 02:00:27', 9, 0),
	(66, 'insert test', 'test\r\n', 'user', '2019-11-19 16:21:41', 17, 2);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 npclinic.doctor 구조 내보내기
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(10) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `career` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.doctor:~2 rows (대략적) 내보내기
DELETE FROM `doctor`;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`, `position`, `career`, `image`, `name`) VALUES
	(1, '김갑수신경통증클리닉 원장', '신촌 세브란스 병원 전문의 수련/강남세브란스 교수역임/연세대학교 마취통증과 외래 정교수/대한통증과 정회원/대한척추통증학회 정회원/통증연구학회 정회원/서초구의사회 전 정보이사/서초구의사회 현 총무이사/대한마취통증 의사회 전 보험이사/대한마취통증 의사회 전 국제이사/대한마취통증 의사회 현 기획이사', 'doctor/image1.jpg', '김갑수'),
	(2, '김갑수신경통증클리닉 부원장', '세브란스병원 전문의 수련/마취통증의학과 전문의/대한마취과학회 정회원', 'doctor/image2.jpg', '전동병');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;

-- 테이블 npclinic.drop_menu 구조 내보내기
DROP TABLE IF EXISTS `drop_menu`;
CREATE TABLE IF NOT EXISTS `drop_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.drop_menu:~15 rows (대략적) 내보내기
DELETE FROM `drop_menu`;
/*!40000 ALTER TABLE `drop_menu` DISABLE KEYS */;
INSERT INTO `drop_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(0, '홈으로', 1, '/'),
	(1, '인사말', 2, 'Greet'),
	(2, '둘러보기', 2, 'Look'),
	(3, '진료시간/약도', 2, 'Time'),
	(4, '목/허리티스크(비수술)', 3, 'Neck'),
	(5, '신경성형술', 3, 'Nerve'),
	(6, '대상포진 신경통', 3, 'Shingles'),
	(7, '퇴행성 관절염', 3, 'Arthritis'),
	(8, '오십견/버거병', 3, 'Zoster'),
	(9, '비급여항목', 3, 'Nnonsalary'),
	(16, '공지사항', 4, 'Nnotice'),
	(17, '자유게시판', 4, 'Free'),
	(18, '사진갤러리', 4, 'Photo'),
	(19, '예약하기', 5, 'DoReserve'),
	(20, '예약확인', 5, 'ReserveCheck');
/*!40000 ALTER TABLE `drop_menu` ENABLE KEYS */;

-- 테이블 npclinic.header_menu 구조 내보내기
DROP TABLE IF EXISTS `header_menu`;
CREATE TABLE IF NOT EXISTS `header_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.header_menu:~5 rows (대략적) 내보내기
DELETE FROM `header_menu`;
/*!40000 ALTER TABLE `header_menu` DISABLE KEYS */;
INSERT INTO `header_menu` (`id`, `title`, `orderNum`, `url`) VALUES
	(1, 'HOME', 1, '/'),
	(2, '본원소개', 2, 'introduce'),
	(3, '진료정보', 3, 'medicinfo'),
	(5, '커뮤니티', 4, 'community'),
	(6, '예약', 5, 'reserve');
/*!40000 ALTER TABLE `header_menu` ENABLE KEYS */;

-- 테이블 npclinic.hospital_info 구조 내보내기
DROP TABLE IF EXISTS `hospital_info`;
CREATE TABLE IF NOT EXISTS `hospital_info` (
  `phone` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `openTime` varchar(45) DEFAULT NULL,
  `saturdayTime` varchar(45) DEFAULT NULL,
  `lunchTime` varchar(45) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.hospital_info:~0 rows (대략적) 내보내기
DELETE FROM `hospital_info`;
/*!40000 ALTER TABLE `hospital_info` DISABLE KEYS */;
INSERT INTO `hospital_info` (`phone`, `fax`, `email`, `address`, `openTime`, `saturdayTime`, `lunchTime`, `image`) VALUES
	('02-536-1777', '02-536-1777', 'npclinic@gmail.com', '서울 서초구 방배동 1770번지 2층 ', '09:00 ~ 19:00', '09:00 ~ 14:00', '13:00 ~ 14:00', 'service/map.png');
/*!40000 ALTER TABLE `hospital_info` ENABLE KEYS */;

-- 테이블 npclinic.introduce 구조 내보내기
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE IF NOT EXISTS `introduce` (
  `id` int(10) NOT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL,
  `text3` text DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.introduce:~2 rows (대략적) 내보내기
DELETE FROM `introduce`;
/*!40000 ALTER TABLE `introduce` DISABLE KEYS */;
INSERT INTO `introduce` (`id`, `text1`, `text2`, `text3`, `image1`, `image2`) VALUES
	(1, '안녕하세요<br>김갑수신경통증클리닉 원장 김갑수입니다.', '저희 홈페이지를 찾아주셔서 진심으로 감사드립니다.', '여러분의 질병 예방을 위해 맺은 인연으로 말미암아 따뜻한 주치의가 되어 환자의 평생건강을 지켜드리고자 노력하겠습니다.<br><br>늘 여러분과 가까이에서 보다 편리하고 편안한 진료를 제공함으로써 여러분의 평생 주치의가 되고자 하는 마음가짐으로 진료에 임하겠습니다.<br><br>또한 신속하고 정확한 진단을 위해 발 빠르게 준비하고 있으며, 언제나 여러분의 궁금증과 상담을 친절하고 열린 마음으로 답변해 드리고 있습니다.<br><br>앞으로도 항상 정성 어린 마음과 친절한 진료를 바탕으로 끊임없이 발전하는 모습을 여러분께 자신 있게 보여드리겠습니다.<br><br>감사합니다.', 'introduce/image1.jpg', NULL),
	(2, '쾌적하고 편리한 환경', '작은 부분까지 배려한 공간입니다.<br>항상 청결한 환경을 위해 노력하고 있습니다.', NULL, NULL, NULL);
/*!40000 ALTER TABLE `introduce` ENABLE KEYS */;

-- 테이블 npclinic.reserve_data 구조 내보내기
DROP TABLE IF EXISTS `reserve_data`;
CREATE TABLE IF NOT EXISTS `reserve_data` (
  `userID` varchar(50) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'waiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.reserve_data:~3 rows (대략적) 내보내기
DELETE FROM `reserve_data`;
/*!40000 ALTER TABLE `reserve_data` DISABLE KEYS */;
INSERT INTO `reserve_data` (`userID`, `doctor`, `subject`, `date`, `message`, `time`, `status`) VALUES
	('dongju', '김갑수', '신경성형술', '2019-10-16 00:00:00', '.', 0, 'accept'),
	('dongjuppp', '전동병', '목/허리디스크(비수술)', '2019-11-13 00:00:00', 'asdas', 14, 'accept'),
	('user', '전동병', '목/허리디스크(비수술)', '2019-10-26 00:00:00', 'adsf', 13, 'accept');
/*!40000 ALTER TABLE `reserve_data` ENABLE KEYS */;

-- 테이블 npclinic.service 구조 내보내기
DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL,
  `text` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.service:~13 rows (대략적) 내보내기
DELETE FROM `service`;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` (`id`, `text`, `image`) VALUES
	(1, '진료실 원장님', 'service/image1.jpg'),
	(2, '간호사', 'service/image2.jpg'),
	(3, '진료실', 'service/image3.jpg'),
	(4, '치료실', 'service/image4.jpg'),
	(5, '물리치료실', 'service/image5.jpg'),
	(6, '대기실', 'service/image6.jpg'),
	(7, '기계', 'service/image7.jpg'),
	(8, '기계1', 'service/image8.jpg'),
	(9, '기계2', 'service/image9.jpg'),
	(10, '기계3', 'service/image10.jpg'),
	(11, '기계4', 'service/image11.jpg'),
	(12, '접수대', 'service/image12.jpg'),
	(13, '진료모습', 'service/image13.jpg');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;

-- 테이블 npclinic.user 구조 내보내기
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(45) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `reg_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.user:~4 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `password`, `name`, `gender`, `birth`, `type`, `email`, `phone`, `last_login`, `reg_login`) VALUES
	('dongju', '123asd23', '최동주', '남', '19930623', 'admin', 'dongju@', '01028008891', '2019-10-19 00:00:00', '2019-10-18 00:00:00'),
	('dongjuppp', '123456', '최동주', '남자', '1993/06/23', 'user', 'dongjuppp@gmail.com', '01028008891', '2019-10-29 23:32:25', '2019-10-29 23:32:25'),
	('test1', '456as', '홍길동', '남', '19991205', 'admin', 'test1@naver.com', '01012345678', '2019-01-10 00:00:00', '2019-01-01 00:00:00'),
	('user', '123', '박지우', '여', '1998/03/25', 'user', 'dpfmsk11@naver.com', '01074761054', '2019-11-05 21:16:43', '2019-11-05 21:16:44');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 테이블 npclinic.user_type 구조 내보내기
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `typeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 npclinic.user_type:~3 rows (대략적) 내보내기
DELETE FROM `user_type`;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` (`id`, `typeNumber`, `typeName`) VALUES
	(1, 1, '관리자'),
	(2, 2, '회원'),
	(3, 3, '게스트');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
