<br>
<section class="content-section">
    <div class="content-area">
        <div class="posts">
            <?php foreach($posts as $post){; ?>

                <?php echo "<div class='post'><h2>" .$post['title']."</h2>"; ?>
                <?php echo " <small>posted " .$post['created_at'] ." ".$post['category_name']."</small><br><br>"; ?>
                <?php echo "<div class='body'>". word_limiter($post['body'],100)."</div>"; ?><br>
                <a href="<?php echo site_url()?>post/<?php echo $post['slug'] ?>" class='read-more'>read more</a>
                </form>
                <hr>
                </div>
            <?php }?>
        
        </div>
        <div class='aside'>
        <h2>Quick links</h2>
        <ul>
        <?php foreach($posts as $post){; ?>
            <li> <a href="<?php echo site_url()?>post/<?php echo $post['slug'] ?>"><?php echo $post['title'];?></a></li>
        <?php }?>
        </li>
        </div>
    </div>
    <div class="pagination-link">
    <?php echo $this->pagination->create_links(); ?>
    </div>
</section>

