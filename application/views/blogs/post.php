<?php echo "<div class='single-post'><h2>" .$post['title']."</h2>"; ?>
<?php echo " <small>posted " .$post['created_at']."</small><br><br>"; ?>
<?php echo "<div class='body'>" .$post['body']."</div>"; ?>


<?php if(isset($_SESSION['logged_in']) && $_SESSION['is_admin'] == TRUE){ ?>
<table>
    <tr>
        <td>
        <?php echo form_open('post/edit/' .$post['slug']) ?>
        <button type='submit' class='edit-btn'>edit</button>
        </form>
        </td>
        <td>
        <?php echo form_open('post/delete/' .$post['id']) ?>
        <button type='submit' class='delete-btn'>delete</button>
        </form>
        </td>
    </tr>
</table>
<?php }?>
<hr>
<h5>Comments</h5>
<?php if($comments) :?>
<?php foreach($comments as $comment) : ?>
    <div class='comment'><small><?php echo $comment['comment'];?> by <strong><?php echo $comment['name'];?> </strong></small></div>
<?php endforeach ; ?>
<?php else :?>
    <small>No comments!!!!!</small>
<?php endif ?>

<?php if(!isset($_SESSION['logged_in'])): ?>
    <hr>
    <small><a href="<?php echo site_url() ?>login">Login to comment</a></small>
   
<?php else: ?>

<div class="create-form">
    <div class="comment-form">
    <hr>
    <h1>Add Comments</h1>
    <?php echo validation_errors(); ?> 
        <?php echo form_open('comment'); ?>
            <label for="name">name</label><br><br>
            <input type="text" name="name" id="name" placeholder="" required><br><br>
            <input type='hidden' name='post-id' value="<?php echo $post['id']; ?>" required/>
            <input type='hidden' name='slug' value="<?php echo $post['slug']; ?>"/>
            <label for="body">email</label><br><br>
            <input type="text" name="email" id="email" placeholder="" required><br><br>
            <label for="comment">Category</label><br><br>
            <textarea name="comment" id="comment" cols="54" rows="5" required></textarea><br><br>
            <button type="submit" class="btn-submit">comment</button>
        <?php echo form_close(); ?>
    </div>
</div>

<?php endif;?>
</div>