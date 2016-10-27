<?php echo $header; ?>
<div class="category-header-img-container"></div>
<div class="container">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div class="category-dropdown-container hidden-md hidden-lg">
      <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Action <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li role="separator" class="divider"></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </div>
    </div>

    
    <div id="content" class="<?php echo $class; ?>">
      
      <?php echo $content_top; ?>
      
      <?php if ($products) { ?>
      <!-- Products -->
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="product-container">
            <div class="product-thumb">
              <div class="image">
                <a class="lazy" style="padding-bottom: <?php echo ($product['img-height']/$product['img-width']*100); ?>%"
                  href="<?php echo $product['href']; ?>">
                  <img alt="<?php echo $product['name']; ?>"
                  title="<?php echo $product['name']; ?>"
                  class="img-responsive"
                  data-src="<?php echo $product['thumb']; ?>"
                  src="<?php echo $product['thumb']; ?>"/>
                </a>
              </div>
              
              <div>
                <div class="caption">
                  <div class="name name-product"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                  <?php if ($product['price']) { ?>
                  <div class="price price-product">
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?>
                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                    <?php if ($product['tax']) { ?>
                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                    <?php } ?>
                  </div>
                  <?php } ?>
                  <!-- <div class="description"><?php echo $product['description']; ?></div> -->
                </div>
              </div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <br><br>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>