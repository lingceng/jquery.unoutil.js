jquery.unoutil.js
=================

unobtrusive javascript util library based on jquery

https://github.com/lingceng

### plugins

**revcheck**

Add `data-uno-revcheck` attribute to a check box or button, then the check box or button will reverse the check status of target check boxes.

The value of `data-uno-revcheck` is the **name** of the target check boxes. 

    <!-- Here is the check box to reverse other check boxes status -->
    <input type="checkbox" data-uno-revcheck="user_ids[]" />

    <!-- Here is the targets -->
    <input type="checkbox" name="user_ids[]" value="1" />
    <input type="checkbox" name="user_ids[]" value="2" />

