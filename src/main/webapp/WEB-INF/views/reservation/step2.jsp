<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="steps" style="background-color:red; width:1000px; height:720px;">
		<div class="step step2" style="display: block; background-color:silver; width:1000px; height:720px;">
			<div class="section section-seat three_line dimmed" style="background-color:red;">
				<div class="col-head" style="background-color:black; width:1000px; height:30px;">
					<a href="#" id="reservarionDiscountInfo" style="float:left;
					 left: 15px; color: rgb(255, 255, 255); font-weight: bold;">��&nbsp;���� ���� �ȳ�</a>
					 
					<span class="sreader"  style="background-color:green; padding-left: 300px;"> �ο� / �¼�	</span>
					
					<a class="btn-refresh" href="#" onclick="ftResetAllSeats(true);return false;">
						<span style="float:right; background-color:orange;">�ٽ��ϱ�</span>
					</a>
				</div>
				
				<div class="col-body" style="background-color:black; width:1000px; height:700px; top:30px;">
					<div class="person_screen" style="background-color:silver; width:1000px; height:100px; top:30px;">
						<div class="section section-numberofpeople" style="background-color:purple; width:300px; height:100px; top:30px; float:left">
							<div class="numberofpeople-select" style="background-color:silver; position:absolute; width:270px; height:90px; margin:4px;">
								<div class="group adult" style="float:top; width:270px; height:10px;">
									<span class="title" style="float:left; ">�Ϲ�</span>
									<ul style="list-style:none;">
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">0</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">1</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">2</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">3</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">4</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">5</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">6</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">7</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">8</a>
										</li>
									</ul>
								</div>
							
								<div class="group adult" style="width:270px; height:10px; top:30px; margin:none;">
									<span class="title" style="float:left; ">û�ҳ�</span>
									<ul style="list-style:none;">
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">0</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">1</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">2</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">3</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">4</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">5</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">6</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">7</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">8</a>
										</li>
									</ul>
								</div>
								
								<div class="group adult" style="width:270px; height:10px; top:60px;">
									<span class="title" style="float:left; ">���</span>
									<ul style="list-style:none;">
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">0</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">1</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">2</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">3</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">4</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">5</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">6</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">7</a>
										</li>
										<li style="border-color: #000; background-color: #333; width:20px; height:20px; float:left; margin:2px;">
											<a href="#" style="color:white;">8</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="adjacent_seat_wrap" style="background-color:pink; position:absolute; left:300px; display:block; width:300px; height:100px;">
							<span class="title" style="">�¼� ���� ����</span>
							
							<div class="block_wrap">
								<span><label>
									<input type=radio name=1 style="vertical-align:middle;">
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
								</label></span>
								
								<span><label>
									<input type=radio name=1 >
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
								</label></span>
								
								<span><label>
									<input type=radio name=1>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>								
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>								
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>								
									</label></span>

								<span><label>
									<input type=radio name=1>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
									<span class="box" style="width:10px; height:10px; border:1px solid #999; background-color:silver; display: inline-block;"></span>
																	</label></span>
							</div>
						</div>
						
						<div style="float:right; position:relative; height:100px; width:400px; background-color:brown;">
							<div>
								�����Ͻ� �󿵰�
								<span>/</span>
								�ð�
							</div>
							
							<div>
								<span>4�� 8��</span>
								<span>(�� 124��)</span>
								<span>15:24 - 17:41</span>
								<span>(�ܿ� 99��)</span>
							</div>
							
							<a href="#" onmousedown="" onclick=""><span>�󿵽ð� �����ϱ�</span></a> 
						</div>
					</div>
					
					<div class="theater_minimap" style="width:1000px; height:590px; background-color:grey;">
						<div class="theater nano has-scrollbar" style="width:800px; height:560px; ">
					
						</div>
						
						<div style="width:200px; height:500px; position:absolute;">
						
							<div></div>
						</div>
					</div>	
								
			</div>		
		</div>
	</div>
	</div>
	
	<div style="width:100%; height:100px; background-color:black;">
	
	</div>
</body>
</html>