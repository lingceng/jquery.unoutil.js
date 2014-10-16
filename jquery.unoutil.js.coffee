#
# jquery.unoutil.js
#
#

# config
prefix = "data-uno-"

$ ->

  #
  # reversely check the checkbox
  #
  # value
  #   name of target checkboxes to controll
  #
  name = "#{prefix}revcheck"
  $("[#{name}]").on "change", (evt) ->
    btn = $(this)
    target_name = btn.attr(name)

    console.log name, target_name
    # do reverse check
    $("[name='#{target_name}']").each (index, item) ->
      console.log item
      item.checked = not item.checked
      true

    true

  #
  # uncheck or check all checkbox
  #
  # value
  #   name of target checkboxes to controll
  #
  name = "#{prefix}checkall"
  $("[#{name}]").on "change", (evt) ->
    btn = $(this)
    target_name = btn.attr(name)

    status = !!btn.prop('checked')

    # do check or uncheck all
    targets = $("[name='#{target_name}']")
    targets.each (index, item) ->
      item.checked = status
      true

    true

