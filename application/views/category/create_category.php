<div class="create-form">
    <div class="form-container">
    <?php echo validation_errors(); ?>
        <h1>Create catgory</h1> 
        <?php echo form_open('/create_category'); ?>
            <label for="name">Category name</label><br><br>
            <input type="text" name="name" id="name"><br><br>
          
            <button type="submit" class="btn-submit">submit</button>
        <?php echo form_close(); ?>
    </div>
</div>