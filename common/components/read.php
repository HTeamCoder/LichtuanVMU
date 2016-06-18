<?php
namespace common\components;
error_reporting(0);
require_once 'PHPWord-master/src/PhpWord/Autoloader.php';
class read{
    public function toHTML($file)
    {
        \PhpOffice\PhpWord\Autoloader::register();
        $data = new \PhpOffice\PhpWord\Reader\Word2007();
        $content  = $data->load($file);
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($content, 'HTML');
        $objWriter->save('helloWorld.html');
        $content = file_get_contents("helloWorld.html");
        $array_row = explode('<tr>',$content);
        for($i = 2; $i<=count($array_row); $i++){
            $cells = explode('<td>', $array_row[$i]);
            $ngay = strip_tags($cells[1]);
            $thoigian = strip_tags($cells[2]);
            $noidung = $cells[3];
            if (trim(preg_replace('/&nbsp;/','',$ngay))=='' && $a[$i-1]['ngay'] != '')
            $a[$i]['ngay'] = $a[$i-1]['ngay'];
            else
            $a[$i]['ngay'] = $ngay;
            $a[$i]['thoigian'] = trim(preg_replace('/&nbsp;/','',$thoigian));
            $a[$i]['noidung'] = ($noidung);
            $d[] = $cells;
        }
        $b['ghichu'] = strstr($a[count($a)]['noidung'],'Ghi chú');
        foreach ($a as $key => $value) {
            $a[count($a)]['noidung'] = (substr($a[count($a)]['noidung'],0,strpos($a[count($a)]['noidung'],'Ghi chú')))?substr($a[count($a)]['noidung'],0,strpos($a[count($a)]['noidung'],'Ghi chú')):'';
        }
        array_pop($a);
        $a['ghichu'] = $b;
        return $a;
    }
    public function toText($file)
    {
            $striped_content = '';
            $content = '';

            $zip = zip_open($file);

            if (!$zip || is_numeric($zip)) return false;

            while ($zip_entry = zip_read($zip)) {

                if (zip_entry_open($zip, $zip_entry) == FALSE) continue;

                if (zip_entry_name($zip_entry) != "word/document.xml") continue;

                $content .= zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));

