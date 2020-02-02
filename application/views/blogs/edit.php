<div class="create-form">
    <div class="form-container">
    <?php echo validation_errors(); ?>
        <h1>create Post</h1> 
        <?php echo form_open('post/update/'.$post['id'] ); ?>
        <input type='hidden' value=<?php echo $post['id']; ?>  name='id'/>
        <label for="title">Title</label><br><br>
        <input type="text" value="<?php echo $post['title']; ?>" name="title" id="title" placeholder="" ><br><br>
        <label for="body">Body</label><br><br>
        <textarea name="body" id="body" cols="54" rows="20">
             <?php echo $post['body'];?>
        </textarea><br><br>
        <label for="category">Category</label><br><br>
            <select name='category' id='category'>
                <?php foreach($categories as $category) 
                  echo "<option value='". $category['id'] ."'>" . $category['category_name'] ."</option>";
                  ?>
            </select><br><br>
        <button type="submit" class="btn-submit">submit</button>
    <?php echo form_close(); ?>
    </div>
</div>