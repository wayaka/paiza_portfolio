var aceEditor = ace.edit("source_code");

// Set ACE editor options
aceEditor.$blockScrolling = Infinity;
aceEditor.setOptions({
    enableBasicAutocompletion: true,
    enableSnippets: true,
    enableLiveAutocompletion: true
});
aceEditor.setTheme("ace/theme/monokai");

// run the code when "run_button" is clicked, or Ctrl-Enter is PermissionRequestedEvent.
$("#run_button").on("click", function(event){
    runCode();
});
aceEditor.commands.addCommand({
    bindKey: {win: "Ctrl-Enter", mac: "Ctrl-Enter"},
    exec: function(){
      runCode();
    }
});
// Language settings
function setEditorLanguage(language){
    var languageToMode = {
        ruby: "ruby",
        python: "python",
        c: "c_cpp",
    };
    var mode = languageToMode[language];
    aceEditor.getSession().setMode("ace/mode/" + mode);
}
$("#language").val("ruby");
setEditorLanguage("ruby");
$("#language").on("change", function(event){
    setEditorLanguage(this.value);
});

$('#new_code').click(function() {
    var language = $("#language").val();
    var source_code = aceEditor.getValue();
    $.ajax( {
          type: 'POST',
          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
          url: '/codes',
          data: { 
            'language': language,
            'source': source_code,
         },
        success: function( data ) {

        }
        , error: function( data ) {
            console.log( data );
        }
    } );
    return false; // submitしたらajaxを待つことなく画面遷移するため。
} );

$('#update_code').click(function() {
    var url = location.href;
    var param = url.match(/codes\/\d+/)[0].match(/\d+/)[0];
    var language = $("#language").val();
    var source_code = aceEditor.getValue();
    $.ajax( {
          type: 'POST',
          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
          url: '/codes/update/' + param,
          data: { 
            'language': language,
            'source': source_code,
         },
        success: function( data ) {

        }
        , error: function( data ) {
            console.log( data );
        }
    } );
    return false; // submitしたらajaxを待つことなく画面遷移するため。
} );

// for quiz
$(function() {
    $('#question_btn').click(function() {        
        $('.balloon2-left').toggle();
    });
});

// when update code
if(location.href.indexOf('edit') !== -1){
    document.getElementById('language').value = gon.language;
    aceEditor.setValue(gon.code, -1);
}