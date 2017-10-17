
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    -webkit-animation-name: fadeIn; /* Fade in the background */
    -webkit-animation-duration: 0.4s;
    animation-name: fadeIn;
    animation-duration: 0.4s
}

/* Modal Content */
.modal-content {
    position: fixed;
    bottom: 0;
    background-color: #fefefe;
    width: 100%;
    -webkit-animation-name: slideIn;
    -webkit-animation-duration: 0.4s;
    animation-name: slideIn;
    animation-duration: 0.4s
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

/* Add Animation */
@-webkit-keyframes slideIn {
    from {bottom: -300px; opacity: 0} 
    to {bottom: 0; opacity: 1}
}


@keyframes slideIn {
    from {bottom: -300px; opacity: 0}
    to {bottom: 0; opacity: 1}
}

@-webkit-keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}

@keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}
</style>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>






</head>
<body>

내용

<TABLE class="table table-hover"  >


    <TR>
      <TH>번호</TH>
      <TH>사진</TH>
      <TH>이름</TH>
      <TH>제목</TH>
      <TH>수정</TH>
      <TH>삭제</TH>
	 </TR>
     
     <tr>
	<td>1</td>
    <td>이미지</td>
    <td>네임</td>
    <td>제목을입력해라</td>
    <td>수정 </td>
    <td>삭제</td>
    
    
    
  </table>
  
  
<!-- Trigger/Open The Modal -->
<button id="myBtn">후기 작성하기 </button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>한줄 평으로 부탁드립니다.</h2>
    </div>
    <div class="modal-body">
      <table> 
		<tr>
			<td align="center" width="20" >
				<input type="text" id="cmtId" placeholder="야이디">
				<input type="password" id="cmtPassword" placeholder="비밀번호">
			</td>
			
			<td align="center" width="100">
				<textarea rows="3" cols="50" id="cmtContent" placeholder="내용"></textarea>
			</td>
			<td>
			<button type="button" class="btn btn-primary btn-lg" id="cmtRegBtn">등록</button>
			</td>
		</tr>
	</table>
    </div>
    <div class="modal-footer">
      <h4>* 악의적인 욕설 및 상품문의는 통보없이 삭제될 수 있습니다.^^</h4>
    </div>
  </div>

</div>



</body>
</html>
