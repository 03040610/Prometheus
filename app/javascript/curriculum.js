document.addEventListener("DOMContentLoaded", function() {
  var max_forms = 15; // 最大のフォーム数
  var current_form = 1; // 現在表示中のフォーム
  var literature_select = document.getElementById("literature-choice"); // リテラチュア選択フォームの要素
  
  literature_select.addEventListener("change", function() {
    var selected_value = this.value;
    if (selected_value && current_form < max_forms) { // 選択された値があり、最大フォーム数に達していない場合
      current_form++; // 現在表示中のフォームを増やす
      var new_form = document.createElement("div"); // 新しいフォームの要素を作成
      new_form.innerHTML = '<%= j render "new_form", f: f %>'.replace(/1/g, current_form); // 新しいフォームを作成
      var parent_div = document.getElementById("parent_div"); // フォームを追加する要素
      parent_div.appendChild(new_form); // 親要素に新しいフォームを追加
      var hidden_field = document.createElement("input"); // 隠しフィールドの要素を作成
      hidden_field.setAttribute("type", "hidden");
      hidden_field.setAttribute("name", "selected_value[]");
      hidden_field.setAttribute("value", selected_value);
      new_form.appendChild(hidden_field); // 新しいフォームに隠しフィールドを追加
    }
  });
});