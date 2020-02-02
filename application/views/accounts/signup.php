<div class="create-form">
    <div class="form-container">
    <?php echo validation_errors(); ?>
        <h1>Sign Up</h1> 
        <?php echo form_open('/signup'); ?>
            <label for="name">name</label><br><br>
            <input type="text" name="name" id="name" placeholder="Your both names"><br><br>
          
            <label for="name">zip code</label><br><br>
            <input type="text" name="zip" id="zip" ><br><br>
          
            <label for="email">email</label><br><br>
            <input type="email" name="email" id="email" ><br><br>
          
            <label for="username">username</label><br><br>
            <input type="text" name="username" id="username"><br><br>
          
            <label for="pass1">password</label><br><br>
            <input type="password" name="pass1" id="pass1"><br><br>

            <label for="pass2">password</label><br><br>
            <input type="password" name="pass2" id="pass2"><br><br>
          
            <button type="submit" class="btn-submit">submit</button>
        <?php echo form_close(); ?>
    </div>
</div>