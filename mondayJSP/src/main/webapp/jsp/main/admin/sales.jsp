<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container">
	<input type="date">부터
	<input type="date">까지
	<input type="number" placeholder="상품코드를 입력하세요.">
	<select>
		<option>전부</option>
		<option>침대</option>
		<option>쿠션러쉬</option>
		<option>소파</option>
		<option>다이닝</option>
		<option>의류</option>
	</select>
	<input type="text" placeholder="상품명을 입력하세요.">
	<button type="button">검색</button>
</div>
<div class="container"  style="height: 190px; overflow: auto;">
  
  <table class="table table-bordered border-dark text-end">
      <thead>
        <tr>
          <th>날짜</th>
          <th>회원구분</th>
          <th>상품명</th>
          <th>수량</th>
          <th>총 금액</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>침대</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>중간재</td>
          <td>12</td>
          <td>240,000원</td>
        </tr>
        <tr>
          <td>2025-09-21</td>
          <td>키맨트</td>
          <td>8</td>
          <td>160,000원</td>
        </tr>
        <!-- 더 필요한 데이터 추가 -->
      </tbody>
    </table>
  </div>
  <script>
        // 매출 기록 시작 연도
        let minY = 2025;

        // 매출 기록 최대 연도
        let maxY = 2125;
        
  </script>
  <div class="container text-center" style="margin-top: 20px;">
    <div class="row">
      <!-- 좌측: 차트 영역 -->
      <div class="col-md-6">
        <input type="number" id="month" style="width: 120px;">
        <button type="button" id="monthlyBtn">월별판매그래프</button><br>
        <input type="month" id="weekend" style="width:120px;">
        <button type="button" id="weeklyBtn">주간판매그래프</button>
        <canvas id="salesChart" style="width: 100%; height: 400px;"></canvas>
      </div>
      <!-- chart.js -->
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      <script>
        const ctx = document.getElementById('salesChart').getContext('2d');

        // 초기 데이터 (월별)
        const monthlyLabels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월',];
        const monthlyData = [1200, 1900, 3000, 2500, 2200, 2700, 1500, 3900, 1800, 2400, 3400, 1600];

        const weeklyLabels = ['1주', '2주', '3주', '4주'];
        const weeklyData = [500, 700, 600, 800];

        // 차트 초기화
        const salesChart = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: monthlyLabels,
            datasets: [{
              label: '판매',
              data: monthlyData,
            }]
          },
          options: {
            responsive: false,
            plugins: {
              legend: {
                display: false
              },
              title: {
                display: true,
                text: '월별 판매'
              }
            }
          }
        });

        // "월별판매그래프" 버튼 클릭
        document.getElementById('monthlyBtn').addEventListener('click', function() {
          //입력한 연도
          money = document.getElementById('month').value;
          //월별판매그래프에서 입력한 연도 범위 검사
          if( money < minY || money > maxY || money == null || money == "" )
          {
            alert("연도는 " + minY + "년부터 " + maxY + "년까지 입력 가능합니다.");
            return;
          }
          salesChart.data.labels = monthlyLabels;
          salesChart.data.datasets[0].data = monthlyData;
          salesChart.options.plugins.title.text = money + '년 월별 판매';
          salesChart.update();
        });

        // "주간판매그래프" 버튼 클릭 이벤트
        document.getElementById('weeklyBtn').addEventListener('click', function () {
          const selectedMonth = document.getElementById('weekend').value;

          if (!selectedMonth) {
            alert("연도와 월을 입력하세요");
            return;
          }

          const [year, month] = selectedMonth.split('-').map(Number);

          // 달의 첫 날 날짜 계산
          const startDate = new Date(year, month - 1, 1);
          while (startDate.getDay() !== 0) {
            startDate.setDate(startDate.getDate() - 1); // 일요일 날짜로 이동
          }

          const weeklyLabels = [];
          const weeklyData = [];

          const tempDate = new Date(startDate);

          // 다음 달 1일 까지 반복
          while (tempDate.getMonth() <= month - 1 || (tempDate.getMonth() === month && tempDate.getDate() === 1)) 
          {
            const weekStart = new Date(tempDate);
            const weekEnd = new Date(tempDate);
            weekEnd.setDate(weekStart.getDate() + 6);

            // 주간 범위 레이블 생성
            const label = `${weekStart.getMonth() + 1}/${weekStart.getDate()}~${weekEnd.getMonth() + 1}/${weekEnd.getDate()}`;
            weeklyLabels.push(label);

            // 임의 판매 데이터 생성
            weeklyData.push(Math.floor(Math.random() * (1800 - 800 + 1)) + 800);

            tempDate.setDate(tempDate.getDate() + 7);
          }

          salesChart.data.labels = weeklyLabels;
          salesChart.data.datasets[0].data = weeklyData;
          salesChart.options.plugins.title.text = `${year}년 ${month}월 주간 판매`;
          salesChart.update();
        });
      </script>


      <!-- 우측: 파이 차트 영역 -->
	<div class="col-md-6">
	
	  <span style="font-weight: bold;">상품별 판매량</span><br>
	  쿠션커버 상품
	  <select id="category">
	    <option value="bed">침대</option>
	    <option value="sofa">소파</option>
	    <option value="closet">의자</option>
	    <option value="dining">다리의자</option>
	    <option value="mat">쿠션커버</option>
	  </select>
	  <button type="button" id="pieBtn">실행</button>
	  <canvas id="chart-container-pie" style="width: 100%; height: 400px;"></canvas>
	</div>
	</div>
	</div>
	
		<!-- Chart.js 스크립트 -->
		<script>
		   //상품별 판매량 - 파이 차트 영역
		  const chartPie = document.getElementById('chart-container-pie').getContext('2d');
		  const pieChart = new Chart(chartPie, {
		      type: 'pie',
		      data: 
		      {
		        labels: ['사과', '망고', '바나나', '오렌지', '딸기'],
		        datasets: 
		        [
		          {
		            label: '상품별 판매량',
		            borderWidth: 3,
		            data: [504530, 544567, 167850, 467630, 847863]
		          }
		        ]
		      },
		      options:
		      {
		        responsive: false
		      }
		  });
		
		  $("#pieBtn")
		  $("#category").val
		</script>
		<p class='nota-final'>
		  문의사항이 있으시면 <strong>Dteam@gmail.com</strong> 으로 문의해 주세요.
		  <a href='../help/inquire.jsp'>문의 페이지</a>.
		</p>
	</body>
</html>

