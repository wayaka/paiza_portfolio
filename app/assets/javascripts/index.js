var preNum = $('pre').length;
for (var i = 0; i < preNum; i++) {
  ace.edit("editor_" + (i));
  ace.edit("editor_" + (i)).setReadOnly(true);
}