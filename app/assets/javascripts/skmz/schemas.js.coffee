jQuery ->
  $("#skmz_search_table_name").on "change blur", () ->
    console.log $(this).val()
