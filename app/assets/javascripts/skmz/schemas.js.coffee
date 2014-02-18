jQuery ->
  change_tr_display = ->
    table_name =  $("#skmz_search_table_name").val()
    column_type = $("#skmz_search_column_type").val()
    column_name = $("#skmz_search_column_name").val()
    $("tr.skmz_row").show()
    # TODO jQueryのオブジェクトが見つからなかった際のエラーに対応する
    if table_name?.trim()
      $("tr.skmz_row").each ->
        regexp = new RegExp("skmz_table_name .*" + table_name + ".*")
        unless $(this).find("td.skmz_table_name:first").attr("class").match(regexp)
          $(this).hide()
    if column_type?.trim()
      $("tr.skmz_row").each ->
        regexp = new RegExp("skmz_column_type .*" + column_type + ".*")
        unless $(this).find("td.skmz_column_type:first").attr("class").match(regexp)
          $(this).hide()
    if column_name?.trim()
      $("tr.skmz_row").each ->
        regexp = new RegExp("skmz_column_name .*" + column_name + ".*")
        unless $(this).find("td.skmz_column_name:first").attr("class").match(regexp)
          $(this).hide()

  $("#skmz_search_table_name").on "keyup", ->
    change_tr_display()

  $("#skmz_search_column_type").on "change", ->
    change_tr_display()

  $("#skmz_search_column_name").on "keyup", ->
    change_tr_display()

