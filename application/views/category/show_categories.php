<div class='categories'>
    <h1>Categories</h1>
    <?php foreach($categories as $category) :?>
    <?php echo "<div class='category'>
    <a href='post/category/" . $category['id'] . "'>".$category['category_name']. "</a></div>" ?>
    <?php  endforeach ?>
    
</div>