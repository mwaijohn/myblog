<div class="create-form">
    <div class="form-container">
    <?php echo validation_errors(); ?>
        <h1>Edit category</h1> 
        <?php echo form_open('/update_category'); ?>
            <input type='hidden' name='id' value="<?php echo $category['id']?>" />
            <label for="name">Category name</label><br><br>
            <input type="text" name="name" id="name" value="<?php echo $category['category_name']?>"><br><br>
          
            <button type="submit" class="btn-submit">submit</button>
        <?php echo form_close(); ?>
    </div>
</div>