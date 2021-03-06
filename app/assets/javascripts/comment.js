window.onload = function(){
  function buildHTML(comment){
    var html = `<p>
                    <a href=/users/${comment.user_id}>${comment.user_name}</a>
                    ：
                  ${comment.text}
                </p>`
    return html;
  }

  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comments').append(html);
      $('.form-control').val('');
      $('.btn').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
};