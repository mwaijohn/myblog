<div class="create-form">
    <div class="form-container">
    <?php echo validation_errors(); ?>
        <h1>Login</h1> 
        <?php echo form_open('/login'); ?>
            <label for="username">username</label><br><br>
            <input type="text" name="username" id="username"><br><br>
          
            <label for="password">password</label><br><br>
            <input type="password" name="password" id="password"><br><br>

            <button type="submit" class="btn-submit">submit</button>
        <?php echo form_close(); ?>
    </div>
</div>