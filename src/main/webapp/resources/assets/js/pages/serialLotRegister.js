$("#registerForm").submit(function (e) {
    // 부모 창으로 데이터 전달 (자식 창과의 통신)
    window.parent.postMessage({ event: 'registerFormSubmitted' }, '*');
});


  var form = $("#register-form");
  form.css("width", "600px");
  form.css("height", "700px");