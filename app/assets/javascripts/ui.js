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