                zip_entry_close($zip_entry);
            }// end while

            zip_close($zip);

            $content = str_replace('</w:r></w:p></w:tc><w:tc>', " ", $content);
            $content = str_replace('</w:r></w:p>', "\r\n", $content);
            $striped_content = strip_tags($content);
            $str =   strstr($striped_content,'TUẦN');
            $wy1 = substr($str,0,strpos($str,'TUẦN',1));
            $ws = substr($str,strpos($str,'TUẦN',1),strpos($str,'TRƯỜNG')- strpos($str,'TUẦN',1));
            $lich = substr($str,strpos($str,'Từ'),strpos($str,')',1)- strpos($str,'(',1)-1);
            $ngayTemp = str_replace(['Từ ngày ',' đến ngày '],'dateto',$lich);
            $ngayTemp_arr = explode('dateto',$ngayTemp);
            array_shift($ngayTemp_arr);
            $tuan['tuannam'] = $wy1;
            $tuan['tuannamhoc'] = $ws;
            $tuan['tungay'] = $ngayTemp_arr[0];
            $tuan['denngay'] = $ngayTemp_arr[1];
            return $tuan;
    }
    public function toWord($file)
    {
        \PhpOffice\PhpWord\Autoloader::register();
        \PhpOffice\PhpWord\Settings::loadConfig();
        /*
        \PhpOffice\PhpWord\Settings::setPdfRendererName(\PhpOffice\PhpWord\Settings::PDF_RENDERER_MPDF);
        \PhpOffice\PhpWord\Settings::setPdfRendererPath(__DIR__ . '/mpdf60');
        */
        $filename = 'TS102901489';
        $phpWord = \PhpOffice\PhpWord\IOFactory::load($file);
        $pdfWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'HTML');
        $pdfWriter->save("{$filename}.html");
        //
        $sourceHTML = file_get_contents("{$filename}.html");
        preg_match_all('/<tr>(.*?)<\/tr>/s', $sourceHTML, $array_tr2);

        $array_tr = explode('<tr>',$sourceHTML);
        $thu2 = $array_tr[2];
        $table = explode("<table>",$sourceHTML);
        //$table = explode("</table>",$table);
        $ngaythu2 = str_replace('Thứ Hai','', strip_tags(explode('<td>',$thu2)[1]));
        $arr_ngayThu2 =  explode('/',$ngaythu2);
        $arr_ngayThu2[] = date("Y");
        $arr_ngayThu2[0] = trim($arr_ngayThu2[0]);
        $arr_ngayThu2[1] = trim($arr_ngayThu2[1]);
        $ngayDauTuan = "{$arr_ngayThu2[2]}-{$arr_ngayThu2[1]}-{$arr_ngayThu2[0]}";
        $ngayCuoiTuan = strtotime("+6 days",strtotime($ngayDauTuan));
        $sttTuan = date("W",strtotime($ngayDauTuan));
        $startDate = $ngayDauTuan;
        $endDate = date("Y-m-d",$ngayCuoiTuan);
        $array_tuan = [1 => 'Thứ Hai', 2 => 'Thứ Ba', 3 => 'Thứ Tư', 4 => 'Thứ Năm', 5 => 'Thứ Sáu', 6 => 'Thứ Bảy', 7 => 'Chủ Nhật'];

        $i = 1;
        foreach ($array_tr2[0] as $index => $tr) {
            if($index > 0){
                preg_match_all('/<td>(.*?)<\/td>/s', $tr, $arrayTd);
                $thoigian = trim(strip_tags($arrayTd[0][1]));
                $sukien = $arrayTd[0][2];
                if((trim(strip_tags($arrayTd[0][0])) == '&nbsp;')){ // Nếu ngày đang xét là trống thì tgian và sự kiện hiện tại thuộc về ngày cũ
                    $ngayTrongTuan[$i-1]['gio'][] = $thoigian;
                    $ngayTrongTuan[$i-1]['sukien'][] = $sukien;
                }else{ //Là 1 ngày mới
                    $ngayTrongTuan[$i] = ['thu' => $array_tuan[$i], 'gio' => [0=>$thoigian], 'sukien' => [0=>$sukien]]; //Gán ngày đầu tiên trong tuần
                    $i++;
                }
            }
        }
        return '
        <div class="container" id="main">
                <div class="row" id="header" style="position:static;z-index:9999;">
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <div style="border: 1px solid; border-top-left-radius: 5px; border-top-right-radius: 5px">
                            <strong style="padding-left: 5px">
                                TUẦN <span style="font-size: 24pt">'.$sttTuan.'</span> THEO NĂM  '.date("Y").'
                            </strong>
                        </div>
                        <div style="border: 1px solid; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px">
                            <strong style="padding-left: 5px">
                                TUẦN <span style="font-size: 24pt">42</span> THEO NĂM HỌC 2015-2016
                            </strong>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div id="slogan" style="text-align: center; font-family: Times New Roman;font-weight: bold;">
                            TRƯỜNG ĐẠI HỌC HÀNG HẢI VIỆT NAM<br/>
                            LỊCH CÔNG TÁC
                        </div>
                        <div style="text-align: center; font-style: italic; margin-top: 12px;">
                            (Từ ngày '.date("d/m/Y",strtotime($ngayDauTuan)).' đến ngày '.date('d/m/Y', $ngayCuoiTuan).')
                        </div>

                    </div>
                    <div class="col-md-2">
                        <div style="text-align: center;">
                            <img src="img/iso9001.png" class="img-responsive">
                        </div>
                    </div>
                </div>
                <table style="width: 100%; border-collapse: collapse; font-family: Times New Roman; font-size: 14pt;" border="1" class="table-responsive">
                        <thead>
                            <tr>
                                <th style="width: 10%">Ngày, tháng</th>
                                <th style="width: 10%">Thời gian</th>
                                <th style="width: 80%">Địa điểm - Nội dung</th>
                            </tr>
                        </thead>
                </table>
                <div class="marquee-vert" style="height:100%;" data-gap=0 data-direction="up" data-duplicated="true">
                    <div class="row" id="body">
                        <div class="col-md-12">
                            <table style="width: 100%; border-collapse: collapse; font-family: Times New Roman; font-size: 14pt;" border="1" class="table-responsive">
                                <thead style="border-top:none;">
                                    <tr>
                                        <th style="width: 10%"></th>
                                        <th style="width: 10%"></th>
                                        <th style="width: 80%"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    '.$this->processSukien($ngayTrongTuan,$ngayDauTuan,$array_tuan).'
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            ';
    }
    public function xuLySuKien($sukien){
        $str = str_replace('<td>','',$sukien);
        $str = str_replace('</td>','',$str);
        $str = str_replace('<span style="font-size: 10pt;">.</span>','',$str);
        $str = str_replace(' </span></p>','</span></p>',$str);

        //Tách các sự kiện
        $arr_sukien = explode('font-weight: bold;">',$str);
        $noidung = [];
        foreach ($arr_sukien as $i => $item) {
            $array = explode("</span></p>",$item);
            foreach ($array as $newItem) {
                $newStr = trim(strip_tags($newItem));
                if($newStr == '&nbsp;')
                    $newStr = '';
                $noidung[] = $newStr;
            }
        }
        //Nối các phần tử trong nội dung thành có nghĩa
        $str = "";

        $noidung = array_filter($noidung);
        $noidung = array_values($noidung);
        $array_unset = [];
        foreach ($noidung as $key => $item) {
            if($item == ':'){
                if($key > 0)
                    $noidung[$key-1].=$noidung[$key];
                $array_unset[] = $key;
            }

        }

        foreach ($array_unset as $item) {
            unset($noidung[$item]);
        }
        $noidung = array_values($noidung);

    //    var_dump($noidung);

        foreach ($noidung as $index => $item) {
            //Nếu là phần tử đầu tiên danh sách thì thêm <b>
            if($index == 0)
                $str .="<b>";


            //Nếu ký tự cuối là dấu ':' và ký tự đầu viết hoa và không phải phần tử đầu tiên thì thêm <b> và </b> vào xâu
            $theFirstChar = mb_substr($item,0, 1, 'UTF8');

            if($item[strlen($item)-1] == ':' && mb_strtoupper($theFirstChar, 'UTF8') == $theFirstChar && $index > 0){
                $str.="<br/><b>$item</b> ";
            }

            //Nếu có dấu ':' ở cuối thì thêm '</b> ' vào cuối xâu
            else if($item[strlen($item)-1] == ':')
                $str.="$item</b> ";
            else
                $str.="$item";
    //        $str = str_replace(' .','.',$str);
    //        $str = str_replace(' ,',',',$str);
    //        $str = str_replace('( ','(',$str);
    //        $str = str_replace(' )',')',$str);
    //        $str = str_replace(' ;',';',$str);
        }



        return  $str;
    }
    public function processSukien($ngayTrongTuan,$ngayDauTuan,$array_tuan){
        $a = '';
         foreach ($ngayTrongTuan as $index => $item)
         {
               $a.= '<tr>
                        <td style="font-weight: bold;" rowspan="'.count($item['gio']).'">
                            <p>'.$array_tuan[$index].'</p>
                            <p>'.date("d/m",strtotime("+".($index-1)." days", strtotime($ngayDauTuan))).'</p>
                        </td>
                           '.$this->process($item).'
                    </tr>';
         }
     return $a;   
    }
    public function process($item){
        $b = '';
        foreach ($item['gio'] as $key => $value)
        {
            if($key>0) $b.="<tr>";
            $b.="<td";
            if($key < count($item['gio'])-1) 
            $b.=" class='border-bottom'";
            $b.='>'.$value.'</td>';
            $b.="<td";
            if($key < count($item['gio'])-1)
            $b.=" class='border-bottom'";
            $b.='>';
            $b.=$this->xuLySuKien($item['sukien'][$key]);
            $b.='</td>';
            if($key > 0) $b.="</tr>";
        }
        return $b;
    }
}
?>