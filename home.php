<!-- slider section -->
<section class=" slider_section position-relative">
      <div class="design-box">
        <img src="assets/dist/img/design-1.png" alt="">
      </div>
      
      <div class="container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Valentine's Day
                    </h1>
                    <p>
                    With our selection of heartfelt presents and accessories ideal for a special date or Galentine's Day with the girls, you can wear your heart on your sleeve this Valentine's Day!
                    Exclusive creations of the highest calibre for you and your loved ones.
                    </p>
                    <div>
                      
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="assets/dist/img/sliderrrr.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Jewellery
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet consec tetur adipiscing elit elit at felislacinia
                      aptent taciti sociosqu ad litora torquent per conubia nostra
                    </p>
                    <div>
                      
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="assets/dist/img/ring-img.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail_box">
                    <h2>
                      <span> New Collection</span>
                      <hr>
                    </h2>
                    <h1>
                      Jewellery
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet consec tetur adipiscing elit elit at felislacinia
                      aptent taciti sociosqu ad litora torquent per conubia nostra
                    </p>
                    <div>
                     
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="assets/dist/img/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>
    </div>
    <!-- end slider section -->
  </div>
<?php include('admin/db_connect.php') ?>
<div class="col-lg-12">
  <div class="row">
    <div class="col-md-3">
      <div class="card card-outline card-primary">
        <div class="card-header">
            <h3 class="card-title">Categories</h3>

            <div class="card-tools">
             <!--  <button type="button" class="btn btn-tool" data-card-widget="card-refresh" data-source="widgets.html" data-source-selector="#card-refresh-content">
                <i class="fas fa-sync-alt"></i>
              </button> -->
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
            </div>
            <!-- /.card-tools -->
          </div>
        <div class="card-body">
          <ul class="list-group">
            <?php 
            $category = $conn->query("SELECT * FROM categories order by name asc");
            while($row = $category->fetch_assoc()):
              $cname[$row['id']] =  ucwords($row['name']);
            ?>
              <li class="list-group-item">
                <div class="icheck-primary d-inline">
                  <input type="checkbox" id="chk<?php echo $row['id'] ?>" class="cat-filter" value="<?php echo $row['id'] ?>">
                  <label for="chk<?php echo $row['id'] ?>"><small><?php echo ucwords($row['name']) ?></small></label>
                </div>
              </li>
          <?php endwhile; ?>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-9 border-left">
      <div class="container-fluid">
        <div class="col-md-12">

          <div class="input-group">
              <input type="search" id="filter" class="form-control form-control-lg" placeholder="Type your keywords here">
              <div class="input-group-append">
                  <button type="button" id="search" class="btn btn-lg btn-default">
                      <i class="fa fa-search"></i>
                  </button>
              </div>
          </div>
          <div class="row">
              <?php
                $products = $conn->query("SELECT * FROM products order by rand()");
                while($row = $products->fetch_assoc()):
                  $img = array();
                  if(isset($row['item_code']) && !empty($row['item_code'])):
                              if(is_dir('assets/uploads/products/'.$row['item_code'])):
                                  $_fs = scandir('assets/uploads/products/'.$row['item_code']);
                                foreach($_fs as $k => $v):
                                    if(is_file('assets/uploads/products/'.$row['item_code'].'/'.$v) && !in_array($v,array('.','..'))):
                                      $img[] = 'assets/uploads/products/'.$row['item_code'].'/'.$v;
                            endif;
                          endforeach;
                        endif;
                  endif;
                  $trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
                    unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
                    $desc = strtr(html_entity_decode($row['description']),$trans);
                    $desc=str_replace(array("<li>","</li>"), array("",", "), $desc);
              ?>
              <a class="prod-item text-dark" href="./index.php?page=view_product&c=<?php echo $row['item_code'] ?>" data-cat = '<?php echo $row['category_id'] ?>'>
                <div class="card my-1 mx-1 solid " style="width: 12rem;">
                  <div class="card-img-top item-img d-flex justify-content-center align-items-center">
                    <img class="card-img-top" src="<?php echo isset($img[0]) ? $img[0] : '' ?>" alt="Product Image">
                  </div>
                  <div class="card-body border-top border-info">
                    <h6 class="card-title"><?php echo $row['name'] ?></h6><br>
                    <p class="mb-2 text-muted"><small><?php echo isset($cname[$row['category_id']]) ? $cname[$row['category_id']] : '' ?></small></p>
                    <p class="card-text truncate"><?php echo strip_tags($desc) ?></p>
                  </div>
                </div>
                <span class="d-flex bg-info">
                </span>
              </a>
            <?php endwhile; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<style>
  .item-img{
    height: 13rem;
    overflow:hidden;
  }

</style>
<script>
  $('.prod-item').hover(function(){
    $(this).find('.card').addClass('border border-info')
  })
  $('.prod-item').mouseleave(function(){
    $(this).find('.card').removeClass('border border-info')
  })
  $('.cat-filter').change(function(){
    _search()
  })
  function _search(){
    var _f = $('#filter').val()
        _f = _f.toLowerCase();
    $('.prod-item').each(function(){
        var txt = $(this).text().toLowerCase()
        if(txt.includes(_f) == true){
          if($('.cat-filter:checked').length > 0){
            if($('.cat-filter[value="'+$(this).attr('data-cat')+'"]').prop('checked') == true){
              $(this).toggle(true)
            }else{
              $(this).toggle(false)

            }
          }else{
            $(this).toggle(true)
          }

        }else{
            $(this).toggle(false)

        }
    })
  }
  $('#search').click(function(){
    _search()
  })
  $('#filter').on('keypress',function(e){
    if(e.which ==13){
    _search()
     return false; 
    }
  })
  $('#filter').on('search', function () {
      _search()
  });
</script>