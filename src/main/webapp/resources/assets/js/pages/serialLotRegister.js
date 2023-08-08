$("#registerForm").submit(function (e) {
    // 부모 창으로 데이터 전달 (자식 창과의 통신)
    $(this).unbind('submit').submit(); // 기존의 submit 이벤트 제거 후 폼 제출

    // 폼 데이터를 서버로 전송 (폼 제출)
    handleFormSubmit();
});

function handleFormSubmit() {
    // 폼 제출 후 이벤트를 부모 페이지에 전달
    window.parent.postMessage({ event: 'registerFormSubmitted' }, '*');
}


  var form = $("#register-form");
  form.css("width", "600px");
  form.css("height", "700px");