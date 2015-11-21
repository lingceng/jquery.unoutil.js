# https://github.com/lingceng/jquery.unoutil.js

$ ->
  # Uncheck or check all checkbox
  #
  # The value of `data-uno-checkall` is the **name** of the target check boxes.
  #
  #    <!-- Here is the check box to reverse other check boxes status -->
  #    <input type="checkbox" data-uno-checkall="user_ids[]" />
  #
  #    <!-- Here is the targets -->
  #    <input type="checkbox" name="user_ids[]" value="1" />
  #    <input type="checkbox" name="user_ids[]" value="2" />
  #
  $("[data-uno-checkall]").on "change", (evt) ->
    btn = $(this)
    target_name = btn.attr("data-uno-checkall")
    status = !!btn.prop('checked')
    # do check or uncheck all
    targets = $("[name='#{target_name}']")
    targets.each (index, item) ->
      item.checked = status
      true

    true
