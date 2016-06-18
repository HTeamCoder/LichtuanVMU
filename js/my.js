$(document).ready(function(){
    setInterval(function(){
         $.get('index.php?r=site/thongbao',function(data){
            var obj = JSON.parse(data);
            if(data!= 'null')
            {
                $('.ti_content').empty();
                $.each(obj, function(key,val){
                    $('.ti_content').append('<div class="ti_news"><li><a href="#" title="'+val.noidung+'">'+val.noidung+'</a></li></div>');
                }); 
                
            }
        });
         $.get('index.php?r=site/lichtuan',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#lichtuancongtac').addClass('item');

                    if ($('#lichtuancongtac').attr('class') == 'item' && obj.sukien != $('#lichtuancongtac').html())
                    {   
                        $('#lichtuancongtac').empty();
                        $('#lichtuancongtac').append(obj.sukien);
                        $('#lichtuancongtac').attr('data-interval',obj.thoigianhienthi);
                        $('#lichtuancongtac').attr('status',1);
                    }
                    
                }else{
                    $('#lichtuancongtac').removeClass('item');
                }
            });
         $.get('index.php?r=site/tintuc',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#tintuc').addClass('item');

                    if ($('#tintuc').attr('class') == 'item')
                    {
                        $('#tintuc').attr('data-interval',parseInt(obj.thoigianhienthi));
                        $('#noidung').addClass('marquee-vert');
                        $('#tieude').empty();
                        $('#noidung').empty();
                        $('#tieude').text(obj.tieude);
                        $('#noidung').html(obj.noidung);
                        $('#tintuc').attr('status',1);
                    }
                    
                }else{
                    $('#tintuc').removeClass('item');
                }
            });
        $.get('index.php?r=site/sinhnhat',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#sinhnhat').addClass('item');
                    $('.thongtinsinhnhat').removeClass('hide');
                    if ($('#sinhnhat').attr('class') == 'item')
                    {
                        $('#sinhnhat').attr('data-interval',parseInt(obj.thoigianhienthi));
                        $('.ten').empty();
                        $.each(obj, function(key,val){
                            if (val.ten != null)
                            $('.ten').append('<p>'+val.ten+'('+val.tuoi+' tuổi)-'+val.donvi+'</p>');
                        });
                    }
                }else{
                    $('#sinhnhat').removeClass('item');
                    $('.thongtinsinhnhat').addClass('hide');
                }
            });
            $.get('index.php?r=site/slide',function(data){
                    var obj = JSON.parse(data);
                    if(data!= 'null')
                    {
                        $('#slide').addClass('item'); 
                        if ($('#slide').attr('class') == 'item')
                        {
                            $('.cycle-slideshow').cycle('destroy');
                            $('.cycle-slideshow').empty();
                            $('.cycle-overlay').empty();
                            $('.cycle-slideshow').html('<div class="cycle-overlay" style="display: block;"><div>Redwoods</div><div>Muir Woods National Monument</div></div>');
                             $.each(obj, function(key,val){
                                $('.cycle-overlay').text(val.tieude);
                                $('#slide').attr('data-interval',parseInt(val.thoigian));
                                //$('.cycle-slideshow').attr('data-cycle-timeout',parseInt(val.thoigianmoianh));
                                $('#test').attr('data-cycle-desc',val.tieude);
                                $('.cycle-slideshow').append('<img src="'+val.hinhanh+'" data-cycle-title="" data-cycle-desc="'+val.tieude+'" class="cycle-slide cycle-slide-active">');
                                
                            });
                            $('.cycle-slideshow').cycle();
                        }
                    }else{
                        $('#slide').removeClass('item');
                    }
                });
            $.get('index.php?r=site/sukien',function(data){
                var obj = JSON.parse(data);
                if(data!= 'null')
                {
                    $('#sukien').addClass('item');
                    $('.event').removeClass('hide');
                    if ($('#sukien').attr('class') == 'item'){
                            var clock;
                            var futureDate  = new Date(obj.thoigiandienra);
                            var currentDate = new Date();

                            // Calculate the difference in seconds between the future and current date
                            var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

                            // Calculate day difference and apply class to .clock for extra digit styling.
                            function dayDiff(first, second) {
                              return (second-first)/(1000*60*60*24);
                            }

                            if (dayDiff(currentDate, futureDate) < 100) {
                              $('.clock').addClass('twoDayDigits');
                            } else {
                              $('.clock').addClass('threeDayDigits');
                            }

                            if(diff < 0) {
                              diff = 0;
                            }

                            // Instantiate a coutdown FlipClock
                            clock = $('.clock').FlipClock(diff, {
                              clockFace: 'DailyCounter',
                              countdown: true
                            });
                            $('#sukien').attr('data-interval',obj.thoigianhienthi);
                            $('.event').attr('ma',obj.id);
                            $('.event').attr('data-time',obj.thoigiandienra);
                            $('#thongbao').text(obj.tieude);
                    } 
                }
                else
                {
                    $('#sukien').removeClass('item');
                    $('.event').addClass('hide');
                }
            });
           
    },10000);
    setInterval(function(){
         if ($('#lichtuancongtac').attr('status') == 1 && $('#lichtuancongtac').attr('class') == 'item active')
            {
                    $('.marquee-vert').marquee({
                    direction: 'up',
                    speed: 20000,
                    startVisible:true,
                  });
                $('#lichtuancongtac').attr('status',0);
            }
         if ($('#tintuc').attr('status') == 1 && $('#tintuc').attr('class') == 'item active')
            {
                if($('#noidung').height() < 600)
                {
                    $('#noidung').removeClass('marquee-vert');
                }else{
                    $('.marquee-vert').marquee({
                    direction: 'up',
                    speed: 20000,
                    startVisible:true,
                  });
                }
                $('#tintuc').attr('status',0);
            }
    });
    if($('#noidung').height() < 600)
    {
        $('#noidung').removeClass('marquee-vert');
    }else
    {
        $('#noidung').addClass('marquee-vert');
    }
});

