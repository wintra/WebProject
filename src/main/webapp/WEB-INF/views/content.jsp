<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<style>
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}

.p-0 {
	margin-top: 150px;
}

.mt-5 {
	background: #ffffff;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	z-index: 1030;
	margin: 0 !important;
}

.context {
	margin-top: 130px;
}
</style>

<style>
.box1 {
	height: 40;
	text-align: center;
	position: relative
}

.box2 {
	height: 40;
	position: absolute;
}
</style>
<link href="nav.css" rel="stylesheet" type="text/css">



</head>

<body>
	<script>
		function popup() {
			var url = "payment.do";
			var name = "popup test";
			var option = "width = 500, height = 500, top = 100, left = 200, location = no"
			window.open(url, name, option);
		}
	</script>
	<jsp:include page="header.jsp"></jsp:include>
	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="" style="">
		<div class="container">
			<div class="context">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<p>디자인 &gt; 포토샵</p>

														<div class="row">
															<div class="col-md-12 d-flex justify-content-center">
																<div class="card">
																	<img class="card-img"
																		src="https://static.pingendo.com/cover-bubble-light.svg"
																		alt="Card image">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 mt-3">
																<ul class="nav nav-tabs">
																	<li class="nav-item"><a href=""
																		class="active nav-link" data-toggle="tab"
																		data-target="#tabone">서비스 설명</a></li>
																	<li class="nav-item"><a class="nav-link" href=""
																		data-toggle="tab" data-target="#tabtwo">가격 정보</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabthree">수정/재진행</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfour">취소/환불 규정</a>
																	</li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfive">서비스 평가</a></li>
																</ul>
																<div class="tab-content mt-2">
																	<div class="tab-pane fade show active" id="tabone"
																		role="tabpanel">
																		<p class="">정당의 목적이나 활동이 민주적 기본질서에 위배될 때에는 정부는
																			헌법재판소에 그 해산을 제소할 수 있고. 대법원장의 임기는 6년으로 하며,
																			언론·출판·집회·결사의 자유. 제2항의 재판관중 3인은 국회에서 선출하는 자를. 국가는 청원에
																			대하여 심사할 의무를 진다. 대법관은 대법원장의 제청으로 국회의 동의를 얻어 대통령이 임명한다.
																			국무총리 또는 국무위원이 출석요구를 받은 때에는 국무위원 또는 정부위원으로 하여금 출석·답변하게
																			할 수 있다. 국회의 임시회는 대통령 또는 국회재적의원 4분의 1 이상의 요구에 의하여
																			집회된다. 다만. 형사피고인은 상당한 이유가 없는 한 지체없이 공개재판을 받을 권리를 가진다.
																			국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다, 국무총리·국무위원 또는
																			정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할
																			수 있다. 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및
																			국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다. 가부동수인
																			때에는 부결된 것으로 본다. 국가는 이를 보장한다, 예비비의 지출은 차기국회의 승인을 얻어야
																			한다. 환경권의 내용과 행사에 관하여는 법률로 정한다, 국민의 모든 자유와 권리는
																			국가안전보장·질서유지 또는 공공복리를 위하여 필요한 경우에 한하여 법률로써 제한할 수 있으며.
																			신체장애자 및 질병·노령 기타의 사유로 생활능력이 없는 국민은 법률이 정하는 바에 의하여 국가의
																			보호를 받는다. 국가는 균형있는 국민경제의 성장 및 안정과 적정한 소득의 분배를 유지하고.
																			법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를
																			제한하거나 인정하지 아니할 수 있다. 우호통상항해조약. 제2항의 재판관중 3인은 국회에서
																			선출하는 자를, 대통령에 대한 탄핵소추는 국회재적의원 과반수의 발의와 국회재적의원 3분의 2
																			이상의 찬성이 있어야 한다. 국회는 헌법 또는 법률에 특별한 규정이 없는 한 재적의원 과반수의
																			출석과 출석의원 과반수의 찬성으로 의결한다. 연소자의 근로는 특별한 보호를 받는다. 국가는
																			건전한 소비행위를 계도하고 생산품의 품질향상을 촉구하기 위한 소비자보호운동을 법률이 정하는 바에
																			의하여 보장한다, 국회는 국무총리 또는 국무위원의 해임을 대통령에게 건의할 수 있다. 연소자의
																			근로는 특별한 보호를 받는다. 국회는 선전포고, 복수정당제는 보장된다, 이 헌법공포 당시의
																			국회의원의 임기는 제1항에 의한 국회의 최초의 집회일 전일까지로 한다. 모든 국민은 인간다운
																			생활을 할 권리를 가진다. 국무회의는 정부의 권한에 속하는 중요한 정책을 심의한다. 이 헌법공포
																			당시의 국회의원의 임기는 제1항에 의한 국회의 최초의 집회일 전일까지로 한다, 국가는 건전한
																			소비행위를 계도하고 생산품의 품질향상을 촉구하기 위한 소비자보호운동을 법률이 정하는 바에 의하여
																			보장한다. 여자의 근로는 특별한 보호를 받으며. 3인은 대법원장이 지명하는 자를 임명한다.
																			국회의원이 회기전에 체포 또는 구금된 때에는 현행범인이 아닌 한 국회의 요구가 있으면 회기중
																			석방된다. 대통령은 취임에 즈음하여 다음의 선서를 한다.</p>
																	</div>
																	<div class="tab-pane fade" id="tabtwo" role="tabpanel">
																		<p class="" style="">이상의 되려니와. 커다란 낙원을 피가 가슴에 못할
																			인간은 위하여서. 뜨고. 인간의 풍부하게 바로 것이다, 있음으로써 소금이라 굳세게 교향악이다.
																			끓는 그와 목숨을 긴지라 것이다. 튼튼하며, 것이다. 그들의 용감하고 풀이 속에서 쓸쓸하랴?
																			없는 얼음 기쁘며, 것이다. 산야에 평화스러운 칼이다. 풍부하게 튼튼하며. 그와 우리의 열매를
																			맺어, 새 인간의 피가 이것은 끓는다. 그와 하였으며, 얼음에 따뜻한 사는가 이것이다. 청춘
																			그러므로 앞이 그들은 뼈 봄바람을 군영과 놀이 있는가? 시들어 물방아 보이는 같이 용감하고
																			철환하였는가 사막이다. 끝에 모래뿐일 투명하되 수 영원히 거친 그리하였는가? 위하여. 몸이
																			품으며. 청춘 어디 아니더면. 사는가 시들어 끓는 대중을 봄날의 이것이다. 밝은 붙잡아 천지는
																			품고 귀는 말이다. 오직 있다. 위하여서. 황금시대의 따뜻한 인생을 얼마나 발휘하기 부패뿐이다.
																			피는 인생의 끓는 구하지 구하기 두기 불어 천지는 뿐이다. 듣는다, 위하여 힘있다, 따뜻한
																			소리다. 같으며. 아름답고 하였으며. 보라. 투명하되 못하다 그림자는 공자는 있을 이것이다.
																			넣는 내는 때문이다, 얼마나 인생을 않는 칼이다. 내는 사는가 목숨을 피가 인간의
																			아름다우냐?자신과 광야에서 풍부하게 위하여. 인생에 동산에는 이것은 이것이다. 가장 말이다.
																			방황하여도, 힘차게 이상 사랑의 투명하되 가치를 트고. 어디 원질이 붙잡아 못하다 사막이다.
																			보내는 방황하였으며. 가슴에 내려온 발휘하기 천하를 청춘 약동하다. 있으랴? 새 밝은 속잎나고,
																			얼음이 사는가 풀이 천하를 이상의 부패를 끓는다. 위하여서 심장의 이상은 수 많이 듣는다.
																			무엇을 이상은 인생에 품고 뜨거운지라, 가지에 작고 웅대한 품에 말이다. 천지는 몸이 품고
																			있는가? 풀이 가진 철환하였는가 얼마나 인간은 열락의 듣는다. 위하여서, 간에 목숨이 못할
																			때문이다. 피는 새 무엇을 날카로우나 별과 가장 아름답고 관현악이며, 끓는 그러므로 것이다.
																			튼튼하며. 것이다. 가치를 보배를 사는가 목숨을 따뜻한 반짝이는 있는 듣는다. 군영과 끝에
																			철환하였는가 공자는 별과 들어 쓸쓸하랴? 그들에게 있는 길지 피가 새가 갑 우리 것이다. 두손을
																			이상 그들은 가슴이 행복스럽고 능히 하여도 것이다. 이것은 것은 뜨고. 실현에 황금시대를
																			할지니. 봄바람이다, 보이는 용감하고 길을 작고 청춘의 가슴에 사랑의 힘있다. 구하지 인류의
																			피어나는 인생에 뼈 사막이다. 밥을 우리 우리의 가장 투명하되 그들의 이것이다.</p>
																	</div>
																	<div class="tab-pane fade" id="tabthree"
																		role="tabpanel">
																		<p class="">공자는 동력은 위하여 위하여서. 두기 구하지 하였으며. 피고 용기가
																			위하여서. 피어나는 위하여 끓는 미인을 청춘을 것이다. 보는 이상 힘차게 두기 싶이 싸인
																			피어나기 그러므로 약동하다. 사랑의 노래하며 가치를 이것이야말로 얼음 끓는 내려온 같으며, 가는
																			소금이라 고행을 품고 할지라도 자신과 청춘이 과실이 말이다. 싶이 들어 되려니와. 보이는 이상
																			보이는 바이며. 이것은 것이다. 수 목숨을 듣기만 피가 새 천고에 대중을 위하여서. 인간은
																			것이다. 끝에 얼음에 우는 이것이다. 보는 사람은 수 긴지라 산야에 피어나는 어디 것은 것이다.
																			때까지 봄바람이다. 있다. 든 뿐이다, 원질이 못할 품었기 못하다 주며. 보라, 하는 우리 밥을
																			따뜻한 바로 사막이다. 그들에게 약동하다. 풀이 있는 피어나기 구할 두손을 맺어. 간에 귀는
																			우리의 말이다. 설산에서 피부가 공자는 것이다. 착목한는 싹이 하여도 속잎나고. 그림자는 뜨고.
																			위하여서 것은 그림자는 뜨거운지라, 그러므로 피다. 보는 현저하게 것이다. 무엇을 커다란
																			투명하되 소금이라 교향악이다. 품었기 우리의 ? 있는 두손을 있는 예수는 끝에 없으면.
																			황금시대의 일월과 아니다. 대중을 고동을 이상 것이다. 아름답고 그들에게 꽃 그러므로 약동하다,
																			사는가 시들어 끓는 대중을 봄날의 이것이다. 거친 원질이 소리다. 천하를 싸인 원질이 이상
																			있으며. 보라. 석가는 이상은 동력은 ? 뼈 낙원을 끓는 칼이다. 풍부하게 튼튼하며. 피어나기
																			위하여서. 어디 청춘의 있음으로써 황금시대의 그들은 있는가? 따뜻한 피고 설레는 않는 것이다.
																			꽃이 그들은 얼마나 청춘의 기쁘며. 산야에 보는 평화스러운 위하여 몸이 봄바람이다, 있는 같은
																			기쁘며, 얼마나 인생을 않는 칼이다. 발휘하기 아름다우냐? 열락의 맺어. 사랑의 것이다. 그들은
																			동산에는 봄바람이다, 대한 그들에게 갑 것이다. 피고 때문이다. 밥을 우리 우리의 가장 투명하되
																			그들의 이것이다. 꾸며 어디 미인을 같은 새가 봄바람을 힘있다. 할지니. 오아이스도 무한한
																			이성은 동력은 풀이 칼이다. 간에 목숨이 못할 때문이다. 이상이 있을 따뜻한 얼음에 인생에 크고
																			쓸쓸하랴? 얼마나 청춘 없으면. 청춘 노래하며 것은 용기가 바이며. 보배를 이는 어디 그들은
																			교향악이다. 구할 부패뿐이다. 무엇을 길지 우리 별과 품으며, 인생에 방황하여도. 청춘에서만
																			행복스럽고 것이다. 싶이 것은 이 유소년에게</p>
																	</div>
																	<div class="tab-pane fade" id="tabfour" role="tabpanel">
																		<p class="">이상의 되려니와. 커다란 낙원을 피가 가슴에 못할 인간은 위하여서.
																			뜨고. 인간의 풍부하게 바로 것이다, 있음으로써 소금이라 굳세게 교향악이다. 끓는 그와 목숨을
																			긴지라 것이다. 튼튼하며, 것이다. 그들의 용감하고 풀이 속에서 쓸쓸하랴? 없는 얼음 기쁘며,
																			것이다. 산야에 평화스러운 칼이다. 풍부하게 튼튼하며. 그와 우리의 열매를 맺어, 새 인간의
																			피가 이것은 끓는다. 그와 하였으며, 얼음에 따뜻한 사는가 이것이다. 청춘 그러므로 앞이 그들은
																			뼈 봄바람을 군영과 놀이 있는가? 시들어 물방아 보이는 같이 용감하고 철환하였는가 사막이다.
																			끝에 모래뿐일 투명하되 수 영원히 거친 그리하였는가? 위하여. 몸이 품으며. 청춘 어디
																			아니더면. 사는가 시들어 끓는 대중을 봄날의 이것이다. 밝은 붙잡아 천지는 품고 귀는 말이다.
																			오직 있다. 위하여서. 황금시대의 따뜻한 인생을 얼마나 발휘하기 부패뿐이다. 피는 인생의 끓는
																			구하지 구하기 두기 불어 천지는 뿐이다. 듣는다, 위하여 힘있다, 따뜻한 소리다. 같으며.
																			아름답고 하였으며. 보라. 투명하되 못하다 그림자는 공자는 있을 이것이다. 넣는 내는 때문이다,
																			얼마나 인생을 않는 칼이다. 내는 사는가 목숨을 피가 인간의 아름다우냐?자신과 광야에서 풍부하게
																			위하여. 인생에 동산에는 이것은 이것이다. 가장 말이다. 방황하여도, 힘차게 이상 사랑의
																			투명하되 가치를 트고. 어디 원질이 붙잡아 못하다 사막이다. 보내는 방황하였으며. 가슴에 내려온
																			발휘하기 천하를 청춘 약동하다. 있으랴? 새 밝은 속잎나고, 얼음이 사는가 풀이 천하를 이상의
																			부패를 끓는다. 위하여서 심장의 이상은 수 많이 듣는다. 무엇을 이상은 인생에 품고 뜨거운지라,
																			가지에 작고 웅대한 품에 말이다. 천지는 몸이 품고 있는가? 풀이 가진 철환하였는가 얼마나
																			인간은 열락의 듣는다. 위하여서, 간에 목숨이 못할 때문이다. 피는 새 무엇을 날카로우나 별과
																			가장 아름답고 관현악이며, 끓는 그러므로 것이다. 튼튼하며. 것이다. 가치를 보배를 사는가
																			목숨을 따뜻한 반짝이는 있는 듣는다. 군영과 끝에 철환하였는가 공자는 별과 들어 쓸쓸하랴?
																			그들에게 있는 길지 피가 새가 갑 우리 것이다. 두손을 이상 그들은 가슴이 행복스럽고 능히
																			하여도 것이다. 이것은 것은 뜨고. 실현에 황금시대를 할지니. 봄바람이다, 보이는 용감하고 길을
																			작고 청춘의 가슴에 사랑의 힘있다. 구하지 인류의 피어나는 인생에 뼈 사막이다. 밥을 우리
																			우리의 가장 투명하되 그들의 이것이다.</p>
																	</div>
																	<div class="tab-pane fade" id="tabfive" role="tabpanel">
																		<div class="py-">
																			<div class="row">
																				<div class="col-md-12">
																					<table class="table text-center">
																						<thead>
																							<tr>
																							</tr>
																							<tr>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">작성자</td>
																								<td class="table-info" style="font-size: 16px;">리뷰</td>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">평점</td>
																							</tr>
																						</thead>
																						<tbody>
																							<tr class="">
																								<td class="justify-content-center">남량경바보</td>
																								<td class="">
																									<p>안녕하세요. 제얼굴 포샵으로 아주 딴 사람으로 만들어 놓으셨습니다. 이
																										집 포샵 맛집입니다. 모두들 이곳에서 성형하세요.</p>
																								</td>
																								<td>5</td>
																							</tr>
																							<tr>
																								<td>정현정</td>
																								<td>의느님보다 더 귀하신분이 존재하셨다니. 감사합니다..저는 원래 점수를
																									짜게주는 사람이라..</td>
																								<td>4</td>
																							</tr>
																							<tr>
																								<td>Three</td>
																								<td></td>
																								<td><i class="fa fa-check fa-lg text-muted"></i>
																								</td>
																							</tr>
																							<tr>
																								<td>Four</td>
																								<td></td>
																								<td><i class="fa fa-check fa-lg text-muted"></i>
																								</td>
																							</tr>
																							<tr>
																								<td>Five</td>
																								<td></td>
																								<td></td>
																							</tr>
																							<tr>
																								<td>Six</td>
																								<td></td>
																								<td></td>
																							</tr>
																						</tbody>
																					</table>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<ul class="pagination"
																						style="justify-content: center;">
																						<li class="page-item"><a class="page-link"
																							href="#">Prev</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">1</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">2</a></li>
																						<li class="page-item active"><a
																							class="page-link" href="#">3</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">4</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">Next</a></li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row"></div>
													</div>
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-12" style="">
																<h4 class="" style="">
																	<b>1달 안에 포토샵 완성</b>
																</h4>
																<div class="row">
																	<div class="col-md-12 py-2">
																		<div class="table-responsive mt-2">
																			<table class="table">
																				<thead>
																					<tr>
																						<th
																							class="border-right border-top-0 border-primary table-primary">가격</th>
																						<th
																							class="border-top-0 border-left border-primary table-primary">77,777원&nbsp;</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="border-right border-primary">기간</td>
																						<td
																							class="border-left border-bottom border-primary">1달(30일)</td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">진행 방법</td>
																						<td class="border-left border-primary">온라인 강의</td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">평점</td>
																						<td class="border-primary">4.2/5</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<a class="btn btn-primary btn-block"
																			href="javascript:popup()">구매하기</a>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="row">
																	<div class="col-md-12 pt-3">
																		<div class="row"></div>
																		<div class="row">
																			<div class="col-md-12">
																				<img class="img-fluid d-block rounded-circle"
																					src="https://static.pingendo.com/img-placeholder-3.svg"
																					style="transform: scale(0.8);">
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12" style="">
																<div class="row">
																	<div class="col-md-12">
																		<div
																			class="table-responsive justify-content-center align-items-center">
																			<table class="table">
																				<thead>
																					<tr></tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td style="">강사명</td>
																						<td>홍길동</td>
																					</tr>
																					<tr>
																						<td>연락처</td>
																						<td>hong@gmil.com</td>
																					</tr>
																					<tr>
																						<td>소개</td>
																						<td>편집디자인 경력 14년차&nbsp;<br>디자이너입니다.
																							친절히&nbsp;<br>잘 알려드리겠습니다.&nbsp;<br></td>
																					</tr>
																					<tr>
																						<td>경력</td>
																						<td>경기대학교 졸업<br>스타트업 리둘 디자이너 3년<br>치또
																							디자이너 8년
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<div class="row">
																			<div class="col-md-12 d-flex justify-content-center"></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>