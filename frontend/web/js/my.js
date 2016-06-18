$(document).ready(function(){
    $('.event').hide();
    setInterval(function(){
         $.get('index.php?r=site/thongbao',function(data){
            var obj = JSON.parse(data);
            if(data!= 'null')
            {
                $('.ti_content').empty();
                $.each(obj, function(key,val){
                    $('.ti_content').append('<div class="ti_news"><li><a href="#">'+val.noidung+'</a></li></div>');
                });
                
            }
        });
        $.get('index.php?r=site/sinhnhat',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#sinhnhat').addClass('item');
                    $('.ten').empty();
                    $.each(obj, function(key,val){
                        $('.ten').append('<p>'+val.ten+'('+val.tuoi+' tuổi)-'+val.donvi+'</p>');
                    });
                }else{
                    $('#sinhnhat').removeClass('item');
                    $('#sinhnhat').addClass('hide');
                    if ($('#sinhnhat').attr('class') === 'item active')
                    {
                        $('#sinhnhat').removeClass('active');
                        $('#lichcongtac').addClass('active');
                    }
                }
            });
        $.get('index.php?r=site/video',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#video').addClass('item'); 
                    $('#video').attr('data-interval',parseInt(obj.thoigianhienthi)+5000);
                    if ($('#showvideo').attr('src') != obj.duongdan+'?autoplay=1'&& $('#video').attr('class') === 'item active')
                    {
                        $('#showvideo').attr('src',obj.duongdan+'?autoplay=1');
                    }
                    if ($('#video').attr('class') === 'item')
                    {
                        $('#showvideo').attr('src',''); 
                    }
                }else{
                    $('#video').removeClass('item');
                    $('#video').addClass('hide');
                    if ($('#video').attr('class') === 'item active')
                    {
                        $('#video').removeClass('active');
                        $('#lichcongtac').addClass('active');
                    }
                }
            });
            $.get('index.php?r=site/slide',function(data){
                    var obj = JSON.parse(data);
                    if(data!= 'null')
                    {
                        $('#slide').addClass('item'); 
                        $('#slide').attr('data-interval',parseInt(obj.thoigianhienthi));
                        $('#test').attr('data-cycle-desc',obj.tieude);
                    }else{
                        $('#slide').removeClass('item');
                        $('#slide').addClass('hide');
                        if ($('#slide').attr('class') === 'item active')
                        {
                            $('#slide').removeClass('active');
                            $('#lichcongtac').addClass('active');
                        }
                    }
                });
            $.get('index.php?r=site/sukien',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    //cập nhật giờ sự kiện
                    $('.carousel-inner .item').css("height","530px");
                    if ($('#soon-amor').attr('data-due') != obj.thoigiandienra)
                    { 
                        $('#soon-amor').attr('data-due',obj.thoigiandienra); 
                        var soons = document.querySelectorAll('.soon');
                        for(var i=0;i<soons.length;i++) {
                        Soon.create(soons[i]);
                        Soon.destroy(soons[i]);
                        Soon.create(soons[i]);
                        }
                    }
                    $('#soon-amor').attr('data-due',obj.thoigiandienra); 
                    // cập nhật sự kiện
                    if ($('#thongbao').text() != obj.tieude && $('#thongbao').text() != 'demo')
                    {
                        var soons = document.querySelectorAll('.soon');
                        for(var i=0;i<soons.length;i++) {
                            Soon.create(soons[i]);
                          Soon.destroy(soons[i]);
                          Soon.create(soons[i]);
                        }
                    }
                    $('#soon-amor').attr('ma',obj.id);
                    $('.event').slideDown(2000);
                    $('#thongbao').text(obj.tieude);
                }
                else
                {
                    $('.event').slideUp(2000);
                    $('.carousel-inner .item').css("height","600px");
                }
            });
           
    },5000);
   });
